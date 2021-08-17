
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
power = ['good-luck', 'flying', 'dark-power', 'magic']
Creature.create!([{name: "marly", 
                        type: "Elfe", 
                        age: 300, 
                        address: "12 Rue de Lourmel, 75015 Paris", 
                        power: power.sample, 
                        description: "I am the best creature ever existed in that world and really funny!", 
                        price_per_day: 150.0
                    },
                    {   name: "carole", 
                        type: "unicorn", 
                        age: 900, 
                        address: "10 Rue Sextius Michel, 75015 Paris", 
                        power: power.sample,
                        description: "I am attractiv and understanble", 
                        price_per_day: 150.5
                    },
                    {   name: "dustin", 
                        type: "dragon", 
                        age: 1000, 
                        address: "15 St Ambroise, 75011 Paris", 
                        power: power.sample,
                        description: "I am stronger and sinister for every other creature", 
                        price_per_day: 500.0
                    },
                    {   name: "quentin", 
                        type: "burrow fisher", 
                        age: 300, 
                        address: "14 Rue Saint-Ambroise,75011 Paris", 
                        power: power.sample,
                        description: "I am little and can speak all languages of the world", 
                        price_per_day: 900.9
                    }])

Creature.create({ name: 'Thomas',
                  type: 'dragon',
                  age: 45,
                  address: '6 rue du dragon,75006 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 49 })
Creature.create({ name: 'Lea',
                  type: 'dragon',
                  age: 32,
                  address: '33 Av. Secrétan, 75019 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 35 })
Creature.create({ name: 'Elio',
                  type: 'dragon',
                  age: 356,
                  address: '32 rue dagorno,75012 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 23 })
Creature.create({ name: 'Winston',
                  type: 'dragon',
                  age: 85,
                  address: '25 rue du dragon,75006 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 154 })
Creature.create({ name: 'Eva',
                  type: 'elf',
                  age: 593,
                  address: '15 Rue Montmartre, 75001 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 95 })
Creature.create({ name: 'Megan',
                  type: 'elf',
                  age: 54,
                  address: '77 Rue de Varenne, 75007 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 76 })
Creature.create({ name: 'Karen',
                  type: 'elf',
                  age: 98,
                  address: '17 Rue Crozatier, 75012 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 30 })
Creature.create({ name: 'David',
                  type: 'elf',
                  age: 100,
                  address: '334 Rue des Pyrénées, 75020 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 84 })
Creature.create({ name: 'Wilfrid',
                  type: 'wizard',
                  age: 76,
                  address: '15 Rue Lepic, 75018 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 60 })
Creature.create({ name: 'Tony',
                  type: 'wizard',
                  age: 46,
                  address: '8 Av. Dutuit, 75008 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 10 })
Creature.create({ name: 'Edmund',
                  type: 'wizard',
                  age: 32,
                  address: '79 Av. Bosquet, 75007 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 203 })
Creature.create({ name: 'Amelia',
                  type: 'demon',
                  age: 90,
                  address: '24 bis Rue de Saint-Pétersbourg, 75008 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 198 })
Creature.create({ name: 'Tom',
                  type: 'demon',
                  age: 666,
                  address: '67 Av. de la Bourdonnais, 75007 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 57 })
Creature.create({ name: 'Sasha',
                  type: 'demon',
                  age: 66,
                  address: '54 Av. Mozart, 75016 Paris',
                  power: power.sample,
                  description: "Hi I'm a super friendly creature and i'd be more than happy for spend time with you",
                  price_per_day: 28 })