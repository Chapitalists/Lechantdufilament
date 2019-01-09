// Author : Clément Bossut
/*
debugPrint("Scenarios included !")
debugPrint()
if (!this.included_agents) {
  debugPrint("Including agents")
  debugPrint()
  include('agent')
}
var included_scenarios = true
*/
var agents = [],
    scenari = []

var scenario = {
  protoAgent:agent,
  agents:[],
  sel:-1,
  changeSel:function() { //TODO use that in other scenarios (see tourneur)
    if (!this.agents.length) this.sel = -1
    else {
      this.sel = (this.sel + 1) % this.agents.length
    }
  },
  getSel:function() {
    if (this.sel != -1 ) return this.agents[this.sel]
    else return this.protoAgent //TODO should I rename all the protoAgents
  },
  removeSel:function() {
    if (this.sel != -1) {
      this.agents[this.sel].toDie = true
      this.agents.splice(this.sel, 1)
      this.changeSel()
    }
  },
  init:function() {
    this.agents = [] // Create copy into new scenario to prevent modifying prototype
  },
  play:function() {
    this.init()
    scenari.push(this)
  },
  stop:function() { //TODO weird ? TODO stop Sorbet ne semble pas faire ça ? les sorbets restent
    for (var i = scenari.length - 1 ; i >= 0 ; i--)
      if (scenari[i] === this) scenari.splice(i, 1)
    for (var i = 0 ; i < this.agents.length ; i++) {
      for (var j = agents.length - 1 ; j >= 0 ; j--)
        if (agents[j] === this.agents[i]) {
          agents.splice(i, 1)
        }
    }
    this.agents = []
  },
  update:function(){}
}



var slave = Object.create(agent)
Object.assign(slave,
  {
    e: 0
  }
)
function addSlave(x, y) {
  var ag = Object.create(slave)
  ag.p = [x || Math.floor(space.lamps[0]/2)*space.dist,
          y || Math.floor(space.lamps[1]/2)*space.dist]
  agents.push(ag)
}


var orchestre = Object.create(scenario)
Object.assign(orchestre,
  {
    musicien:Object.create(agent),
    init:function() {
      this.agents = []
      for (var i = 0 ; i < space.lamps[0] ; i++) {
        for (var j = 0 ; j < space.lamps[1] ; j++) {
          var ag = Object.create(orchestre.musicien)
          ag.p = v2D.mult([i,j], space.dist)
          this.agents.push(ag)
        }
      }
      agents = agents.concat(this.agents)
    },
    bang:function(x, y, dx, dy) { // TODO ça peut déborder d'une colonne vers la suivante
      if (!this.agents[0]) return;
      for (var i = x - 1 ; i < x + dx - 1 ; i++) {
        for (var j = y - 1 ; j < y + dy - 1; j++) {
          var ag = this.agents[i*space.lamps[0] + j]
          if (ag) ag.lates = ["growNdie"]
        }
      }
    }
  }
)
Object.assign(orchestre.musicien,
  {
    e:0,
    consumeDose: 1,
    growDose: 1,
    dieOrNot: false
  }
)


var tourneur = Object.create(scenario)
Object.assign(tourneur,
  {
    derviche:Object.create(agent),
    mkTraj:function(rad) {
      var center = [(space.lamps[0]-1)/2, (space.lamps[1]-1)/2]
      return [
        [(center[0]-rad)*space.dist, (center[1]-rad)*space.dist],
        [(center[0]+rad)*space.dist, (center[1]-rad)*space.dist],
        [(center[0]+rad)*space.dist, (center[1]+rad)*space.dist],
        [(center[0]-rad)*space.dist, (center[1]+rad)*space.dist]
      ]
    },
    tpSel:function(rad) {
      if (this.sel == -1) return;
      var ag = this.getSel(),
          side = ag.trajectForward ? ag.trajectPoint - 1 : ag.trajectPoint,
          d = space.dist * (ag.rad - rad)
      switch (side) { // beware, is p own property of ag ?
        case 0:
          ag.p[1] += d
          break;
        case 1:
          ag.p[0] -= d
          break;
        case 2:
          ag.p[1] -= d
          break;
        case 3:
          ag.p[0] += d
          break;
      }
      ag.rad = rad
      ag.trajectory = this.mkTraj(rad)
    },
    add:function(rad) {
      this.agents = this.agents.slice() //TODO this copy could be made by init, see scenario
      var ag = Object.create(this.derviche)
      ag.trajectory = this.mkTraj(rad)
      ag.p = ag.trajectory[0]
      ag.rad = rad
      this.sel = this.agents.push(ag) - 1
      agents.push(ag)
    }
  }
)
Object.assign(tourneur.derviche,
  {
    maxV:5,
    only:agent.traject,
    trajectMode:1
  }
)
tourneur.protoAgent = tourneur.derviche


var balayage = Object.create(scenario)
Object.assign(balayage,
  {
    balayeur:Object.create(agent),
  /* TODO Version complètement généralisée pour tout angle, toute matrice, tout départ et arrivée
    launch:function(angle=0, width, startX, startY, length, nAg) {
      this.agents = this.agents.slice() //TODO this copy could be made by init, see scenario
      var radians = angle * Math.PI / 180
        , projV = space.lamps[0] + space.lamps[1]*Math.abs(Math.tan(radians))
        , projH = space.lamps[1] + space.lamps[0]*Math.abs(Math.tan(Math.PI/2 - radians))
        , width = width || (angle+45)%180 < 90 ? projV : projH
      if (!startY) {
        var cornerOut =
          [
            Math.sin(radians) > 0 ?
              -Math.sin(radians) * this.balayeur.s :
              space.lamps[0] + Math.sin(radians) * this.balayeur.s
          , Math.cos(radians) > 0 ?
              -Math.cos(radians) * this.balayeur.s :
              space.lamps[1] + Math.cos(radians) * this.balayeur.s
          ]
      }
      En attendant, version pour matrice carré et diagonales pures */
    squareLaunch:function(dir, width, length) { // 0 up puis huitième de tour en sens horaire jusqu'à 7
      length-- // transforme intervalle en lampes (poteaux et barrières)
      var startP, endP, vec
        , lamps = space.lamps[0]-1
        , dist = space.dist
      switch (dir) {
        case 0:
          startP = v2D.mult([lamps/2, lamps], dist)
          endP = [0, -dist]
          vec = [dist/2, 0] // TODO juste 90deg de endP ?
          break;
        case 2:
          startP = v2D.mult([0, lamps/2], dist)
          endP = [dist, 0]
          vec = [0, dist/2]
          break;
        case 4:
          startP = v2D.mult([lamps/2, 0], dist)
          endP = [0, dist]
          vec = [dist/2, 0]
          break;
        case 6:
          startP = v2D.mult([lamps, lamps/2], dist)
          endP = [-dist, 0]
          vec = [0, dist/2]
          break;
        case 1:
          startP = v2D.mult([0, lamps], dist)
          endP = [dist, -dist]
          vec = [dist/2, dist/2]
          break;
        case 3:
          startP = v2D.mult([0, 0], dist)
          endP = [dist, dist]
          vec = [dist/2, -dist/2]
          break;
        case 5:
          startP = v2D.mult([lamps, 0], dist)
          endP = [-dist, dist]
          vec = [dist/2, dist/2]
          break;
        case 7:
          startP = v2D.mult([lamps, lamps], dist)
          endP = [-dist, -dist]
          vec = [dist/2, -dist/2]
          break;
      }
      var ags = [Object.create(this.balayeur)]
      endP = v2D.add(startP, v2D.mult(endP, length || lamps))
      ags[0].trajectory = [startP, endP]
      ags[0].p = startP
      agents.push(ags[0])
      for (var i = 1 ; i < (width || space.lamps[0]) ; i++) {
        var ag1 = Object.create(ags[0])
          , ag2 = Object.create(ags[0])
          , dec = v2D.mult(vec, i)
        ag1.trajectory = [v2D.add(startP, dec), v2D.add(endP, dec)]
        ag2.trajectory = [v2D.sub(startP, dec), v2D.sub(endP, dec)]
        ag1.p = ag1.trajectory[0]
        ag2.p = ag2.trajectory[0]
        agents.push(ag1)
        agents.push(ag2)
      }
    },
    square:[],
    center:[],
    fugeDelay:[],
    nDelay:0,
    framesDelay:0,
    centriLaunch:function(petifuge) {
      var c = [(space.lamps[0]-1)*space.dist/2, (space.lamps[1]-1)*space.dist/2]
        , corners = [ // TODO il suffit des deux valeurs de distance au bord
          [0,0],
          [(space.lamps[0]-1)*space.dist,0],
          [(space.lamps[0]-1)*space.dist,(space.lamps[1]-1)*space.dist],
          [0,(space.lamps[1]-1)*space.dist]
        ]
        , minBorder = Math.floor(Math.min(space.lamps[0], space.lamps[1])/2)
        , maxBorder = Math.floor(Math.max(space.lamps[0], space.lamps[1])/2)
      this.square = []
      this.center = []
      this.fugeDelay = []
      this.nDelay = 0
 // TODO pourquoi recalculer ça à chaque launch ?
      for (var i = 0 ; i < maxBorder ; i++) {
        this.square.push([corners[0][0]+i*space.dist, corners[0][1]])
        this.center.push([corners[0][0]+i*space.dist, i<minBorder ? corners[0][1]+i*space.dist : c[1]])
        this.fugeDelay.push(this.nDelay)
        this.square.push([corners[1][0]-i*space.dist, corners[1][1]])
        this.center.push([corners[1][0]-i*space.dist, i<minBorder ? corners[1][1]+i*space.dist : c[1]])
        this.fugeDelay.push(this.nDelay)
        this.square.push([corners[2][0]-i*space.dist, corners[2][1]])
        this.center.push([corners[2][0]-i*space.dist, i<minBorder ? corners[2][1]-i*space.dist : c[1]])
        this.fugeDelay.push(this.nDelay)
        this.square.push([corners[3][0]+i*space.dist, corners[3][1]])
        this.center.push([corners[3][0]+i*space.dist, i<minBorder ? corners[3][1]-i*space.dist : c[1]])
        this.fugeDelay.push(this.nDelay)
        if (i < minBorder) {
          this.square.push([corners[0][0], corners[0][1]+i*space.dist])
          this.center.push([corners[0][0]+i*space.dist, corners[0][1]+i*space.dist])
          this.fugeDelay.push(this.nDelay)
          this.square.push([corners[1][0], corners[1][1]+i*space.dist])
          this.center.push([corners[1][0]-i*space.dist, corners[1][1]+i*space.dist])
          this.fugeDelay.push(this.nDelay)
          this.square.push([corners[2][0], corners[2][1]-i*space.dist])
          this.center.push([corners[2][0]-i*space.dist, corners[2][1]-i*space.dist])
          this.fugeDelay.push(this.nDelay)
          this.square.push([corners[3][0], corners[3][1]-i*space.dist])
          this.center.push([corners[3][0]+i*space.dist, corners[3][1]-i*space.dist])
          this.fugeDelay.push(this.nDelay)
        }
        this.nDelay++
      }
      var plus = false
      if (space.lamps[0] % 2) {
        this.square.push([c[0], 0])
        this.center.push(c)
        this.fugeDelay.push(this.nDelay)
        this.square.push([c[0], corners[2][1]])
        this.center.push(c)
        this.fugeDelay.push(this.nDelay)
        plus = true
      }
      if (space.lamps[1] % 2) {
        this.square.push([0, c[1]])
        this.center.push(c)
        this.fugeDelay.push(this.nDelay)
        this.square.push([corners[2][0], c[1]])
        this.center.push(c)
        this.fugeDelay.push(this.nDelay)
        plus = true
      }
      if (plus) this.nDelay++
      if (space.lamps[1] > space.lamps[0]) {
        this.square = this.square.map(function(p) {return [p[1], p[0]]})
        this.center = this.center.map(function(p) {return [p[1], p[0]]})
      }
      this.nDelay--
      if (petifuge) {
        this.framesDelay = 0
        this.update = function() {
          for (var j = 0 ; j < this.square.length ; j++) {
            if (this.nDelay - this.fugeDelay[j] - (this.framesDelay*this.balayeur.maxV/space.dist))
              continue;
            var ag = Object.create(this.balayeur)
            ag.trajectory = [this.center[j], this.square[j]]
            ag.p = this.center[j]
            agents.push(ag)
          }
          if (++this.framesDelay*this.balayeur.maxV/space.dist > this.nDelay) removeFrom(scenari, this)
        }
        scenari.push(this)
      } else for (var j = 0 ; j < this.square.length ; j++) {
        var ag = Object.create(this.balayeur)
        ag.trajectory = [this.square[j], this.center[j]]
        ag.p = this.square[j]
        agents.push(ag)
      }
    }
  }
)
Object.assign(balayage.balayeur,
  {
    maxV:5,
    lates:["growNdie"],
    growNgo:true,
    e:0,
    growDose:.05,
    consumeDose:.05
  }
)


var sorbetiere = Object.create(scenario)
Object.assign(sorbetiere,
  {
    space:Object.create(space),
    frameLaps:100,
    remaining:0,
    lastP:[-1,-1],
    sorbet:Object.create(agent),
    init:function() {
      this.remaining = 0
      this.lastP = [-1,-1]
    },
    update:function() {
      if (this.remaining > this.frameLaps) this.remaining = this.frameLaps
      if (--this.remaining <= 0) {
        var newAgent = Object.create(this.sorbet)
        do {
          newAgent.p = [
            Math.floor(Math.random() * this.space.lamps[0]) * this.space.dist,
            Math.floor(Math.random() * this.space.lamps[1]) * this.space.dist
          ]
        } while (v2D.equal(newAgent.p, this.lastP)
                 && (this.space.lamps[0] > 1 && this.space.lamps[1] > 1))
        this.lastP = newAgent.p
        agents.push(newAgent)
        this.remaining = this.frameLaps
      }
    }
  }
)
Object.assign(sorbetiere.sorbet,
  {
    e:0.01,
    consumeDose:0.01,
    growDose:0.01,
    maxGrow:1,
    s:0.5,
    lates:["growNdie"]
  }
)
var freezer = Object.create(sorbetiere)



var errants = Object.create(scenario) //TODO CLEAN
Object.assign(errants, //TODO many things are more or less copy of tourneur => generalisation in proto
  {
    n:0,
    errant:Object.create(agent),
    add:function() {
      this.agents = this.agents.slice() // copy to prevent modifying proto
      var newAgent = Object.create(this.errant)
      /* Old current sélection before sel in scenario
      Object.assign(newAgent, this.current)
      this.current = newAgent
      this.current.p = [Math.random()*space.lamps[0]*space.dist,
                        Math.random()*space.lamps[1]*space.dist]
                        //TODO is it still useful ? */
      this.sel = this.agents.push(newAgent) - 1 //TODO pushing into prototype ? see scenario.init
      agents.push(newAgent)
    },
    remove:function() { //TODO should select which errant to remove
      removeFrom(agents, this.agents.shift())
    }
  }
)
errants.current = errants.errant
Object.assign(errants.errant,
  {
    maxV:5,
    maxF:0.5,
    m:1,
    s:1,
    /*
    seekTarget:{p:[0,0]},
    */
    wanderDistance:Math.sqrt(2),
    wanderRadius:1,
    wanderDiff:0.6,
    wanderLaps:1,
    /*
    fleeObstacle:space,
    fleeDist:100,
    */
    insideDist:space.dist,
    insideSquare:[0,0,space.dist*(space.lamps[0]-1),space.dist*(space.lamps[1]-1)],
    insideRule:"wander",

    forces:["inside"],
    lates:[]
  }
)
errants.protoAgent = errants.errant


var seeker = {
  dist:100,
  seeker:Object.create(agent),
  play:function() {
    scenari.push(this)
    agents.push(this.seeker)
  },
  update:function() {
    var a = this.seeker
    if (v2D.length(v2D.sub(a.seekTarget.p, a.p)) < this.dist) {
      this.target = [
        Math.floor(Math.random() * (space.x2 - space.x1)) + space.x1,
        Math.floor(Math.random() * (space.y2 - space.y1)) + space.y1
      ]
      a.seekTarget = {p:this.target}
    }
  },
  stop:function() {
    for (var i = scenari.length-1 ; i >= 0 ; i--)
      if (scenari[i] === this) scenari.splice(i,1)
    for (var i = agents.length-1 ; i >= 0 ; i--)
      if (agents[i] === this.seeker) agents.splice(i,1)
  }
}
seeker.seeker.forces = ["seek"]
seeker.seeker.seekTarget.p = [0,0]
seeker.seeker.seekDist = -1
seeker.seeker.lates = ["fold"]
seeker.seeker.maxV = 5


function update(speedCent) {
  for (var j = 0 ; j < scenari.length ; j++) scenari[j].update()
  for (var i = agents.length-1 ; i >= 0 ; i--) {
    agents[i].update(speedCent)
    if (agents[i].toDie) agents.splice(i,1)
    /*else {
      var tab = formatForDBAP(agents[i])
      tab.unshift(i+1)
      sendToMax(tab)
    }*/
  }
  //sendToMax(["bang"])
}

var test = {
  agent:Object.create(agent),
  play:function() {
    scenari = [this]
    this.agent.v = [2,5]
    this.agent.maxV = 5
    this.agent.wanderDistance = Math.sqrt(2)
    this.agent.wanderRadius = 1
    this.agent.wanderDiff = 0.6
    this.agent.wanderLaps = 1
    this.agent.mass = 1
    this.agent.fleeObstacle = space
    this.agent.fleeDist = 100
    this.agent.forces = ["wander", "flee"]
    this.agent.lates = ["wrap"]
    agents = [(Object.create(this.agent))]
  },
  update:function() {},
  stop:function() {
    scenari = []
    agents = []
  }
}
