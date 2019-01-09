// Author : Clément Bossut

// For browser compatibility
if (!this.post) {
  this.post = function(m){console.log(m)}
  this.error = function(m){console.error(m)}
  this.include = function(a){console.log("Non Include ", a)}
  this.setoutletassist = function(){}
  this.outlets = undefined
}
/*
debugPrint("Tools included !")
debugPrint()
var included_tools = true
*/
var v2D = {

  length:function(v) {
    return Math.sqrt(v[0]*v[0]+v[1]*v[1])
  },

  normalize:function(v, n) {
    if (typeof(n) === 'undefined') n = 1
    var d = v2D.length(v)
    if (!d) return [0,0]
    return [v[0]*n/d,v[1]*n/d]
  },

  add:function(v1, v2) {
    return [v1[0]+v2[0],v1[1]+v2[1]]
  },

  sub:function(v1, v2) {
    return [v1[0]-v2[0],v1[1]-v2[1]]
  },

  mult:function(v, m) {
    return [v[0]*m,v[1]*m]
  },

  equal:function(v1, v2) {
    return v1[0] === v2[0] && v1[1] === v2[1]
  },

  truncate:function(v, m) {
    if (v2D.length(v) > m) return v2D.normalize(v, m)
    return v
  }

}

function removeFrom(tab, elt, unique) { // Todo check where it could be used
  if (unique === undefined) unique = true
  for (var i = tab.length-1 ; i >=0 ; i--) {
    if (tab[i] === elt) {
      tab.splice(i, 1)
      if (unique) return
    }
  }
}

var judaSize = 0 // en dist
  , vecMultiMap = [0,0] // en dist
  , nMultiMap = 0

function map(group) { //TODO should take agents as argument ?
  var lights = []
  for (var i = 0 ; i < space.lamps[0] ; i++) {
    lights[i] = []
    for (var j = 0 ; j < space.lamps[1] ; j++) {
      lights[i][j] = 0
    }
  }
  for (var k = 0; k < agents.length; k++) {
    if ((agents[k].group || 1) != (group || 1)) continue;
    with (agents[k]) {
      var pp = p.slice()
      //if (translate) p = v2D.add(p, translate) TODO Intéressant, à revoir plus tard correctement
      if (translate) pp = v2D.add(p, translate)
      for (var n = 0 ; n <= nMultiMap ; n++, pp = v2D.add(pp, vecMultiMap)) {
        if (!s && !judaSize) {
          if (!(pp[0] % space.dist) && lights[pp[0] / space.dist] &&
              !(pp[1] % space.dist) && lights[pp[0] / space.dist][pp[1] / space.dist]) {
            lights[pp[0] / space.dist][pp[1] / space.dist] = e*255
          }
          continue;
        }
        var square = [
          Math.max(0, Math.floor((pp[0] - judaSize)/space.dist - s)),
          Math.min(space.lamps[0]-1, Math.ceil((pp[0] + judaSize)/space.dist + s)),
          Math.max(0, Math.floor((pp[1] - judaSize)/space.dist - s)),
          Math.min(space.lamps[1]-1, Math.ceil((pp[1] + judaSize)/space.dist + s))
        ]
        for (var i = square[0] ; i <= square[1] ; i++) {
          for (var j = square[2] ; j <= square[3] ; j++) {
            lights[i][j] = Math.max(
              lights[i][j],
              e*255*Math.min(1, (1-(v2D.length(// Energy * max light *
                v2D.sub(          // dist between
                  pp,              // agent and
                  v2D.mult(       // lamp
                    [i,j],        // (position *
                    space.dist    // dist)
                  )
                )
              ) - judaSize)/(s*space.dist)))   // / size
            )
          }
        }
      }
    }
  }
  return lights
}

var debugate = false

function log(b) {
  post("log " + b + '\n')
  debugate = b
}

function debugPrint(mess) {
  if (debugate) mess ? post(mess) : post()
}

///////////////////// Send to webSocket for Max

/*
var socket = new WebSocket("ws://10.204.8.166:8080")

function sendToMax(tab) {
  //var data = ""
  //for (var i = 0 ; i < tab.length ; i++) data += tab[i] + " "
  socket.send(tab)
  console.log(tab)
}

function formatForDBAP(a) {
  return [
    a.p[0]*2/(space.lamps[0]-1)/space.dist - 1,
    -(a.p[1]*2/(space.lamps[1]-1)/space.dist - 1),
    a.e
  ]
}
*/
