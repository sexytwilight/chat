vo = require 'vo'

main = vo ->
  began = Date.now()
  while true
    yield new Promise (resolve) -> setTimeout resolve, 1000
    console.log Date.now() - began

console.log "It Begins"

main (error, result) ->
  if error then throw error
  console.log "Completed!", result
