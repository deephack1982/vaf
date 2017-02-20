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
  Software.create([{ name: 'DCS World 1.5', required: true }, { name: 'DCS L39C', required: true}, { name: 'Discord', required: true}, { name: 'DCS Simple Radio Standalone', required: true}, { name: 'DCS F5', required: false}, { name: 'DCS Mig21bis', required: false}, { name: 'DCS M2000C', required: false}, { name: 'DCS Gazelle', required: false}, { name: 'DCS Huey', required: false}, { name: 'DCS Mi8', required: false}, { name: 'DCS AJS37', required: false}])