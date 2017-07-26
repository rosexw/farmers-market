# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end


## PRODUCTS

puts "Re-creating Farmers ..."

# Farmer.destroy_all

farmer300 = Farmer.create({
  id: 300,
  farm_name:  'Harmony Meadows Alpacas',
  email: 'info@harmonymeadowsalpaca.ca',
  password_digest: BCrypt::Password.create('easy'),
  description: 'We are delighted to be able to share with others the fun of working with these animals; it provides great stress relief at the end of a busy day! Throughout the year, we will be holding official farm open houses for the public, but be sure to let us know if you would like to pop by to see the animals and the luxurious fibre they produce.',
  first_name: 'Kristi',
  last_name: 'Mercier',
  phone_no: 5198415055,
  website_link: 'http://http://www.harmonymeadowsalpaca.ca/',
  image: open_asset('alpaca.jpeg')
})

farmer301 = Farmer.create({
  id: 301,
  farm_name:  'Thames River Melons Ltd.',
  email: 'farmer2@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: 'Thames River Melons is a family owned and operated fruit and vegetable farm located just outside of Innerkip, Ontario. With the help of friends, neighbours, and our community, we grow, harvest, and sell a wide variety of produce.',
  first_name: 'Rob',
  last_name: 'Thames',
  phone_no: 5194693636,
  website_link: 'http://www.thamesrivermelons.com/',
  image: open_asset('ChesneyFamily.jpg')
})

farmer302 = Farmer.create({
  id: 302,
  farm_name:  'Staite\'s Honey Enterprise',
  email: 'farmer3@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: 'Staite\'s Honey Enterprise is a family owned and operated business serving the Toronto, Markham, York and Durham area. By choosing our honey, you are getting an environmental friendly, natural local product direct from the hive to your home, and supporting Canadian Farmers!',
  first_name: 'Honey',
  last_name: 'Staites',
  phone_no: 9054733401,
  website_link: 'http://www.staites-honey.com',
  image: open_asset('staites-honey.png')
})

farmer303 = Farmer.create({
  id: 303,
  farm_name:  'Warner\'s Farm',
  email: 'farmer4@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: 'From Beamsville, Ontario\'s near St. Catherines region, this farm offers up a wide array of fruit, such as, apples, peaches, pears, plums, apricots, cherries, nectarines, berries, and grapes. Dried apple, apple cider and apple cider vinegar are also made with their own apples.',
  first_name: 'Thomas',
  last_name: 'Warner',
  phone_no: 9055625637,
  website_link: 'http://www.warnersfarm.ca/',
  image: open_asset('farmer4.jpeg')
})

farmer304 = Farmer.create({
  id: 304,
  farm_name:  'Sugarbush Hill Maple Farm',
  email: 'farmer5@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: 'Sugarbush Hill is a “State of the Art” sugaring operation in the heart of Muskoka, district of countless lakes and endless forests. Situated just 10 minutes south of the picturesque Town of Huntsville, gateway to Algonquin Park and home of the 2010 G8 Summit. Sugarbush Hill is family owned and operated by Tom Stehr, family and friends.',
  first_name: 'Pauline',
  last_name: 'Maple',
  phone_no: 7057879787,
  website_link: 'http://www.sugarbushhill.com/',
  image: open_asset('sugarbush.jpg')
})

farmer305 = Farmer.create({
  id: 305,
  farm_name:  'Crystal Farm',
  email: 'farmer6@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: 'We believe in doing things better. When you choose Crystal Farms you\'re choosing delicious foods of the very highest quality for yourself and your family.',
  first_name: 'John',
  last_name: 'Tatomir',
  phone_no: 5193266272,
  website_link: 'https://www.crystalfarms.com/',
  image: open_asset('farmer2.jpeg')
})

farmer306 = Farmer.create({
  id: 306,
  farm_name:  'The Cutting Veg',
  email: 'farmer7@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: 'Cultivating personal, social, environmental, and economic health through organic agriculture.',
  first_name: 'Daniel',
  last_name: 'Hoffman',
  phone_no: 6473887444,
  website_link: 'http://www.thecuttingveg.com/',
  image: open_asset('Daniel.jpg')
})

## MARKETS

puts "Creating Markets ..."

market300 = Market.create({
  id: 300,
  name: 'Metro Hall Farmer\'s Market',
  days_open: 'Thursday',
  time_open: '8:00',
  description: 'The Metro Hall Farmers\' Market showcases the best that Ontario grows. From apples to zucchinis with everything in between. Gorgeous flowers, amazing cheeses, local honey as well as fruits and vegetables can be found every Thursday from the end of May to the middle of October.',
  address: '55 John Street, ON, Canada',
  website_link: 'http://www.toronto.ca/311/knowledgebase/01/101000050501.html',
  image: open_asset('market1.jpeg')
  })

market301 = Market.create({
  id: 301,
  name: 'Nathan Phillips Square Farmer\'s Market',
  days_open: 'Wednesday',
  time_open: '6:30',
  description: 'The Nathan Phillips Square Farmers\' Market is located predominantly on the North and East side of the square. This market begins annually in June and lasts until mid October, running every Wednesday, between 8am-3pm. A popular market for office workers, condo dwellers, and tourists coming to see bands play at the stage, especially during Fresh Wednesdays where food vendors are slated to share the market\'s venue on the square.',
  address: '100 Queen Street West, ON, Canada',
  website_link: 'http://www.toronto.ca/311/knowledgebase/01/101000050501.html',
  image: open_asset('market2.jpeg')
  })

market302 = Market.create({
  id: 302,
  name: 'The Farmer\'s Market at SickKids',
  days_open: 'Tuesday',
  time_open: '9:00',
  description: 'Check out the Farmers\' Market every Tuesday.  Local fruits and vegetables, herbs, honey, cheese, pies, potatoes and soap are all on sale.',
  address: '555 University Avenue, ON, Canada',
  website_link: 'http://www.sickkids.ca/eventlistings/2012/farmers-market-summer2012.html',
  image: open_asset('market3.jpeg')
  })

market303 = Market.create({
  id: 303,
  name: 'Evergreen Brick Works Farmers’ Market',
  days_open: 'Wednesday',
  time_open: '3:30',
  description: 'Our goal is simple: To work with our community to help people make healthier food choices. In doing this we will create a food system that is ecologically and economically sustainable.',
  address: '550 Bayview Avenue',
  website_link: 'http://johnstreetmarket.ca/',
  image: open_asset('market3.jpeg')
  })

market304 = Market.create({
  id: 304,
  name: 'Leslieville Farmers Market',
  days_open: 'Sunday',
  time_open: '9:00',
  description: 'By fostering engagement and relationship among marketgoers and local environmentally responsible food producers, Leslieville Farmers’ Market increases access to and awareness of local and seasonal food.',
  address: '20 Woodward Avenue, ON, Canada',
  website_link: 'http://www.leslievillemarket.com/',
  image: open_asset('market3.jpeg')
  })


  ## USERS

  puts "Creating Users ..."

  user300 = User.create({
    id: 300,
    first_name: 'Bob',
    last_name: 'Smith',
    email: 'bob@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

  user301 = User.create({
    id: 301,
    first_name: 'Mary',
    last_name: 'Smith',
    email: 'mary@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

  user302 = User.create({
    id: 302,
    first_name: 'Sally',
    last_name: 'Smith',
    email: 'sally@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

    ## PRODUCTS

    puts "Creating Products ..."

    product300 = Product.create({
      id: 300,
      product_name: 'carrots',
      product_type: 'vegetable',
      organic: 'true',
      non_gmo: 'false'
      })

    product301 = Product.create({
      id: 301,
      product_name: 'blueberries',
      product_type: 'fruit',
      organic: 'true',
      non_gmo: 'false'
      })

    product302 = Product.create({
      id: 302,
      product_name: 'cupcakes',
      product_type: 'other',
      organic: 'false',
      non_gmo: 'true'
      })

      product303 = Product.create({
        id: 303,
        product_name: 'carrots',
        product_type: 'vegetable',
        organic: 'true',
        non_gmo: 'true'
        })

      product304 = Product.create({
        id: 304,
        product_name: 'cabbages',
        product_type: 'vegetable',
        organic: 'false',
        non_gmo: 'true'
        })

      product305 = Product.create({
        id: 305,
        product_name: 'flowers',
        product_type: 'other',
        organic: 'false',
        non_gmo: 'true'
        })

      product306 = Product.create({
        id: 306,
        product_name: 'apples',
        product_type: 'fruit',
        organic: 'false',
        non_gmo: 'true'
        })

      puts "Creating Connnections ..."

      frm1 = Farmer.find(300)
      frm2 = Farmer.find(301)
      frm3 = Farmer.find(302)
      frm4 = Farmer.find(303)
      frm5 = Farmer.find(304)
      frm6 = Farmer.find(305)
      frm7 = Farmer.find(306)

      mkt1 = Market.find(300)
      mkt2 = Market.find(301)
      mkt3 = Market.find(302)
      mkt4 = Market.find(303)
      mkt5 = Market.find(304)

      prd1 = Product.find(300)
      prd2 = Product.find(301)
      prd3 = Product.find(302)
      prd4 = Product.find(303)
      prd5 = Product.find(304)
      prd6 = Product.find(305)
      prd7 = Product.find(306)

      usr1 = User.find(300)
      usr2 = User.find(301)
      usr3 = User.find(302)

      puts "Creating Farmer/Market bridge table"
      ## FARMER-MARKET
      fm1 = FarmerMarket.create!({
        market_id: mkt3.id,
        farmer_id: frm2.id
        })

      fm2 = FarmerMarket.create!({
        market_id: mkt2.id,
        farmer_id: frm1.id
        })

      fm3 = FarmerMarket.create!({
        market_id: mkt1.id,
        farmer_id: frm3.id
        })

      fm4 = FarmerMarket.create!({
        market_id: mkt2.id,
        farmer_id: frm4.id
        })

      fm5 = FarmerMarket.create!({
        market_id: mkt4.id,
        farmer_id: frm4.id
        })

      fm6 = FarmerMarket.create!({
        market_id: mkt5.id,
        farmer_id: frm2.id
        })

      fm7 = FarmerMarket.create!({
        market_id: mkt1.id,
        farmer_id: frm1.id
        })

      fm8 = FarmerMarket.create!({
        market_id: mkt3.id,
        farmer_id: frm6.id
        })

      fm9 = FarmerMarket.create!({
        market_id: mkt2.id,
        farmer_id: frm7.id
        })

      fm10 = FarmerMarket.create!({
        market_id: mkt5.id,
        farmer_id: frm3.id
        })

      fm11 = FarmerMarket.create!({
        market_id: mkt2.id,
        farmer_id: frm5.id
        })

      fm12 = FarmerMarket.create!({
        market_id: mkt3.id,
        farmer_id: frm4.id
        })

      fm13 = FarmerMarket.create!({
        market_id: mkt5.id,
        farmer_id: frm7.id
        })

      fm14 = FarmerMarket.create!({
        market_id: mkt1.id,
        farmer_id: frm7.id
        })

      puts "Creating Farmer/Product bridge table"
      ## FARMER-PRODUCT
      fp1 = FarmersProduct.create!({
        farmer_id: frm2.id,
        product_id: prd2.id
        })

      fp2 = FarmersProduct.create!({
        farmer_id: frm1.id,
        product_id: prd1.id
        })

      fp3 = FarmersProduct.create!({
        farmer_id: frm2.id,
        product_id: prd3.id
        })

      fp4 = FarmersProduct.create!({
        farmer_id: frm3.id,
        product_id: prd4.id
        })

      fp5 = FarmersProduct.create!({
        farmer_id: frm2.id,
        product_id: prd4.id
        })

      fp6 = FarmersProduct.create!({
        farmer_id: frm4.id,
        product_id: prd4.id
        })

      fp7 = FarmersProduct.create!({
        farmer_id: frm5.id,
        product_id: prd4.id
        })

      fp8 = FarmersProduct.create!({
        farmer_id: frm7.id,
        product_id: prd5.id
        })

      fp9 = FarmersProduct.create!({
        farmer_id: frm6.id,
        product_id: prd6.id
        })

      fp10 = FarmersProduct.create!({
        farmer_id: frm4.id,
        product_id: prd2.id
        })

      fp11 = FarmersProduct.create!({
        farmer_id: frm5.id,
        product_id: prd1.id
        })

      fp12 = FarmersProduct.create!({
        farmer_id: frm6.id,
        product_id: prd3.id
        })

      fp13 = FarmersProduct.create!({
        farmer_id: frm7.id,
        product_id: prd4.id
        })

      fp14 = FarmersProduct.create!({
        farmer_id: frm3.id,
        product_id: prd7.id
        })

      fp15 = FarmersProduct.create!({
        farmer_id: frm5.id,
        product_id: prd7.id
        })

      fp16 = FarmersProduct.create!({
        farmer_id: frm5.id,
        product_id: prd2.id
        })

      fp17 = FarmersProduct.create!({
        farmer_id: frm7.id,
        product_id: prd6.id
        })

      fp18 = FarmersProduct.create!({
        farmer_id: frm1.id,
        product_id: prd6.id
        })

      puts "DONE!"
