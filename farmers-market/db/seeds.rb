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

farmer1 = Farmer.create({
  id: 1,
  farm_name:  'Fred\'s Fancy Fruit',
  email: 'fred@farms.com',
  description: Faker::Hipster.paragraph(4),
  first_name: 'Fred',
  last_name: 'Flintstone',
  phone_no: 555555555,
  website_link: 'http://www.fredsfancyfruit.com',
  image: open_asset('farmer4.jpeg')
})

farmer2 = Farmer.create({
  id: 2,
  farm_name:  'Thames River Melons Ltd.',
  email: 'farmer2@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'fake',
  last_name: 'farmer-5194693636',
  phone_no: 5534,
  website_link: 'http://www.fakefarmer.com',
  image: open_asset('farmer1.jpeg')
})

farmer3 = Farmer.create({
  id: 3,
  farm_name:  'Staite\'s Honey Enterprise',
  email: 'farmer3@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'fake',
  last_name: 'name-9054733401',
  phone_no: 2363,
  website_link: 'http://www.staites-honey.com',
  image: open_asset('farmer2.jpeg')
})

farmer4 = Farmer.create({
  id: 4,
  farm_name:  'Warner\'s Farm',
  email: 'farmer4@farms.com',
  password_digest: BCrypt::Password.create('easy'),
  description: Faker::Hipster.paragraph(4),
  first_name: 'fake',
  last_name: 'farmer',
  phone_no: 5555,
  website_link: 'http://www.fakefarmer2.com',
  image: open_asset('farmer3.jpeg')
})

## MARKETS

puts "Creating Markets ..."

market1 = Market.create({
  id: 1,
  name: 'Metro Hall Farmer\'s Market',
  days_open: 'Thursday',
  time_open: '8:00',
  description: Faker::Hipster.paragraph(4),
  address: '55 John Street',
  city: 'Toronto',
  province: 'Ontario',
  postal_code: 'M5V 3C6',
  lat: '43.64634718911435',
  long: '-79.38721776008606',
  website_link: 'http://www.toronto.ca/311/knowledgebase/01/101000050501.html',
  image: open_asset('market1.jpeg')
  })

market2 = Market.create({
  id: 2,
  name: 'Nathan Phillips Square Farmer\'s Market',
  days_open: 'Wednesday',
  time_open: '6:30',
  description: Faker::Hipster.paragraph(4),
  address: '100 Queen Street West',
  city: 'Toronto',
  province: 'Ontario',
  postal_code: 'M5H 2N2',
  lat: '43.65175812834499',
  long: '-79.38521146774292',
  website_link: 'http://www.toronto.ca/311/knowledgebase/01/101000050501.html',
  image: open_asset('market2.jpeg')
  })

market3 = Market.create({
  id: 3,
  name: 'The Farmer\'s Market at SickKids',
  days_open: 'Tuesday',
  time_open: '9:00',
  description: Faker::Hipster.paragraph(4),
  address: '555 University Avenue',
  city: 'Toronto',
  province: 'Ontario',
  postal_code: 'M5G 1X8',
  lat: '43.65730635785469',
  long: '-79.38742697238922',
  website_link: 'http://www.toronto.ca/311/knowledgebase/01/101000050501.html',
  image: open_asset('market3.jpeg')
  })

  ## USERS

  puts "Creating Users ..."

  user1 = User.create({
    id: 1,
    first_name: 'Bob',
    last_name: 'Smith',
    email: 'bob@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

  user2 = User.create({
    id: 2,
    first_name: 'Mary',
    last_name: 'Smith',
    email: 'mary@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

  user3 = User.create({
    id: 3,
    first_name: 'Sally',
    last_name: 'Smith',
    email: 'sally@gmail.com',
    password_digest: BCrypt::Password.create('easy')
    })

    ## PRODUCTS

    puts "Creating Products ..."

    product1 = Product.create({
      id: 1,
      product_name: 'carrot',
      product_type: 'vegetable',
      on_hand: 'true',
      organic: 'true',
      non_gmo: 'false'
      })

    product2 = Product.create({
      id: 2,
      product_name: 'blueberries',
      product_type: 'fruit',
      on_hand: 'false',
      organic: 'true',
      non_gmo: 'false'
      })

    product3 = Product.create({
      id: 3,
      product_name: 'honey',
      product_type: 'other',
      on_hand: 'true',
      organic: 'false',
      non_gmo: 'true'
      })

      frm1 = Farmer.find(1)
      frm2 = Farmer.find(2)
      frm3 = Farmer.find(3)
      frm4 = Farmer.find(4)

      mkt1 = Market.find(1)
      mkt2 = Market.find(2)
      mkt3 = Market.find(3)

      prd1 = Product.find(1)
      prd2 = Product.find(2)
      prd3 = Product.find(3)


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

      puts "Creating Farmer/Product bridge table"
      ## FARMER-PRODUCT
      fp1 = FarmerProduct.create!({
        farmer_id: frm4.id,
        product_id: prd2.id
        })

      fp2 = FarmerProduct.create!({
        farmer_id: frm1.id,
        product_id: prd1.id
        })

      fp3 = FarmerProduct.create!({
        farmer_id: frm2.id,
        product_id: prd3.id
        })

      puts "DONE!"
