# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Sari.destroy_all

prity = User.create(
  name: "Prity",
  email: "prity@prity.com",
  password: "prity",
  password_confirmation: "prity"
  )

p1 = Sari.create(
  image: "http://l.yimg.com/jj/image-4d50e6c60fe12-sari7_080211_620.jpg",
  story: "Picture of a red sari",
  owner: "Mom"
  )

p2 = Sari.create(
  image: "https://lh6.googleusercontent.com/-OjE_ZpY-p-Y/TXC3JjhTHcI/AAAAAAAAIZo/mIct0LBGjc8/s1600/hq-genelia-saree-911.jpg",
  story: "Pretty in Pink",
  owner: "Genelia"
  )

tiffany = User.create(
  name: "Tiffany",
  email: "tiffany@tiffany.com",
  password: "tiffany",
  password_confirmation: "tiffany"
  )

t1 = Sari.create(
  image: "https://s-media-cache-ak0.pinimg.com/236x/51/7f/52/517f525306f3febe4c12dca7f1acc672.jpg",
  story: "Sari with Japanese influence",
  owner: "Rachelle"
  )
t2 = Sari.create(
  image: "http://lh4.ggpht.com/_ZrUz79UszOA/TZ1x8-nLIzI/AAAAAAAAA7s/QIi_bq8IjU8/Tarun_Tahiliani_Tan_Saree_thumb%5B1%5D.jpg?imgmax=800
",
  story: "Sari with Chinese embroidery",
  owner: "Tarun"
  )

rachelle = User.create(
  name: "Rachelle",
  email: "rachelle@rachelle.com",
  password: "rachelle",
  password_confirmation: "rachelle"
  )

r1 = Sari.create(
  image: "http://cache2.asset-cache.net/gc/517071525-young-indian-woman-in-desert-village-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=sfjBaqs71C2%2BxNlbYUJGYXX7O%2BZUz0Zw6IQ1i8zm9TWk1%2Fo6VhA%2Bh8g9aXYnhp1Q%2B7ETkUtia1vyR2iztSo6Fw%3D%3D",
  story: " Woman in the Desert",
  owner: "Getty"
  )

r2 = Sari.create(
  image: "http://cache2.asset-cache.net/gc/79532201-smiling-woman-in-traditional-rajasthani-sari-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=acREyNHKzEwbrs6l%2B3kVY85K%2Fw%2B%2Bi0bVgz%2FmqdGP%2FyYhSlxAhrQ8xbk6K0x0V%2BsQ",
  story: " Smiling Rajasthani Woman",
  owner: "Getty"
  )



prity.saris.push p2
tiffany.saris.push t1
rachelle.saris.push r1
tiffany.saris.push t2
rachelle.saris.push r2
prity.saris.push p1

