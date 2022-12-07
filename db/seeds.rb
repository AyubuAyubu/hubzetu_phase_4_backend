
puts "Seeding starting"
#create users
User.destroy_all
user1=User.create(name:"esther",email:"esther@gmail.com",password:"1234")
user2=User.create(name:"ayubu",email:"ayubu56@gmail.com",password:"ABCD")

#create hubs
Hub.destroy_all
hub1=Hub.create(
  name:"BEI HUB",
  image:"https://i.ibb.co/MCXZj3R/bei-hub.jpg",
  location:"TUM",
  website_url:"https://www.beihub.co.ke/",
  description:"To provide a state of the art platform for Social Innovation in the Blue Economy, using Human Centered Design Principles and Triple Helix Approach.
",
founder:"Dr.Mathew M. Egessa"
)
hub2=Hub.create(
  name:"SWAHILIPOT",
  image:"https://i.ibb.co/gR0QgYX/swahilipot.jpg",
  location:"Mombasa Governor Office",
  website_url:"https://www.swahilipothub.co.ke/",
  description:"Swahilipot Hub Foundation was started in 2016 with the aim of becoming a global pacesetter in stimulating and reinvesting positive growth by creating an appropriate environment for youth on the Kenyan coast to build sustainable solutions of the highest calibre around challenges in the community",
  founder:"Mahmoud Noor"
)

#create reviews
Review.destroy_all
review1=Review.create(hub_id:hub1.id,user_id:user2.id,comment:"Help me to network")

puts "seeding ending"
