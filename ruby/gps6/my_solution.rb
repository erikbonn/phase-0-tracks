# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Calls a file that is contained in the same directory, require by itself is used to call external library of code.
# state data is a local file that can be relatively linked. If we called require on state_data it wouldn't work without
# the absolute file path.

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths

    # condition ? result if condition is true : result if condition is false
  if  @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
  elsif @population_density >= 50
    number_of_deaths = (@population * 0.05).floor
  else
      increment = (@population_density/50).floor
      number_of_deaths = (@population * (increment * 0.1)).floor
      end

  print "#{@state} will lose #{number_of_deaths} people in this outbreak"


    # old original code
    # # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The month is also affected
    # by additional factors we haven't added into this functionality.

     months = 2.5
    if @population_density >= 200
      months = 0.5
    else
      increment = (@population_density/50).floor
      increment.times do
        months -= 0.5
      end
    end

    puts " and will spread across the state in #{months} months.\n\n"

    # if @population_density >= 200
    #   months += 0.5
    # elsif @population_density >= 150
    #   months += 1
    # elsif @population_density >= 100
    #   months += 1.5
    # elsif @population_density >= 50
    #   months += 2
    # else
    #   months += 2.5
    # end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |key, value|
    states = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
states.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The key is using the rocket syntax, whereas the value that contains the second hash uses the symbol syntax.
# from my research, it appears that symbols are more efficient syntax and memory-wise, but you can't change the value of a 
# symbol like you can a string. strings could be identical but they represent two obects, whereas two symbols that are the same are 
# the same in memory and function as one. 

# What does require_relative do? How is it different from require?
# Require_relative calls a file that is contained in the same directory, require by itself is used to call external library of code.
# state_data is a local file that can be relatively linked. If we called require on state_data it wouldn't work without
# the absolute file path.

# What are some ways to iterate through a hash?
# as seen above, you can perform an " .each do " iteration where you provide a key and value parameter, and then upon initializing 
# a new instance, you add in the key and value pair that you want to be accessed (in this case, the key and value, which was another
# hash, so we had to specify which parts we wanted)
# you can also do .each_pair which returns the key value pair (but in a random order).  

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The arguments were @population and @state and such, but we realized that none of that was needed, and that you mearly needed 
# call the two methods without parameters (and delete the parameters on the actual methods themselves), because we already made 
# the instance variables available in our initialize method! 


# What concept did you most solidify in this challenge?
# this challenge solidified the scope of instance variables a little better for me and also improved my knowledge of hashes and 
# iteration of nested data structures. 




