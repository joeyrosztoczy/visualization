require 'faker'
require 'csv'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

# require 'csv'

# class LunchParser
#   attr_reader :file

#   def initialize(file, year)
#     @file = file
#     @lunch_array = CSV.read(@file,{ :headers => true, :header_converters => :symbol })
#     @lunch_array.each do |values|
#     	# puts values.headers
#       unless values[:sponsor_entityid] == nil
#         Lunch.create!(sponsor_id: values[:sponsor_entityid], sponsor_ctds: values[:sponsor_ctds], sponsor_name: values[:sponsor_name], site_id: values[:site_entityid], site_ctds: values[:site_ctds], site_name: values[:site_name], percentage_eligible: values[:percent_eligible_for_meals], enrollment: values[:total_enrolled_as_of_last_day_in_october], school_year: year)
#       end
#     end
#   end
# end


# puts "WHat UPPP"

# # SHOULD REFACTOR TO BE DYNAMIC

# LunchParser.new("db/2010.csv", 2010)
# LunchParser.new("db/2011.csv", 2011)
# LunchParser.new("db/2012.csv", 2012)
# LunchParser.new("db/2013.csv", 2013)
# LunchParser.new("db/2014.csv", 2014)
