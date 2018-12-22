// Author : Clément Bossut
/*
debugPrint("Agents included !")
debugPrint()
if (!this.included_tools) {
  debugPrint("Including tools")
  debugPrint()
  include('tools')
}
var included_agents = true
*/
var space = {
  lamps:[9,9],
  dist:100,
  x1:-100, // used for lates and nearVect
  y1:-100,
  x2:900,
  y2:900,
  nearVect:function(p) {
    var dists = [p[0] - this.x1,
                 p[1] - this.y1,
                 this.x2 - p[0],
                 this.y2 - p[1]],
        index = 0,
        min = dists[0]
    for (var i = 1 ; i < dists.length ; i++) {
      if (dists[i] < min) {
        min = dists[i]
        index = i
      }
    }
    switch (index) {
      case 0:
        return [-min, p[1]]
      case 1:
        return [p[0], -min]
      case 2:
        return [min, p[1]]
      case 3:
        return [p[0], min]
      default:
        throw "Out of bounds in space"
    }
  },
  isCollide:function(p, v) {
    //todo
  }
}

var agent = {
  color:"black", //TODO could be a state variable not directly color For debug draw purposes only
  p:[0,0], // position en dist
  v:[0,0], // velocity
  f:[0,0], // force / steering / acceleration
  e:1, // energy
  s:1, // size en nombre de lampes
  m:1, // mass
  maxF:-1,
  maxV:-1,
  minV:-1,
  forces:[],
  moves:[], // todo doesn't exist anymore ? see // Move in update()
  lates:[],
  only:undefined, // For complex rules down there, special pseudo-agents en devenir, instead of forces
  speedCentRemaining:-1,
  framesAdd:0,
  framesAdded:0,
  framesCent:0,
  translate:undefined, // en dist
  update:function(speedCent) {
    speedCent = this.speedCent || speedCent || 100
    this.framesCent = (this.framesCent + 1) % 100

    var nTimes = Math.floor(speedCent/100)
    this.framesAdd = speedCent % 100

    if (!this.framesCent) {
      this.framesAdded = 0
      this.speedCentRemaining = this.framesAdd ? Math.floor(100 / this.framesAdd) : -1
    }

    this.speedCentRemaining = Math.min(this.speedCentRemaining, Math.floor(100 / this.framesAdd))

    if (this.framesAdded < this.framesAdd || speedCent < 100) {
      if (--this.speedCentRemaining <= 0) {
        nTimes++
        this.framesAdded++
        this.speedCentRemaining = Math.floor(100 / this.framesAdd)
      }
    }

    for (var n = 0 ; n < nTimes ; n++) {
      if (this.only) {
        this.only()
      } else {

        // Compute forces
        this.f = [0,0]
        for (var i = 0 ; i < this.forces.length ; i++) this[this.forces[i]]()

        // Truncate forces
        if (this.maxF !== -1) this.f = v2D.truncate(this.f, this.maxF)

        // Apply forces
        this.v = v2D.add(this.v, v2D.mult(this.f, 1/this.m))

      }

      // Limit velocity
      if (this.maxV !== -1) this.v = v2D.truncate(this.v, this.maxV) // max
      if (v2D.length(this.v) < this.minV)
        this.v = v2D.normalize(this.v, this.minV) // min

      // Move
      this.p = v2D.add(this.p, this.v)

      // Late rules
      for (var k = 0 ; k < this.lates.length ; k++) this[this.lates[k]]()
    }
  },
  translateXY:function(x,y) {this.translate = [x,y]}
}

//////////////////////////// FORCES

agent.seekTarget = {p:undefined} //todo : is it a good idea ? it is in fact initialised, don't know how
agent.seekDist = -1
agent.seek = function() {
  var desiredVelocity = v2D.sub(this.seekTarget.p, this.p)

  if (this.seekDist == -1 || v2D.length(desiredVelocity) < this.seekDist) {
    this.f = v2D.add(
      this.f,
      v2D.sub(
        v2D.normalize(
          desiredVelocity,
          this.maxV === -1 ? v2D.length(this.v) : this.maxV
        ),
        this.v
      )
    )
  }
}

agent.fleeObstacle = space
agent.fleeDist = space.dist
agent.flee = function() {
  var desiredVelocity = v2D.sub([0,0], this.fleeObstacle.nearVect(this.p))

  if (this.fleeDist !== -1 && v2D.length(desiredVelocity) < this.fleeDist) {
    this.f = v2D.add( // f += steer
      this.f,
      v2D.sub( // steer = desired - velocity
        v2D.normalize(
          desiredVelocity,
          this.maxV === -1 ? v2D.length(this.v) : this.maxV // maxV
        ),
        this.v
      )
    )
  }
}

agent.arrive = function() {
  //todo
}

agent.wanderDistance = 1
agent.wanderRadius = 1
agent.wanderDiff = Math.PI/16
agent.wanderLaps = 10
agent.wanderRemaining = 0
agent.wanderAngle = 0
agent.wander = function() {
  var circleCenter = v2D.normalize(this.v, this.wanderDistance)
  this.f = v2D.add(this.f,
                   v2D.add(v2D.normalize([Math.cos(this.wanderAngle),
                                          Math.sin(this.wanderAngle)],
                                         this.wanderRadius),
                           circleCenter))
  if (--this.wanderRemaining <= 0) {
    this.wanderAngle += (Math.random() * 2 - 1) * this.wanderDiff
    this.wanderRemaining = this.wanderLaps
  }
}

agent.wanderSeek = function() {
  if (v2D.length(v2D.sub(this.seekTarget.p, this.p)) <= v2D.length(this.v)) {
    this.seekTarget =
      {p:[Math.random() * space.dist * (space.lamps[0]-1),
          Math.random() * space.dist * (space.lamps[1]-1)]}
  }
  this.seek()
}

agent.avoid = function() {
  //todo
}

/*
agent.maxV = -1
agent.move = function() { // same
  if (this.maxV !== -1) this.v = v2D.truncate(this.v, this.maxV)
  this.p[0] += this.v[0]
  this.p[1] += this.v[1]
}*/

agent.insideDist = space.dist
agent.insideSquare = undefined //todo : is it a good idea ?
agent.insideMaxF = 0.2
agent.insideRule = "wander"
agent.inside = function() {
  var maxV = this.maxV == -1 ? v2D.length(this.v) : this.maxV
  var f = [0,0]
  if (this.p[0] < this.insideSquare[0] + this.insideDist) {
    f = [maxV - this.v[0], this.v[1]]
    //f = [maxV - this.v[0], 0]
  } else if (this.p[0] > this.insideSquare[2] - this.insideDist) {
    f = [-maxV - this.v[0], this.v[1]]
    //f = [-maxV - this.v[0], 0]
  }
  if (this.p[1] < this.insideSquare[1] + this.insideDist) {
    f = v2D.add(f, [this.v[0], maxV - this.v[1]])
    //f = v2D.add(f, [0, maxV - this.v[1]])
  } else if (this.p[1] > this.insideSquare[3] - this.insideDist) {
    f = v2D.add(f, [this.v[0], -maxV - this.v[1]])
    //f = v2D.add(f, [0, -maxV - this.v[1]])
  }
  if (v2D.equal(f, [0,0])) {
    this.color = "black"
    this[this.insideRule]()
  } else {
    this.color = "purple"
    this.f = v2D.add(this.f, v2D.truncate(f, this.insideMaxF))
  }
}

////////////////////////////////// LATES - BORDERS

agent.clip = function() { // beware, modify prototype ...
  if (this.p[0] < space.x1) this.p[0] = space.x1
  else if (this.p[0] > space.x2) this.p[0] = space.x2
  if (this.p[1] < space.y1) this.p[1] = space.y1
  else if (this.p[1] > space.y2) this.p[1] = space.y2
}

agent.wrap = function() { // same
  if (this.p[0] < space.x1) this.p[0] += space.x2 - space.x1
  else if (this.p[0] > space.x2) this.p[0] -= space.x2 - space.x1
  if (this.p[1] < space.y1) this.p[1] += space.y2 - space.y1
  else if (this.p[1] > space.y2) this.p[1] -= space.y2 - space.y1
}

agent.fold = function() { // same
  if (this.p[0] < space.x1) {
    this.p[0] = 2 * space.x1 - this.p[0]
    this.v[0] = -this.v[0]
  }
  else if (this.p[0] > space.x2) {
    this.p[0] = 2 * space.x2 - this.p[0]
    this.v[0] = -this.v[0]
  }
  if (this.p[1] < space.y1) {
    this.p[1] = 2 * space.y1 - this.p[1]
    this.v[1] = -this.v[1]
  }
  else if (this.p[1] > space.y2) {
    this.p[1] = 2 * space.y2 - this.p[1]
    this.v[1] = -this.v[1]
  }
}

////////////////////////////////// LATES - ENERGY

agent.consumeDose = 0
agent.consume = function() { // TODO Attention, stayValue change le comportement attendu de consume !
  this.e = this.e > (this.consumeDose + this.stayValue) ? this.e - this.consumeDose : this.stayValue
}

agent.toDie = false // TODO better done by consume ?
agent.die = function() {
  this.toDie = this.e <= 0
}

agent.stayValue = 0 // TODO interdépendant avec consume et die, bad
agent.stay = function() {
  if (this.e <= this.stayValue) {
    this.lates = []
    this.e = this.stayValue
  }
}

agent.maxGrow = 1
agent.growDose = 0
agent.grow = function() {
  this.e += this.growDose
  if (this.e > this.maxGrow) this.e = this.maxGrow
  return ! (this.e == this.maxGrow)
}

/////////////////////////////////// COMPLEX

agent.dieOrNot = true

// LATE
agent.pauseGND = 0
agent.stateGND = -1
agent.growNgo = false
agent.growNdie = function() {
  if (this.stateGND < 0) {
    if (!this.grow()) this.stateGND = this.pauseGND
  }
  else if (this.stateGND > 0) this.stateGND--
  else {
    this.stateGND = -1
    if (this.growNgo) {
      this.lates = []
      this.only = this.traject
      this.traject()
    } else {
      this.lates = this.lates.slice() // make a copy to not modify prototype
      this.lates.splice(this.lates.indexOf("growNdie"), 1, "consume", this.dieOrNot ? "die" : "stay")
      this.consume()
    }
  }
}

// ONLY
agent.trajectory = [[0,0], [200,200]]
agent.trajectPoint = 1
agent.trajectMode = 0 // 0 : One shot then die, 1 : Loop, 2 : Auto-reverse, 3 : Solo Stay
agent.trajectForward = true
agent.traject = function() {
  if (v2D.equal(this.p, this.trajectory[this.trajectPoint])) {
    if (this.trajectForward) {                                    // Forward
      this.trajectPoint++
      if (this.trajectPoint == this.trajectory.length) {        // End
        switch (this.trajectMode){
          case 0:                                             // Die
            this.only = undefined
            this.v = [0,0]
            this.lates.push("consume", this.dieOrNot ? "die" : "stay")
            return;
          case 1:                                             // Loop
            this.trajectPoint = 0
            break;
          case 2:                                             // Reverse
            this.trajectPoint -= 2
            this.trajectForward = false
            break;
          case 3:
            this.trajectory = [this.trajectory[this.trajectory.length -1]]
            this.trajectPoint = 0
            for (var i = 0 ; i < tourneur.agents.length ; i++) { // TODO, WTF lien avec tourneur ?
              if (tourneur.agents[i] != this) tourneur.agents[i].toDie = true
            }
            tourneur.agents = [this]
            tourneur.sel = 0
        }
      }
    } else {                                                      // Backward
      this.trajectPoint--
      if (this.trajectPoint < 0) {                              // End
        switch (this.trajectMode) {
          case 0:                                             // Die
            this.only = undefined
            this.v = [0,0]
            this.lates.push("consume", this.dieOrNot ? "die" : "stay")
            return;
          case 1:                                             // Loop
            this.trajectPoint = this.trajectory.length - 1
            break;
          case 2:                                             // Reverse
            this.trajectPoint = 0
            this.trajectForward = true
            break;
          case 3:
            this.trajectory = [this.trajectory[this.trajectory.length -1]]
            this.trajectPoint = 0
            for (var i = 0 ; i < tourneur.agents.length ; i++) { // TODO, WTF lien avec tourneur ?
              if (tourneur.agents[i] != this) tourneur.agents[i].toDie = true
            }
            tourneur.agents = [this]
            tourneur.sel = 0
        }
      }
    }
  }
  this.v = v2D.sub(this.trajectory[this.trajectPoint], this.p)
}
agent.trajectReverse = function() {
  this.trajectPoint = (this.trajectPoint + (this.trajectForward ? -1 : 1)) % this.trajectory.length
  if (this.trajectPoint < 0) this.trajectPoint += this.trajectory.length
  this.trajectForward = !this.trajectForward
}
