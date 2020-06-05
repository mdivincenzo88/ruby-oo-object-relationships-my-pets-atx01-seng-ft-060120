class Owner
  # code goes here
  attr_reader :name, :species
  @@all= []
  def initialize(name) 
    @name = name
    @species = "human"
    self.class.all << self
  end
  
  def say_species
    "I am a #{@species}."
    end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats 
Cat.all.select do |cats|
  cats.owner == self
end
end

  def dogs 
Dog.all.select do |dogs|
  dogs.owner == self
end
end

def buy_cat(cat_name)
  Cat.new(cat_name,self)
  end
  
  def buy_dog(dog_name)
  Dog.new(dog_name,self)
  end
  
  
    


end