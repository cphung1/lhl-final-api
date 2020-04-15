# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

  Event.create(
    name: "Electric Daisy Carnvial", details: "Commonly known as EDC, is the largest electronic dance music festival in North America. Held at the Las Vegas Motor Speedway. EDC was created with the purpose of utilizing music and art to inspire individuals.", start_date: "Oct 2, 2020", end_date: "Oct 4, 2020", location: "Las Vegas, NV, USA"
  )

  Event.create(
    name: "FVDED In the Park", details: "Western Canada's largest urban music festival promises an edgy, high-caliber lineup and state-of-the-art stages for this annual two day festival. Held at Surrey's Holland Park just outside Vancouver", start_date: "July 10, 2020", end_date: "July 11, 2020", location: "Vancouver, BC, Canada"
  )

  Event.create(
    name: "Shambhala Music Festival", details: "Shambhala is electronic music festival in Canada that have knee-trembling lineups are stacked with awesome artists. Those craving the vibrations of the lower frequencies will have more than enough music to choose from. Shambhala lives by one principle: 'It’s all about the people on the dancefloor.'", start_date: "July 24, 2020", end_date: "July 27, 2020", location: "Salmo, BC, Canada"
  )

  Event.create(
    name: "Tomorrowland", details: "A Belgian electronic dance music festival held in Boom, Belgium. Tomorrowland was first held in 2005. It now stretches over 2 weekends and usually sells out in minutes.", start_date: "July 17, 2020", end_date: "July 26, 2020", location: "Boom, Antwerp, Belgium"
  )

  Event.create(
    name: "Chasing Summer", details: "The largest outdoor EDM event in Western Canada returns to Alberta for this two-day annual electronic fest in August. Take advantage of the last days of summer to party at the Max Bell Centre and dance from sunrise to sundown with this jam-packed lineup.", start_date: "Aug 1, 2020", end_date: "Aug 2, 2020", location: "Calgary, AB, Canada"
  )

  Event.create(
    name: "Ultra Music Festival", details: "Commonly known as UMF, is an annual outdoor electronic music festival that is primarily been held at Bayfront Park in downtown Miami. It was founded in 1999 by Russell Faibisch and Alex Omes and is named after the 1997 Depeche Mode album, Ultra.", start_date: "Mar 26, 2021", end_date: "Mar 28, 2021", location: "Miami, Florida, USA"
  )

  Event.create(
    name: "Electric Zoo", details: "Electric Zoo is an annual electronic music festival held over Labor Day weekend in New York City on Randall's Island. The festival represents all genres of electronic music.", start_date: "Sept 4, 2021", end_date: "Sept 6, 2021", location: "New York, New York, USA"
  )
  
 # User.create(name: "", image: open_asset('.jpg'), description: "", location: "", email: "", password: "", birthdate: "")

  User.create(name: "Adam Baynes", image: "https://unsplash.com/photos/EfMqOhtst7E", description: "I really enjoy trance, dubstep, trap, hardstyle and house music", location: "Vancouver, BC", email: "abaynes@gmail.com", password: "adam", birthdate: "July 2, 1995")

  

  User.create(name: "Miranda Smith", image: "https://www.pexels.com/photo/female-dj-playing-mixing-console-3253688/", description: "I am DJ, so come check me out at the main stage!!!", location: "Seattle, WS", email: "spindoctor@gmail.com", password: "dank", birthdate: "Feb 18, 1992")

  User.create(name: "Amy Williams", image: "https://www.pexels.com/photo/photo-of-woman-wearing-face-mask-2439002/", description: "Basshead for lyffeee :)", location: "San Francisco, CA", email: "dropDat@gmail.com", password: "dropsonly", birthdate: "Mar 21, 1994")

  User.create(name: "Jim James", image: "https://www.pexels.com/photo/50mm-dance-dancing-eletronic-1517291/", description: "Looking for new people to vibe with", location: "Portland, OR", email: "jimbobeans@gmail.com", password: "furhats", birthdate: "April 1, 1997")

  User.create(name: "Jessica Swan", image: "https://66.media.tumblr.com/9598763ce59b83013045d84e68b24834/tumblr_nuzw0tLrzw1sknefuo1_400.jpg", description: "Swipe left if you enjoy lightshows", location: "Victoria, BC", email: "led4gloves@gmailcom", password: "gloving", birthdate: "May 5, 1997")

  User.create(name: "Roxie Clarke", image: "https://www.pexels.com/photo/three-women-standing-on-ground-with-crowd-2513605/" , description: "Good music, good friends, good vibes", location: "Toronto, ON", email: "roxC@gmail.com", password: "vibez", birthdate: "Jun 11, 1991")

  User.create(name: "Kristen Kirby", image: "https://www.pexels.com/photo/woman-with-hula-hoop-2513841/", description: "I love outdoor events", location: "New York, NY", email: "kirby@gmail.com", password: "kirby", birthdate: "Feb 2, 1997")

  # puts "EVENT for single USER"

  UserEvent.create(event_id: 1, user_id: 1)
  UserEvent.create(event_id: 1, user_id: 2)

  UserEvent.create(event_id: 4, user_id: 1)

  # p UserEvent.all()

  #myevent1 = Event.find(1)

  #user1 = User.find(1)
  #user1.events << myevent1
  #user1.save

  #puts "First test" 
  #p user1
  #outputs
  #<User id: 1, name: "Adam Baynes", image: "#<File:0x00000000029ab670>", description: "I really enjoy trance, dubstep, trap, hardstyle an...", location: "Vancouver, BC", email: "abaynes@gmail.com", password: "adam", birthdate: "1995-07-02", created_at: "2020-04-13 21:00:52", updated_at: "2020-04-13 21:00:52">

  #puts "second test"
  #p user1.events
  
  #puts "Whole thing"
  #p UserEvent.all()
  #outputs
  #[#<UserEvent id: 1, created_at: "2020-04-13 21:00:52", updated_at: "2020-04-13 21:00:52", user_id: 1, event_id: 1>]