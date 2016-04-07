require 'pry'

class Client
  attr_accessor :name, :num_of_children, :age, :num_of_pets, :adopted_pets
  def initialize(name, num_of_children, age, num_of_dogs, pets={})
    @name = name
    @num_of_children = num_of_children
    @age = age
    @num_of_dogs = num_of_dogs
    @pets = pets
  end
end
