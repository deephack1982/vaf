# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Airfield.create(name: 'Kutaisi', airfield_type: 'Airfield', ATC_channel: '134.200', ATIS_channel: '135.000')
  Squadron.create(name: '870(R)', aircraft: 'L39C', airfield_id: '1')
  Pilot.create(name: 'Mark Dickie', email: 'mark.dickie@gmail.com', rank: 'Acting Pilot Officer', squadron_id: '1', password: 'pepper1899', password_confirmation: 'pepper1899', admin: '1')