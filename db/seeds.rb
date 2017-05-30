# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Domain.delete_all
Result.delete_all
Domain.create(name: 'internet.ee', lastrun:0)
Domain.create(name: 'eis.ee', lastrun:0)
Domain.create(name: 'tld.ee', lastrun:0)
User.create(name: 'user', password: 'user', email:'user@domain.tld')


