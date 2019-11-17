def roll_call_dwarves(dwarves)
  dwarves.each_with_index {|item, index| puts "#{index+1}:#{item}"}
  
end

def summon_captain_planet(planeteer_calls)
  def summon_captain_planet(planeteer_calls)
  planeteer_calls.map { |call| call.capitalize + '!' }
end

summon_captain_planet(planeteer_calls)
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? { |call| call.length > 4 }
end

def find_the_cheese (cheese)
  cheese_types = ["cheddar", "gouda", "camembert"]
   cheese.find do |maybe_cheese|
    cheeses.include?(maybe_cheese)
  end
end

find_the_cheese(cheese)
end
