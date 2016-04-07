require 'pry'

# Dog:
#
# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a breed.
# An animal can have multiple toys.

class Dog
  attr_accessor :name, :age, :gender, :breed, :toys
  def initialize(name, age, gender, breed, toys)
    @name = name
    @age = age
    @gender = gender
    @breed = breed
    @toys = toys
  end
end
