// Author : Clément Bossut
/*
post(this.included_scenarios)
if (!this.included_scenarios) {
  post("Including scenarios")
  post()
  include('scenarios')
}
var included_MaxInterface = true
*/
autowatch = 1

post("Chargé")
post()

if (!Object.assign) {
  Object.assign = function(obj, props) { 
    for (var prop in props) { 
      if (props.hasOwnProperty(prop)) { 
        obj[prop] = props[prop] 
      }
    }
  }
}

if (this.post) {
  include("tools")
  include("agent")
  include("scenarios")

  outlets = 2
  setoutletassist(1,"agents")
  setoutletassist(0,"bang when finished")
}

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
    post("Direct args ?")
    post()
    return;
  }
  var obj = this
    , i = 0
  for (i = 0 ; i < arguments.length - 2 ; i++) {
    if (typeof obj[arguments[i]] == "function") {
      obj[arguments[i]].apply(obj, Array.apply(null, arguments).slice(i+1, arguments.length))
      post("Direct call: " + arguments[i])
      post(", " + (arguments.length - i - 1) + " args ")
      post("starting with: " + arguments[i+1])
      post()
      return;
    }
    if (typeof obj[arguments[i]] != "object") {
      post("Direct Wrong argument: " + arguments[i])
      post()
      return;
    }
    if (typeof obj[arguments[i]] != "undefined" && !obj.hasOwnProperty(arguments[i])) {
      if (Array.isArray(obj[arguments[i]])) obj[arguments[i]] = obj[arguments[i]].slice()
      else obj[arguments[i]] = Object.create(obj[arguments[i]])
    }
    obj = obj[arguments[i]]
  }
  if (typeof obj[arguments[i]] == "function") {
    obj[arguments[i]].call(obj, arguments[i+1])
    post("Direct call: " + arguments[i] + "(" + arguments[i+1] + ")")
    post()
  } else if (typeof obj[arguments[i]] != "object") {
    if (typeof obj[arguments[i]] == "undefined") post("Beware undefined ! ")
    obj[arguments[i]] = arguments[i+1]
    post("Direct change: " + arguments[i] + "=" + arguments[i+1])
    post()
  } else {
    obj = obj[arguments[i]]
    i++
    if (typeof obj[arguments[i]] == "function") {
      obj[arguments[i]].apply(obj)
      post("Direct call: " + arguments[i] + " without args")
      post()
    } else {
      post("Direct Can't affect over object: " + arguments[i-1])
      post(" or not a function: " + arguments[i])
      post()
    }
  }
}

function speed(s) {
  speedCent = s
}

function bang() {
  update(speedCent)
  var lights = map()
  for (var j = 0; j < space.lamps[1]; j++) {
    for (var i = 0; i < space.lamps[0]; i++) {
      outlet(1, lights[i][j])
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
    post("lamps", space.lamps[0], space.lamps[1])
    post()
    post(agents.length, " agents in ", scenari.length, " scenari")
    post()  
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
  
  balaiVitesse:function(v) {
    balayage.balayeur.maxV = v
  },
  
  balaiSize:function(s) {
    balayage.balayeur.s = s
  },
  
  balaiSub:function(e) {
    balayage.balayeur.e = e
  },
  
//////////////////// Tourneur
  
  tourneurAdd:function(a) {tourneur.add(a)},
  
  tourneurChange:function() {tourneur.changeSel()},
  
  tourneurPrep:function() {tourneur.sel = -1},
  
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
    if (toggle) danseDuSorbet.play()
    else danseDuSorbet.stop()
  },

  sorbetSize:function(s) {
    danseDuSorbet.sorbet.s = s
  },

  sorbetMaxEnergy:function(m) {
    if (m <= 0) return
    with (danseDuSorbet) {
      sorbet.maxGrow    = m
      sorbet.growDose   = m / this.incFrames
      sorbet.consumDose = m / this.decFrames
    }
  },

  sorbetIncFrames:function(ti) {
    if (ti < 1) ti = 1
    this.incFrames = ti
    with (danseDuSorbet.sorbet)
      growDose = maxGrow / ti
  },

  sorbetDecFrames:function(td) {
    if (td < 1) td = 1
    this.decFrames = td
    with (danseDuSorbet.sorbet)
      consumeDose = maxGrow / td
  },

  sorbetLapsFrames:function(l) {
    danseDuSorbet.frameLaps = l
  },
  
  sorbetSpace:function(x,y) {
    danseDuSorbet.space.lamps = [x,y]
  },
  
  sorbetTranslate:function(x,y) {
    danseDuSorbet.sorbet.translate = [x,y]
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
