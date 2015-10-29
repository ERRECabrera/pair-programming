require "pry"
require "date"

string_crude = IO.read("subtitle.srt")
array_crude = string_crude.split("\n")
array_procesed = array_crude.select {|string| string.include?("-->")}
array_reprocesed = array_procesed.map {|string| string.split(" --> ")}
puts array_reprocesed[0]
binding.pry
