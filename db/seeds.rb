# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gym.destroy_all
GymMember.destroy_all
Member.destroy_all
g = [] #gyms
g[0] = Gym.create(name: "Retro Fitness",city: "Philadelphia")
g[1] = Gym.create(name: "Golds Gym",city: "Alexandria")
g[2] = Gym.create(name: "LA fitness",city: "DC")

m = []#members
m[0] = Member.create(first_name: "Steve", last_name: "P")
m[1] = Member.create(first_name: "Zara", last_name: "A")
m[2] = Member.create(first_name: "Mike", last_name: "C")

gym_mem = []#gym members
i = 0
while i < 3
  shuffled = m.shuffle
  gym_mem[0] = GymMember.create()
  gym_mem[1] = GymMember.create()
  [0,1].each do |j|
    gym_mem[j].gym = g[i]
    gym_mem[j].member = shuffled[j]
    gym_mem[j].save
  end
  i += 1
end