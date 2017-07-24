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

farmer420 = Farmer.create({
  id: 420,
  farm_name:  'Fred\'s Fancy Fruit',
  email: 'fred@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'Fred',
  last_name: 'Flintstone',
  phone_no: 5555555555,
  website_link: 'http://www.fredsfancyfruit.com',
  image: open_asset('farmer4.jpeg')
})

farmer421 = Farmer.create({
  id: 421,
  farm_name:  'Thames River Melons Ltd.',
  email: 'farmer2@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'Rob',
  last_name: 'Thames',
  phone_no: 5194693636,
  website_link: 'http://www.thamesrivermelons.com/',
  image: open_asset('farmer1.jpeg')
})

farmer422 = Farmer.create({
  id: 422,
  farm_name:  'Staite\'s Honey Enterprise',
  email: 'farmer3@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'Honey',
  last_name: 'Staites',
  phone_no: 9054733401,
  website_link: 'http://www.staites-honey.com',
  image: open_asset('farmer2.jpeg')
})

farmer423 = Farmer.create({
  id: 423,
  farm_name:  'Warner\'s Farm',
  email: 'farmer4@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'Thomas',
  last_name: 'Warner',
  phone_no: 9055625637,
  website_link: 'http://www.warnersfarm.ca/',
  image: open_asset('farmer3.jpeg')
})

farmer424 = Farmer.create({
  id: 424,
  farm_name:  'Sugarbush Hill Maple Farm',
  email: 'farmer5@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'Pauline',
  last_name: 'Maple',
  phone_no: 7057879787,
  website_link: 'http://www.sugarbushhill.com/',
  image: open_asset('farmer3.jpeg')
})

farmer425 = Farmer.create({
  id: 425,
  farm_name:  'Crystal Farm',
  email: 'farmer6@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'John',
  last_name: 'Tatomir',
  phone_no: 5193266272,
  website_link: 'http://tourismleamington.com/m/listing/view/Crystal-Farms-Ltd',
  image: open_asset('farmer3.jpeg')
})

farmer426 = Farmer.create({
  id: 426,
  farm_name:  'Fakest Farm',
  email: 'farmer7@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'fake',
  last_name: 'farmer',
  phone_no: 5555,
  website_link: 'http://www.fakefarmer5.com',
  image: open_asset('farmer3.jpeg')
})

## MARKETS

puts "Creating Markets ..."

market420 = Market.create({
  id: 420,
  name: 'Metro Hall Farmer\'s Market',
  days_open: 'Thursday',
  time_open: '8:00',
  description: Faker::Hipster.paragraph(4),
  address: '55 John Street, ON, Canada',
  city: 'Toronto',
  province: 'Ontario',
  postal_code: 'M5V 3C6',
  website_link: 'http://www.toronto.ca/311/knowledgebase/01/101000050501.html',
  image: open_asset('market1.jpeg')
  })

market421 = Market.create({
  id: 421,
  name: 'Nathan Phillips Square Farmer\'s Market',
  days_open: 'Wednesday',
  time_open: '6:30',
  description: Faker::Hipster.paragraph(4),
  address: '100 Queen Street West, ON, Canada',
  city: 'Toronto',
  province: 'Ontario',
  postal_code: 'M5H 2N2',
  website_link: 'http://www.toronto.ca/311/knowledgebase/01/101000050501.html',
  image: open_asset('market2.jpeg')
  })

market422 = Market.create({
  id: 422,
  name: 'The Farmer\'s Market at SickKids',
  days_open: 'Tuesday',
  time_open: '9:00',
  description: Faker::Hipster.paragraph(4),
  address: '555 University Avenue, ON, Canada',
  city: 'Toronto',
  province: 'Ontario',
  postal_code: 'M5G 1X8',
  website_link: 'http://www.toronto.ca/311/knowledgebase/01/101000050501.html',
  image: open_asset('market3.jpeg')
  })

  market423 = Market.create({
    id: 423,
    name: 'Evergreen Brick Works Farmers’ Market',
    days_open: 'Wednesday',
    time_open: '3:30',
    description: Faker::Hipster.paragraph(4),
    address: '550 Bayview Avenue',
    city: 'Toronto',
    province: 'Ontario',
    postal_code: 'M4W 3X8',
    website_link: 'http://johnstreetmarket.ca/',
    image: open_asset('market3.jpeg')
    })

    market424 = Market.create({
      id: 424,
      name: 'Leslieville Farmers Market',
      days_open: 'Sunday',
      time_open: '9:00',
      description: Faker::Hipster.paragraph(4),
      address: '20 Woodward Avenue, ON, Canada',
      city: 'Toronto',
      province: 'Ontario',
      postal_code: 'M4L 1A7',
      website_link: 'http://www.leslievillemarket.com/',
      image: open_asset('market3.jpeg')
      })


  ## USERS

  puts "Creating Users ..."

  user420 = User.create({
    id: 420,
    first_name: 'Bob',
    last_name: 'Smith',
    email: 'bob@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

  user421 = User.create({
    id: 421,
    first_name: 'Mary',
    last_name: 'Smith',
    email: 'mary@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

  user422 = User.create({
    id: 422,
    first_name: 'Sally',
    last_name: 'Smith',
    email: 'sally@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

    ## PRODUCTS

    puts "Creating Products ..."

    product420 = Product.create({
      id: 420,
      product_name: 'carrots',
      product_type: 'vegetable',
      on_hand: 'true',
      organic: 'true',
      non_gmo: 'false'
      })

    product421 = Product.create({
      id: 421,
      product_name: 'blueberries',
      product_type: 'fruit',
      on_hand: 'false',
      organic: 'true',
      non_gmo: 'false'
      })

    product422 = Product.create({
      id: 422,
      product_name: 'honeys',
      product_type: 'other',
      on_hand: 'true',
      organic: 'false',
      non_gmo: 'true'
      })

      product423 = Product.create({
        id: 423,
        product_name: 'carrots',
        product_type: 'vegetable',
        on_hand: 'true',
        organic: 'true',
        non_gmo: 'true'
        })

      product424 = Product.create({
        id: 424,
        product_name: 'cabbages',
        product_type: 'vegetable',
        on_hand: 'true',
        organic: 'false',
        non_gmo: 'true'
        })

      product425 = Product.create({
        id: 425,
        product_name: 'flowers',
        product_type: 'other',
        on_hand: 'true',
        organic: 'false',
        non_gmo: 'true'
        })

      product426 = Product.create({
        id: 426,
        product_name: 'apples',
        product_type: 'fruit',
        on_hand: 'true',
        organic: 'false',
        non_gmo: 'true'
        })

      puts "Creating Connnections ..."

      frm1 = Farmer.find(420)
      frm2 = Farmer.find(421)
      frm3 = Farmer.find(422)
      frm4 = Farmer.find(423)
      frm5 = Farmer.find(424)
      frm6 = Farmer.find(425)
      frm7 = Farmer.find(426)

      mkt1 = Market.find(420)
      mkt2 = Market.find(421)
      mkt3 = Market.find(422)
      mkt4 = Market.find(423)
      mkt5 = Market.find(424)

      prd1 = Product.find(420)
      prd2 = Product.find(421)
      prd3 = Product.find(422)
      prd4 = Product.find(423)
      prd5 = Product.find(424)
      prd6 = Product.find(425)
      prd7 = Product.find(426)


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
