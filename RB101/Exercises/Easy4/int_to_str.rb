STR = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def int_to_str(str)
  p str.divmod(10)
end

int_to_str(4321)
