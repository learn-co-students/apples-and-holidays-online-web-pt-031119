require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # code here
  # remember to return the updated hash
  
  
end

def all_winter_holiday_supplies(holiday_hash)
  supplies=[]
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].each do |season , supply|
    
    supplies << supply
  end
  supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, specific_holiday_hash|
    puts "#{season.to_s.capitalize}:" 
    #binding.pry
    specific_holiday_hash.each do |holiday_name, supply_array|
    puts "  #{holiday_name.to_s.split("_").collect{|strg| strg.capitalize}.join(" ")}: #{supply_array.join(", ")}"
    end
  end
end
  
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  


def all_holidays_with_bbq(holiday_hash)
  holiday_names = []
  holiday_hash.each do |season, specific_holiday_hash|
    specific_holiday_hash.each do |holiday, supply_array|
      #binding.pry
      if supply_array.include?("BBQ")
        holiday_names << holiday
      end
    end
  end
  holiday_names
end

        
      
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  
  



