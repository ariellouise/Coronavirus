class Country 
  attr_accessor :name, :cases, :total_cases
  @@all = []
  
  def initialize(name:, cases:, total_cases:)
    @name = name 
    @cases = cases
    @total_cases = total_cases
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.find(name)
    @@all.find
  end 
  
end 