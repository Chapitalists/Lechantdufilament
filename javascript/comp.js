/// Author : Clément Bossut
/// Licence GNU GPL v3.0

// js comp nCalques

autowatch = 1

inlets = (jsarguments[1] || 0) + 1
outlets = 3
setinletassist(0, "bang computes the output")
for (var i = 1 ; i < inlets ; i++) setinletassist(i,"calque n°" + i)
setoutletassist(2, "length of the lists")
setoutletassist(1, "max of the lists in order")
setoutletassist(0, "bang when entire list has been send")

var max_value = 255
  , lists = []
  , calques = new Array(jsarguments[1] || 0)
  , modes = new Array(calques.length)
  , len = 0
  , lastLen = 0
  , mm = [
    "none",
    "highest",
    "lowest",
    "add",
    "mean",
    "sub",
    "product"
  ]

function bang() {
  if (!lists.length && calques.every(function (v) {!v.length})) {

    if (lastLen) {
      outlet(2, lastLen)
      for (var i = 0 ; i < lastLen ; i++) {
        outlet(1, 0)
      }
      outlet(0, "bang")
      lastLen = 0
    }

    return;
  }

  lastLen = len

  outlet(2, len)

  for(i = 0 ; i < len ; i++) {
    var m = 0

    for(j = 0 ; j < lists.length ; j++) {
      m = Math.max(lists[j][i],m)
    }

    for (j = 0 ; j < modes.length ; j++) {
      var l = calques[j][i] || 0

      for (k = 0 ; k < modes[j].length ; k++) {
        switch(modes[j][k]) {
          case 0: // none
            break;

          case 1: // highest
            m = Math.max(m, l)
            break;

          case 2: // lowest
            m = Math.min(m, l)
            break;

          case 3: // add
            m += l
            break;

          case 4: // mean
            m = (m + l)/2
            break;

          case 5: // sub
            m -= l
            break;

          case 6: // product
            m = m * l / max_value
            break;
        }
      }
    }

    outlet(1,m)
  }

  lists = []
  len = 0
  calques.fill([])

  outlet(0,"bang")
}

function list() {
  if (!len) len = arguments.length
  else if (arguments.length != len) {
    error("comp.js : different list length (" + arguments.length +
          " instead of " + len + ") from inlet " + inlet)
  } else if (inlet) {
    calques[inlet-1] = arguments
  } else {
    lists.push(arguments)
  }
}

for (var i = 0 ; i < modes.length ; i++) modes[i] = [1], calques[i] = []
function mode(n, m, add) {
  if (!n) {
    for (var i = 0 ; i < modes.length ; i++) {
      for (var j = 0 ; j < modes[i].length ; j++) {
        post(mm[modes[i][j]])
        post('\n')
      }
    }
    return;
  }
  if (--n < 0 || n >= modes.length) {
    error("Out of inlets\n")
    return;
  }
  var nm = mm.indexOf(m)
  if (nm == -1) error("Wrong mode " + m + '\n')
  else if (add) modes[n].push(nm)
  else modes[n] = [nm]
}
