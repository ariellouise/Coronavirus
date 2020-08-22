class Country 
  attr_accessor :name, :total_cases, :deaths, :recovered
  @@all = []
  
  def initialize(name:, total_cases:, deaths:, recovered:)
    @name = name 
    @total_cases = total_cases
    @deaths = deaths
    @recovered = recovered
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.find(name)
    @@all.find
  end 
  
end 