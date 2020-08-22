class CLI 
  
  def start 
    puts "Welcome to the Coronavirus Statistics CLI. To begin, please type the name of a country."
    @c_name = gets.strip
    Api.get_data(@c_name)
    Country.find_by_name(@c_name) 
  end 
  
  def statistics(country)
    puts "Please type a number to see that particular statistic #{country.name}:"
    puts "1. Total Cases"
    puts "2. Deceased Cases"
    puts "3. Recovered Cases"
    puts "4. Exit Program"
    choice = gets.strip
    
    case "1"
     total_cases 
    when "2"
     deaths
    when "3"
     recovered 
    when "4"
     end_program 
    end
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