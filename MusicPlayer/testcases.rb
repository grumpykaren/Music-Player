class Fuck_record
  attr_accessor :id, :description, :weight, :price
end

def display_fuck(fuck)
  puts("Fuck information is: ")
  puts fuck.id
  puts fuck.description
  puts fuck.weight
  puts fuck.price
end

def main
  test_fuck = Fuck_record.new()
  test_fuck.id = 1
  test_fuck.description = "Stupid"
  test_fuck.weight = "Light"
  test_fuck.price = "Cheap"
  puts "Test 1 Output:"
  display_fuck(test_fuck)

  test_fuck = Fuck_record.new()
  test_fuck.id = 2
  test_fuck.description = "Smart"
  test_fuck.weight = "Heavy"
  test_fuck.price = "Expensive"
  puts "Test 2 Output:"
  display_fuck(test_fuck)
end

main
