munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

age_arr = []
munsters.each do |hash|
  hash.each do |k, v| 
    if k['gender'] == 'male'
      age_arr << k['age']
    end
  end
end

p age_arr.sum