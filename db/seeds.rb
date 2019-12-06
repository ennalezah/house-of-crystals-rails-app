# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  { name: 'Amethyst', description: 'Helps ward off negative influences and protect from environmental stress. Calms the nervous system and brain, easing headaches and migraines.', color: 'Purple', price: 12.99 },
  { name: 'Rose Quartz', description: 'Eases emotional stress, anxiety, or fear. Encourages and awakens an appreciation of beauty. Also believed to increase fertility.', color: 'Pink', price: 12.99 },
  { name: 'Black Onyx', description: 'Helps you balance the demands of everyday life with the need to find rest and new inspiration. Encourages inner stillness and focus during meditation.', color: 'Black', price: 12.99 }
  ])
