# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding starting"
Hub.destroy_all
User.destroy_all
Review.destroy_all
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


user1=User.create(name:"esther",email:"esther@gmail.com",password:"1234")
user2=User.create(name:"ayubu",email:"ayubu56@gmail.com",password:"ABCD")


review1=Review.create(hub_id:hub1.id,user_id:user2.id,comment:"Wonderful hub")

puts "seeding ending"
