# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { name: 'Test_User_01', date_of_birth:"00-00-60", phone_number: "030346677", email: "test_user01@fakeemail.com",
    address: "21 Nowhere Road, Fake City, La Faux County, Fakeaf", password: "password" },
    
  { name: 'Test_User_02', date_of_birth:"00-00-70", phone_number: "030979043", email: "test_user02@fakeemail.com",
    address: "171 Doesn't Exist Avenue, Fake City, La Faux County, Fakeaf", password: "password" }
])