require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each { |key, value| value << supply }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each { |key, value| value << supply }
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
 # holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].collect { |key, value| value }
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts key.to_s.capitalize! << ":"
    value.each do |key, value|
      key = key.to_s.split("_").map { |w| w.capitalize! }.join(" ") << ":"
      value = value.join(", ")
      puts "  #{key} #{value}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |key, value|
  value.map do |keys, values|
    if values.include?("BBQ")
      keys
    end
  end
end.flatten.compact
end








