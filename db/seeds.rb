# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Event.create(
    name: "Electric Daisy Carnvial 2020", details: "Commonly known as EDC, is the largest electronic dance music festival in North America. Held at the Las Vegas Motor Speedway. EDC was created with the purpose of utilizing music and art to inspire individuals.", start_date: "Oct 2, 2020", end_date: "Oct 4, 2020", location: "Las Vegas, NV"
  )