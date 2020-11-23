munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_value do |hash|
  name = hash[]
  age = hash["age"] 
  gender = hash["gender"]
  puts "#{name} is a #{age}-year-old #{gender}"
end

# munsters.each_pair do |name, details|
#   puts "#{name} is a #{details['age']} year old #{details['gender']}"
# end
 
