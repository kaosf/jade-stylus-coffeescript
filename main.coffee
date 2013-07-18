e = document.getElementById 'main'

e.innerHTML = "The output of CoffeeScript.\n"

intervalId = setInterval(->
  e.innerHTML += "It is #{new Date} now.\n"
, 1000)

setTimeout(->
  clearInterval intervalId
, 10000)
