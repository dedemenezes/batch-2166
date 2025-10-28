require "json"

# # TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# serialized_beatles = File.read(filepath)

# # p serialized_beatles
# beatles = JSON.parse(serialized_beatles)

# p beatles["beatles"][1]["first_name"]


## Storing
beatles = {
  beatles: [
  {
    first_name: "Júlia",
    last_name: "Matta",
    instrument: "Guitar"
  },
  {
    first_name: "Rodrigo",
    last_name: "Leocadio",
    instrument: "Bass Guitar"
  }
]}

File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
end
