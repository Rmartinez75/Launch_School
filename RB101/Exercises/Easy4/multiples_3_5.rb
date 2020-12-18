def multisum(rng)
  arr = []
  (1..rng).map do |num|
    arr << num if (num % 3).zero? || (num % 5).zero?
  end
  arr.sum
end

p multisum(1000)
