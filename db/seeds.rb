require 'open-uri'
def handle_string_io_as_file(io, filename)
  return io unless io.class == StringIO
  file = Tempfile.new(["temp",".png"], encoding: 'ascii-8bit')
  file.binmode
  file.write io.read
  file.open
end

Booking.destroy_all
Bike.destroy_all
User.destroy_all

cristina = User.create(email: 'cristina@example.com', password: '123456')
mikael = User.create(email: 'mikael@example.com', password: '123456')
joe = User.create(email: 'joe@example.com', password: '123456')

bike = Bike.new(name: "Electric", price: "100 SEK", details: 'Grey electric bike, 2 years old and 28" height. rolls like a Rolls Royce', user_id: cristina.id, address: "södermalm")
file = URI.open('https://cremecycles.com/images/glowne/673.jpg')
bike.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike1.png', content_type: 'image/png')
bike.save


bike_two = Bike.new(name: "Monark 2", price: "39 SEK", details: 'Black womens bike with 3 gears, 5 years old but works fine, 28" height.', user_id: cristina.id, address: "skanstull")
file = URI.open('https://www.monark.se/media/catalog/product/cache/1/image/2000x/040ec09b1e35df139433887a97daa66f/Y/O/YOM933__01/Emma-3-vxl.jpg')
bike_two.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_two.jpg', content_type: 'image/jpg')
bike_two.save


bike_three = Bike.new(name: "Mountain Bike", price: "99 SEK", details: 'Blue mountain bike with 27 gears, only 6 months old!. Perfect for the active person.', user_id: mikael.id, address: "haninge")
file = URI.open('https://www.eksihulared.se/wp-content/uploads/2020/03/MTBcykel.jpg')
bike_three.photo.attach(io: handle_string_io_as_file(file, 'image.jpg'), filename: 'bike_three.jpg', content_type: 'image/jpg')
bike_three.save


bike_four = Bike.new(name: "Kids Bike", price: "19 SEK", details: 'Kids bike with fat back tire for extra stability. Fits perfect if your kid wants to learn how to bicycle.', user_id: cristina.id, address: "lilla essingen")
file = URI.open('https://5.imimg.com/data5/CS/LB/WZ/SELLER-2831486/husky-fat-tyre-bicycle-500x500.jpg')
bike_four.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_four.png', content_type: 'image/png')
bike_four.save


bike_five = Bike.new(name: "Bike5", price: "65 SEK", details: 'Green womens bike with 3 gears, perfect bicycle if you just want to explore the city', user_id: joe.id, address: "djurgården")
file = URI.open('https://www.landshopping.se/bilder/artiklar/zoom/10030_D03F71LAND-53_3.jpg?m=1571313227')
bike_five.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike5.png', content_type: 'image/png')
bike_five.save


bike_six = Bike.new(name: "Cresent", price: "69 SEK", details: 'Mens bike with 21 gears. A perfect allaround bike that fits for everything.', user_id: joe.id, address: "gullmarsplan")
file = URI.open('https://surlybikes.com/uploads/bikes/surly-cross-check-bike-blue-green-gray-BK0925-800x600.jpg')
bike_six.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_six.png', content_type: 'image/png')
bike_six.save


bike_seven = Bike.new(name: "Cresent sport", price: "79 SEK", details: 'Blue Sport bike with 24 gears. If you like watching Tour de France then you will love this bike ;)', user_id: mikael.id, address: "hornstull")
file = URI.open('https://cremecycles.com/images/glowne/14.jpg')
bike_seven.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_seven.png', content_type: 'image/png')
bike_seven.save


bike_eight = Bike.new(name: "CUSTOM", price: "159 SEK", details: 'Does it really need any details? Just look at the picture and you will know you will have an awesome experience, and all eyes on you!', user_id: mikael.id, address: "östermalm")
file = URI.open('https://i.ytimg.com/vi/WFbVx6cd0Ak/maxresdefault.jpg')
bike_eight.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_eight.png', content_type: 'image/png')
bike_eight.save


bike_nine = Bike.new(name: "bike 9", price: "35 SEK", details: 'Just a simple red bike with 3 gears that will do the job for daily purpose.', user_id: joe.id, address: "östermalm")
file = URI.open('https://i.insider.com/5c9cdec26b52652435052114?width=1200&format=jpeg')
bike_nine.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_nine.png', content_type: 'image/png')
bike_nine.save


bike_ten = Bike.new(name: "bike 10", price: "45 SEK", details: 'Brand new mens bike with 7 gears. Nothing special about it just a bike that works to perfection.', user_id: mikael.id, address: "kungsholmen")
file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTPDtXA2s-qdyoeniCYnYRIuRPMd8uJTwS3g&usqp=CAU')
bike_ten.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_ten.png', content_type: 'image/png')
bike_ten.save


bike_eleven = Bike.new(name: "Electric bike", price: "119 SEK", details: 'Electric fat bike! Perfect for a chill bike ride when you just wanna relax and explore!', user_id: cristina.id, address: "solna")
file = URI.open('https://www.hepcat.se/pub_images/original/Michael-Blast-Ebike---Flashback-Fat-Tire-Electric-Bike-123.jpg')
bike_eleven.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_eleven.png', content_type: 'image/png')
bike_eleven.save


bike_twelve = Bike.new(name: "Bike for 2!", price: "169 SEK", details: 'Brand new bike for 2 with 21 gears! Lots of fun with two persons on 1 bike. If you sit in the back just relax ;)', user_id: mikael.id, address: "gamla stan")
file = URI.open('https://www.cykellagret.se/productfiles/images/2/2535ba0e-654b-4ab1-a74d-aa5c73adc26e_large.jpg')
bike_twelve.photo.attach(io: handle_string_io_as_file(file, 'image.png'), filename: 'bike_twelve.png', content_type: 'image/png')
bike_twelve.save












