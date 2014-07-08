require 'faker'
require 'csv'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

require 'csv'

class LunchParser
  attr_reader :file

  def initialize(file)
    @file = file
    @lunch_array = CSV.read(@file,{ :headers => true, :header_converters => :symbol })
    @lunch_array.each do |values|
    	unless values[:Sponsor_EntityID] == nil
      Lunch.create!(sponsor_id: values[:Sponsor_EntityID], sponsor_ctds: values[:Sponsor_CTDS], sponsor_name: values[:Sponsor_Name], site_id: values[:Site_EntityID], site_ctds: values[:Site_CTDS], site_name: values[:Site_Name], percentage_eligible: values[:Percent_Eligible_for_Meals], enrollment: values[:Total_Enrolled_as_of_Last_Day_in_October])
   	 end
    end
  end
end

LunchParser.new("db/2010.csv")
LunchParser.new("db/2011.csv")
LunchParser.new("db/2012.csv")
LunchParser.new("db/2013.csv")
LunchParser.new("db/2014.csv")