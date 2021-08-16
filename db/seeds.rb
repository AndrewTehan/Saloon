# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(first_name: 'Saloon', last_name: 'Oddicial', email: 'saloonofficial699@gmail.com', phone_number: '+375442504040', type: 'Admin', password: '11111111' )
User.create(first_name: 'Andrew', last_name: 'Tehanov', email: 'andrewtehanov@gmail.com', phone_number: '+375447756860', type: 'User', password: '11111111' )
Team.create(first_name: "Amanda", last_name: "Jepson", email: "jepson@gmail.com", phone_number: "+375440000001", password: "11111111")
Team.create(first_name: "Sarah", last_name: "Jhonson", email: "jhonson@gmail.com", phone_number: "+375440000021", password: "11111111")
Specialization.create(speciality: "Women master", team_email: "jhonson@gmail.com")
Specialization.create(speciality: "Colorist", team_email: "jhonson@gmail.com")
Specialization.create(speciality: "Universal hairdresser", team_email: "jepson@gmail.com")