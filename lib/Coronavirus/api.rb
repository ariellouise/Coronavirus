class Api 
  
  def self(country) 
    url = "https://coronavirus-19-api.herokuapp.com/countries"
    if response = HTTP.get(Url)
      #returns (country)
    else response != "Error. Please try again." #link to error in cli? 
    data = JSON.parse 
    Country.new(name:)
  end 
  
end 
