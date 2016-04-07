require './client'
require './animals'
require 'pry'

shelter = {
  clients: [],
  dogs: []
}

# d3 = Dog.new('Nala', 1, 'Female', 'French Bulldog', ['Piglet', 'Bone'])
c1 = Client.new('Keith', 7, 25, 2)
c2 = Client.new('DT', 70, 15, 1)
d1 = Dog.new('Gizmo', 2, 'Male', 'Pug', ['Monkey', 'Bone', 'Ball'])
d2 = Dog.new('Teddy', 4, 'Male', 'Bulldog', ['Monkey', 'Bone', 'Ball'])
shelter[:clients] << c1 << c2
shelter[:dogs] << d1 << d2


def gets_new_dog
  print "Dog's Name: "
  name = gets.chomp
  print 'Age: '
  age = gets.chomp
  print 'Gender: '
  gender = gets.chomp
  print 'Breed: '
  breed = gets.chomp
  print 'Toys: '
  toys = gets.chomp
  return Dog.new(name, age, gender, breed, toys)
end

while true
  puts 'Choose from the following options: '
  puts '1) Dogs Details             2) Clients Details'
  puts '3) Add a dog                4) Add a client'
  puts '5) Release dog to Client    6) Accept dog from Client'
  puts '7) Exit'
  userSelection = gets.chomp.to_i
  if userSelection == 7
    break
  elsif userSelection == 1
    print shelter[:dogs]
  elsif userSelection == 2
    print shelter[:clients]
  elsif userSelection == 3
    shelter[:dogs] << gets_new_dog
    print shelter[:dogs]
  elsif userSelection == 4
    print "Client's Name: "
    name = gets.chomp
    print 'No. of Children: '
    num_of_children = gets.chomp
    print 'Age: '
    age = gets.chomp
    print 'No. of Dogs: '
    num_of_dogs = gets.chomp.to_i
    dogs = {}
    if num_of_dogs > 0
      for i in 1..num_of_dogs
        dog = gets_new_dog
        dogs[dog.name] = dog
      end
    end

    print "Enter pet's details: "
    shelter[:clients] << Client.new(
      name,
      num_of_children,
      age,
      num_of_dogs,
      dogs
    )
    print shelter[:clients]
  # elsif userSelection == 5
  #   print "Client's name: "
  #   client_name = gets.chomp
  #   print "Adopted dog's name: "
  #   dog_name = gets.chomp
  #
  #   shelter[:dogs].each do |dog|
  #     if dog.name == dog_name
  #       shelter[:clients].each do |client|
  #         if client.name == client_name
  #           client.num_of_pets.push(dog)
  #         end
  #       end
  #       shelter[:dogs].delete(dog)
  #     end
  #   end
  #   print shelter[:dogs]
  #   print shelter[:clients]
  # elsif userSelection == 6
  #   print "Client's name: "
  #   client_name = gets.chomp
  #   print "Name of dog up for adoption: "
  #   dog_name = gets.chomp
  #
  #   # Find Client
  #   # Find Client's dog
  #   shelter[:clients].each do |client|
  #     if client.name == client_name
  #       client.num_of_pets.name == dog_name
  #       shelter[:dogs].push(client.num_of_pets)
  #     end
  #     # client.delete(num_of_pets)
  #   end
  end
  binding.pry
end
