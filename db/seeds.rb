require 'open-uri'

puts "Emptying DB"
Booking.destroy_all
User.destroy_all
Creature.destroy_all

puts "creating users..."
owner = User.create!(name: 'David', description: "Hi I'm an owner", email: "owner@gmail.com", password: "123456")
customer = User.create!(name:'Lea', description:"Hi I'm an customer", email:"customer@gmail.com", password: "123456")

puts "Creating creature..."
#file = URI.open('')
#article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

power = ['good-luck', 'flying', 'dark-power', 'magic']
Creature.create!([{ name: "Marly",
                    species: "elf",
                    age: 300,
                    address: "12 Rue de Lourmel, 75015 Paris",
                    power: power.sample,
                    rating: 4,
                    profile_pic: 'https://res.cloudinary.com/creaturespic/image/upload/v1629284940/1FJaJCF_ovwqdi.png',
                    description: "I am the best creature ever existed in that world and really funny!",
                    price_per_day: 150.0,
                    user: owner },
                  { name: "Carole",
                    species: "unicorn",
                    age: 900,
                    address: "10 Rue Sextius Michel, 75015 Paris",
                    power: power.sample,
                    rating: 3,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629289336/unicorn-day-e1523293823642_nimztt.jpg",
                    description: "I am attractiv and understanble",
                    price_per_day: 150.5,
                    user: owner },
                  { name: "Dustin",
                    species: "dragon",
                    age: 1000,
                    address: "15 St Ambroise, 75011 Paris",
                    power: power.sample,
                    rating: 2,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629289709/deh94rs-e0a264b6-bdd4-446e-97eb-a825c5744d3c.jpg_lxul68.jpg",
                    description: "I am stronger and sinister for every other creature",
                    price_per_day: 500.0,
                    user: owner },
                  { name: "Quentin",
                    species: "burrow fisher",
                    age: 300,
                    address: "14 Rue Saint-Ambroise,75011 Paris",
                    power: power.sample,
                    rating: 1,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629284696/257-2579707_dead-space-creatures-hd-png-download_ybunfv.png",
                    description: "I am little and can speak all languages of the world",
                    price_per_day: 900.9,
                    user: owner },
                  { name: 'Thomas',
                    species: 'dragon',
                    age: 45,
                    address: '6 rue du dragon,75006 Paris',
                    power: power.sample,
                    rating: 5,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629289769/f0ae80ef9bdbcec792a9cc119526f04a_h0fpxy.png",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 36,
                    user: owner },
                  { name: 'Lea',
                    species: 'dragon',
                    age: 32,
                    address: '33 Av. Secrétan, 75019 Paris',
                    power: power.sample,
                    rating: 4,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629289728/hearthstonedragon_kdnoql.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 35,
                    user: owner },
                  { name: 'Elio',
                    species: 'dragon',
                    age: 356,
                    address: '32 rue dagorno,75012 Paris',
                    power: power.sample,
                    rating: 3,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629289692/81MVSRJtimL._AC_SL1500__er0el5.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 23,
                    user: owner },
                  { name: 'Winston',
                    species: 'dragon',
                    age: 85,
                    address: '25 rue du dragon,75006 Paris',
                    power: power.sample,
                    rating: 2,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629289748/cddce8a733ecc19142d0462145b219f0ce-24-got-dragons-2.rsquare.w700_x7uptu.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 154,
                    user: owner },
                  { name: 'Eva',
                    species: 'elf',
                    age: 593,
                    address: '15 Rue Montmartre, 75001 Paris',
                    power: power.sample,
                    rating: 1,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629284925/dark_elf_v1_v2_01.jpgB4284D90-C97C-478A-838C-FDEA10C5A918Large_azemmu.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 95,
                    user: owner },
                  { name: 'Megan',
                    species: 'elf',
                    age: 54,
                    address: '77 Rue de Varenne, 75007 Paris',
                    power: power.sample,
                    rating: 5,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629284713/226-2269068_fairy-pixie-elf-magic-fantasy-creature-character-mythical_faeuda.png",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 76,
                    user: owner },
                  { name: 'Karen',
                    species: 'elf',
                    age: 98,
                    address: '17 Rue Crozatier, 75012 Paris',
                    power: power.sample,
                    rating: 4,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629284746/377-3779811_creature-free-png-image-creature-png-transparent-png_wnbrxy.png",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 30,
                    user: owner },
                  { name: 'David',
                    species: 'elf',
                    age: 100,
                    address: '334 Rue des Pyrénées, 75020 Paris',
                    power: power.sample,
                    rating: 3,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629290882/magic-forest-creature-Favim.com-7131513_w1blw3.png",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 84,
                    user: owner },
                  { name: 'Wilfrid',
                    species: 'wizard',
                    age: 76,
                    address: '15 Rue Lepic, 75018 Paris',
                    power: power.sample,
                    rating: 2,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629284582/98-983175_shadow-creature-png-transparent-png_ou8dg2.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 60,
                    user: owner },
                  { name: 'Tony',
                    species: 'wizard',
                    age: 46,
                    address: '8 Av. Dutuit, 75008 Paris',
                    power: power.sample,
                    rating: 1,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629284391/36-369504_fantasy-creatures-png_pyhlvv.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 10,
                    user: owner },
                  { name: 'Edmund',
                    species: 'wizard',
                    age: 32,
                    address: '79 Av. Bosquet, 75007 Paris',
                    power: power.sample,
                    rating: 5,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629284582/98-983175_shadow-creature-png-transparent-png_ou8dg2.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 203,
                    user: owner },
                  { name: 'Amelia',
                    species: 'demon',
                    age: 90,
                    address: '24 bis Rue de Saint-Pétersbourg, 75008 Paris',
                    power: power.sample,
                    rating: 4,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629291020/6a9fc2df536d7eccb082cca5046a7ca082b792d7_lhhw3z.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 198,
                    user: owner },
                  { name: 'Tom',
                    species: 'demon',
                    age: 666,
                    address: '67 Av. de la Bourdonnais, 75007 Paris',
                    power: power.sample,
                    rating: 3,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629291043/constantine-sekeris-img-1731_ztqght.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 57,
                    user: owner },
                  { name: 'Sasha',
                    species: 'demon',
                    age: 66,
                    address: '54 Av. Mozart, 75016 Paris',
                    power: power.sample,
                    rating: 2,
                    profile_pic: "https://res.cloudinary.com/creaturespic/image/upload/v1629284911/e87fc01ae8e1e065b5a819b36c6d2e10_gvbf3i.jpg",
                    description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                    price_per_day: 28,
                    user: owner }])

Booking.create!({   start_date: '03/09/2021',
                    end_date: '06/09/2021',
                    price: 85.99,
                    user: customer,
                    creature: Creature.first })
