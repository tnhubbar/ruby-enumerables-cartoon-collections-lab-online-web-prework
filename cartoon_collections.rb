# ### Method 1 — `roll_call_dwarves`

# ![dwarves](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cartoon-collections/dwarves.jpg)

# This method should accept an array of dwarf names, for instance:

# ```ruby
# ["Doc", "Dopey", "Bashful", "Grumpy"]
# ```

# It should then print out each name, in number order, using `puts`. The print-out
# should look like this:

# > 1.  Doc
# > 2.  Dopey
# > 3.  Bashful
# > 4.  Grumpy

# Look into the [`each_with_index`](http://ruby-doc.org/core/Enumerable.html#method-i-each_with_index) method.

# Once the test for this method is passing, move on to the next method.

# ### Method 2 — `summon_captain_planet`

# ![captain-planet](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cartoon-collections/captain-planet.jpeg)

# This method should accept an array argument of planeteer calls that will look
# like this:

# ```ruby
# planeteer_calls = ["earth", "wind", "fire", "water", "heart"]
# ```

# It should then capitalize each element and add an exclamation point at the end.
# The return value of this method should be an array, in this example:

# ```text
# summon_captain_planet(planeteer_calls)
# #=> ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
# ```

# The `.map` or `.collect` method might be appropriate for this task, take a look
# at it [here][so] and [here][ruby-doc].

# Once the test for this method is passing, move on to the next method, long
# planeteer calls.

# ### Method 3 — `long_planeteer_calls`

# The `long_planeteer_calls` method should accept an array of calls. The method
# should tell us if any of the calls are longer than four characters. For example:

# ```ruby
# short_words = ["puff", "go", "two"]
# long_planeteer_calls(short_words)
# #=> false

# assorted_words = ["two", "go", "industrious", "bop"]
# long_planeteer_calls(assorted_words)
# #=> true
# ```

# Notice the return value of this method is either `true` or `false`, depending on
# the array it was given as an argument.

# Checkout the [Ruby docs on arrays][arrays] for a hint.

# Once the test for this method is passing, move on to the last method.

# ### Method 4 — `find_the_cheese`

# ![dancing-mice](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cartoon-collections/cheese.jpg)

# The `find_the_cheese` method should accept an array of strings. It should then
# look through these strings to find and return the first string that is a type of
# cheese. The types of cheese that appear are `"cheddar"`, `"gouda"`, and
# `"camembert"`.

# For example:

# ```ruby
# snacks = ["crackers", "gouda", "thyme"]
# find_the_cheese(snacks)
# #=> "gouda"

# soup = ["tomato soup", "cheddar", "oyster crackers", "gouda"]
# find_the_cheese(soup)
# #=> "cheddar"
# ```

# If, sadly, a list of ingredients does not include cheese, return `nil`:

# ```ruby
# ingredients = ["garlic", "rosemary", "bread"]
# find_the_cheese(ingredients)
# #=> nil
# ```

# You can assume that all strings will be lowercase. Take a look at the
# [`.include`][include] method for a hint. This method asks you to return a string
# value instead of printing it so keep that in mind.


dwarves = %w[
  Doc
  Dopey
  Bashful
  Grumpy
  Sneezy
  Sleepy
  Happy
]

# Roll call for the next mining shift!
#
# Print out the following list using `puts`:
# 1. Doc
# 2. Dopey
# 3. Bashful
# etc. for all the dwarves
#
# Use the "each_with_index" method:
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-each_with_index
def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    puts "#{index + 1}. #{dwarf}"
  end
end

roll_call_dwarves(dwarves)

# Give the planeteer calls some heart!
#
# The summon_captain_planet method should return a new array of values for each
# of the values in the `planeteer_calls` variable. Each value in the new array
# should be capitalized and have an exclamation point:
#
# earth -> Earth!
#
# Use the "map" method (aka the "collection" method):
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-map

planeteer_calls = %w[earth wind fire water heart]

# Expected return value: ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
def summon_captain_planet(planeteer_calls)
  planeteer_calls.map { |call| call.capitalize + '!' }
end

summon_captain_planet(planeteer_calls)

# The planeteer_calls are supposed to be short, so we want to
# find out if any of our calls have more than 4 characters.
#
# Use the any? method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-any-3F

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? { |call| call.length > 4 }
end

long_planeteer_calls(planeteer_calls)

# Help Monterey Jack find the cheese!

# The "find_the_cheese" method should look through an array of strings
# and find the first string the matches one of the following
# cheese strings: "cheddar", "gouda", or "camembert"
#
# Given an array that looks like: ["shoe", "rope", "gouda"],
# the value "gouda" should be returned by "find_the_cheese".
#
# Given an array that looks like: ["cheddar", "rope", "pie"],
# the value "cheddar" should be returned by "find_the_cheese".
#
# If the array of items contains no cheese, then "find_the_cheese"
# should return nil.

# Assume that all strings will be lower-case.

# Use the find method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-find

potentially_cheesy_items = %w[umbrella spinach cheddar helicopter]

def find_the_cheese(potentially_cheesy_items)
  cheeses = %w[gouda cheddar camembert]

  potentially_cheesy_items.find do |maybe_cheese|
    cheeses.include?(maybe_cheese)
  end
end

find_the_cheese(potentially_cheesy_items)