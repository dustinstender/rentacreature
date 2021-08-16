# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Creature.create!([{name: "marly", 
                        type: "Elfe", 
                        age: 300, 
                        address: "marlyland", 
                        power: "can disapear at any moment and fly", 
                        description: "I am the best creature ever existed in that world and really funny!", 
                        price_per_day: 150.0
                    },
                    {   name: "carole", 
                        type: "unicorn", 
                        age: 900, 
                        address: "caroleland", 
                        power: "m&s's pee and change body color", 
                        description: "I am attractiv and understanble", 
                        price_per_day: 150.5
                    },
                    {   name: "dustin", 
                        type: "dragon", 
                        age: 1000, 
                        address: "dustinland", 
                        power: "can fire_eater and fly", 
                        description: "I am stronger and sinister for every other creature", 
                        price_per_day: 500.0
                    },
                    {   name: "quentin", 
                        type: "burrow fisher", 
                        age: 300, 
                        address: "quentinland", 
                        power: "can eat everybody", 
                        description: "I am little and can speak all languages of the world", 
                        price_per_day: 900.9
                    }])
p "Created #{Creature.count} creatures"
