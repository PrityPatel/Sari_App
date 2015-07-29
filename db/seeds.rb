# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Sari.destroy_all

janki_s = User.create(
  name: "Janki",
  email: "janki@janki.com",
  password: "test1",
  password_confirmation: "test1"
  )

js = Sari.create(
  image: "http://sareeblousefashion.com/wp-content/uploads/2011/02/Vidya-Balan-in_Off_Shoulder_Quarter_Sleeves_Saree_Blouse.jpg",
  story: "This is a test story of Vidya Balan in a Sari.",
  owner: "Janki S."
  )

sadhana_k = User.create(
  name: "Sadhana",
  email: "sadhana@sadhana.com",
  password: "test12",
  password_confirmation: "test12",
  )

sk = Sari.create(
  image: "http://cache23.fansshare.com/celebrity/photos/934_preity-zinta-red-hot-saree-if-in-saree-675681834.jpg",
  story: "This is a test image of Preity Zinta in a Sari",
  owner: "Sadhana K."
  )

rupali_p = User.create(
  name: "Rupali",
  email: "rupali@rupali.com",
  password: "test123",
  password_confirmation: "test123"
  )

rp = Sari.create(
  image: "http://cache23.fansshare.com/celebrity/photos/934_preity-zinta-red-hot-saree-if-in-saree-675681834.jpg",
  story: "This is a test image of Preity Zinta in a Sari",
  owner: "Rupali P."
  )


janki_s.saris.push js
sadhana_k.saris.push sk
rupali_p.saris.push rp
