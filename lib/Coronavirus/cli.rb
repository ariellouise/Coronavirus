class CLI 
  
  def start 
    puts "Welcome to the Coronavirus Statistics CLI. To begin, please type the name of a country."
    @c_name = gets.strip.downcase
    Api.get_data(@c_name)
    Country.find_by_name(@c_name) ? statistics(Country.find_by_name(@c_name))
  end 
  
  def menu
    puts "Please type a number to see that particular statistic #{country.name}:"
    list_options
    input = gets.strip.downcase
    return input
  end 
    
    
    
  def list_options
    puts "1. Total Cases"
    puts "2. Deceased Cases"
    puts "3. Recovered Cases"
    puts "4. Exit Program"
  end 
  
  def choose_option(option)
    case "1"
      puts "The total cases for #{country.name} is #{country.cases}."
    when "2"
      puts "The total deaths for #{country.name} is #{country.deaths}."
    when "3"
      puts "The total recoveries for #{country.name} is #{country.recovered}"
    when "4"
    end_program
  end 
    
    
    

  def error 
    puts "Sorry, that answer was invalid. Please try again!"
  end 
  
  def end_program
    exit
  end 
  
end 

#enter the country => gives country data 
#enter the number of the type of statistic => 1. cases 2. total cases 3.deaths 4. recovered