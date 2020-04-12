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

  Event.create(
    name: "FVDED In the Park", details: "Western Canada's largest urban music festival promises an edgy, high-caliber lineup and state-of-the-art stages for this annual two day festival. Held at Surrey's Holland Park just outside Vancouver", start_date: "July 10, 2020", end_date: "July 11, 2020", location: "Vancouver, BC"
  )