# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Calls a file that is contained in the same directory, require by itself is used to call external library of code.
# state data is a local file that can be raltively linked. If we called require on state_data it wouldn't work without
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

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

    puts " and will spread across the state in #{months} months.\n\n"

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