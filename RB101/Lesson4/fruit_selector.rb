produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(fruit)
  fruits = {}
  fruit.map do |key, val|
    if val == 'Fruit'
       fruits[key] = val
    end    
  end
  p fruits
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}