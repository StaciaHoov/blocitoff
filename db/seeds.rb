require 'faker'

5.times do
    user = User.new(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Lorem.characters(10)
    )
    user.skip_confirmation!
    user.save!
end

users = User.all


200.times do
    Item.create!(
        user: users.sample,
        name: Faker::Lorem.sentence(3),
        
        expires_at: Faker::Date.between(14.days.ago, Date.today)
    )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
