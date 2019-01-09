// Author : Clément Bossut
/*
debugPrint(this.included_scenarios)
if (!this.included_scenarios) {
  debugPrint("Including scenarios")
  debugPrint()
  include('scenarios')
}
var included_MaxInterface = true
*/
autowatch = 1

if (!Object.assign) {
  Object.assign = function(obj, props) {
    for (var prop in props) {
      if (props.hasOwnProperty(prop)) {
        obj[prop] = props[prop]
      }
    }
  }
}

if (this.post) { // If in Max/MSP
  include("tools")
  include("agent")
  include("scenarios")

  outlets = 3
  setoutletassist(2,"agents2")
  setoutletassist(1,"agents")
  setoutletassist(0,"bang when finished")
}

post("Chargé")
post()

var ready = false
  , speedCent = 100

function unblock() {
  post("raidie")
  post()
  ready = true
}

function anything() {
  if (ready) MaxInterface[messagename].apply(this, arguments)
}

function direct() {
  if (!ready) return;
  if (arguments.length == 0) {
    error("Direct args ?\n")
    return;
  }
  var obj = this
    , i = 0
  for (i = 0 ; i < arguments.length - 2 ; i++) {
    if (typeof obj[arguments[i]] == "function") {
      obj[arguments[i]].apply(obj, Array.apply(null, arguments).slice(i+1, arguments.length))
      debugPrint("Direct call: " + arguments[i])
      debugPrint(", " + (arguments.length - i - 1) + " args ")
      debugPrint("starting with: " + arguments[i+1])
      debugPrint()
      return;
    }
    if (typeof obj[arguments[i]] != "object") {
      error("Direct Wrong argument: " + arguments[i] + ' in ' + Array(arguments).join(' ') + '\n')
      return;
    }
    if (typeof obj[arguments[i]] != "undefined" && !obj.hasOwnProperty(arguments[i])) {
      debugPrint("Copy of " + arguments[i] + '\n')
      if (Array.isArray(obj[arguments[i]])) obj[arguments[i]] = obj[arguments[i]].slice()
      else obj[arguments[i]] = Object.create(obj[arguments[i]])
    }
    obj = obj[arguments[i]]
  }
  if (typeof obj[arguments[i]] == "function") {
    obj[arguments[i]].call(obj, arguments[i+1])
    debugPrint("Direct call: " + arguments[i] + "(" + arguments[i+1] + ")")
    debugPrint()
  } else if (typeof obj[arguments[i]] != "object") {
    if (typeof obj[arguments[i]] == "undefined") error("Beware undefined !\n")
    obj[arguments[i]] = arguments[i+1]
    debugPrint("Direct change: " + arguments[i] + "=" + arguments[i+1])
    debugPrint()
  } else {
    obj = obj[arguments[i]]
    i++
    if (typeof obj[arguments[i]] == "function") {
      obj[arguments[i]].apply(obj)
      debugPrint("Direct call: " + arguments[i] + " without args")
      debugPrint()
    } else {
      error("Direct Can't affect over object: " + arguments[i-1] +
            " or not a function: " + arguments[i] + '\n')
    }
  }
}

function speed(s) {
  speedCent = s
}

function bang() {
  update(speedCent)
  var lights = map()
    , lights2 = map(2)
  for (var j = 0; j < space.lamps[1]; j++) {
    for (var i = 0; i < space.lamps[0]; i++) {
      outlet(1, lights[i][j])
      outlet(2, lights2[i][j])
    }
  }
  outlet(0, "bang");
}

function lamps(lx, ly) { // Should go in MaxInterface (see comment for anything())
  space.lamps[0] = lx
  space.lamps[1] = ly
}

function panic() { // Should go in MaxInterface (see comment for anything())
  agents  = []
  for (var i = 0 ; i < scenari.length ; i++) {
    scenari.agents = []
  }
  scenari = []
}

var MaxInterface = {

  myDebug:function() {
    debugPrint("lamps", space.lamps[0], space.lamps[1])
    debugPrint()
    debugPrint(agents.length, " agents in ", scenari.length, " scenari")
    debugPrint()
  },

//todo function to modify a parameter change("parameter",value)

  change:function(parameter, value)
  {
  },

//////////////////// Balais

  balaiGD:function(b,c) {balayage.squareLaunch(2,b,c)},

  balaiDG:function(b,c) {balayage.squareLaunch(6,b,c)},

  balaiBH:function(b,c) {balayage.squareLaunch(0,b,c)},

  balaiHB:function(b,c) {balayage.squareLaunch(4,b,c)},

  balaiDiag:function(a,b,c) {balayage.squareLaunch(a*2+1,b,c)},

  balaiCP:function() {balayage.centriLaunch(0)},

  balaiCF:function() {balayage.centriLaunch(1)},

  balaiE:1,
  balaiV:5,

  balaiVitesse:function(v) {
    balayage.balayeur.maxV = this.balaiV = v
    balayage.balayeur.growDose = balayage.balayeur.consumeDose = this.balaiE * this.balaiV / 100
  },

  balaiSize:function(s) {
    balayage.balayeur.s = s
  },

  balaiSub:function(e) {
    balayage.balayeur.maxGrow = this.balaiE = e
    balayage.balayeur.growDose = balayage.balayeur.consumeDose = this.balaiE * this.balaiV / 100
  },

//////////////////// Tourneur

  tourneurAdd:function(a) {tourneur.add(a)},

  tourneurChange:function() {tourneur.changeSel()},

  tourneurPrep:function() {
    tourneur.protoAgent.maxV = tourneur.getSel().maxV
    tourneur.protoAgent.s = tourneur.getSel().s
    tourneur.sel = -1
  },

  tourneurRm:function() {tourneur.removeSel()},

  tourneurReverseSel:function() {
    tourneur.getSel().trajectReverse()
  },

  tourneurTeleport:function(a) {tourneur.tpSel(a)},

  tourneurSub:function(e) { //TODO sub per agent and sub per scenario, how to mix the two ?
    tourneur.derviche.e = e
  },

  tourneurVitesseSel:function(v) {
    tourneur.getSel().maxV = v
  },

  tourneurSizeSel:function(s) {
    tourneur.getSel().s = s
  },

  tourneurStopSolo:function(x,y) {
    var ag = tourneur.getSel()
    ag.trajectory.push([(x-1)*space.dist, (y-1)*space.dist])
    ag.trajectMode = 3
  },

//////////////////// Sorbet

  incFrames:0,
  decFrames:0,

  sorbet:function(toggle) {
    if (toggle) sorbetiere.play()
    else sorbetiere.stop()
  },

  sorbetSize:function(s) {
    sorbetiere.sorbet.s = s
  },

  sorbetMaxEnergy:function(m) {
    if (m <= 0) return
    with (sorbetiere) {
      sorbet.maxGrow    = m
      sorbet.growDose   = m / this.incFrames
      sorbet.consumDose = m / this.decFrames
    }
  },

  sorbetIncFrames:function(ti) {
    if (ti < 1) ti = 1
    this.incFrames = ti
    with (sorbetiere.sorbet)
      growDose = maxGrow / ti
  },

  sorbetDecFrames:function(td) {
    if (td < 1) td = 1
    this.decFrames = td
    with (sorbetiere.sorbet)
      consumeDose = maxGrow / td
  },

  sorbetLapsFrames:function(l) {
    sorbetiere.frameLaps = l
  },

  sorbetSpace:function(x,y) {
    sorbetiere.space.lamps = [x,y]
  },

  sorbetTranslate:function(x,y) {
    sorbetiere.sorbet.translate = [x,y]
  },

/////////////////// Errant

  errantAdd:function() {
    errants.add()
  },

  errantChange:function() {
    errants.changeSel()
  },

  errantPrep:function() {errants.sel = -1},

  errantDel:function() {
    errants.removeSel()
  },

  errantLapsFrames:function(l) {
    errants.getSel().wanderLaps = l
  },

  errantDistance:function(d) {
    errants.getSel().wanderDistance = d
  },

  errantRadius:function(r) {
    errants.getSel().wanderRadius = r
  },

  errantDiff:function(d) {
    errants.getSel().wanderDiff = d*Math.PI/180
  },

  errantMass:function(m) {
    errants.getSel().mass = m
  },

  errantVelocity:function(maxV) {
    errants.getSel().maxV = maxV
  },

  errantForce:function(maxF) {
    errants.getSel().maxF = maxF
  },

  errantEnergy:function(e) {
    errants.getSel().e = e
  },

  errantSize:function(s) {
    errants.getSel().s = s
  },

  errantMode:function(m) { // 0:inside, 1:fold, 2:wrap, 3:clip
    var ag = errants.getSel()
    if (m == 0) {
      ag.forces = ["inside"]
      ag.lates = []
    } else {
      ag.forces = ["wander"]
      switch(m) {
        case 1:
          ag.lates = ["fold"]
          break;
        case 2:
          ag.lates = ["wrap"]
          break;
        case 3:
          ag.lates = ["clip"]
          break;
      }
    }
  },

  errantSquare:function(x, y, dx, dy) { // x y in lamps from 1, apply to all errants
    errants.errant.insideSquare = [
      (x - 1) * space.dist,
      (y - 1) * space.dist,
      (x + dx - 1) * space.dist,
      (y + dy - 1) * space.dist
    ]
  }

}
