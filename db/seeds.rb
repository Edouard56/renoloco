# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Match.destroy_all
Pro.destroy_all

  pro = Pro.new(
    pro_company_name: Faker::Company.name,
    address: "1, place Bellecour, Lyon",
    email: "lyon@mail.com",
    password: 123456,
    latitude: 45.7589419,
    longitude: 4.8309619,
    contact_first_name: "Edouard",
    contact_last_name: Faker::Name,
    contact_position: "Président",
    contact_phone_number: Faker::Number,
    operating_radius: 50,
    min_operating_surface: 100,
    max_operating_surface: 500,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false
  )
  pro.save!

  pro = Pro.new(
    pro_company_name: Faker::Company.name,
    address: "5, place Bellecour, Lyon",
    email: "lyon2@mail.com",
    password: 123456,
    latitude: 45.7589419,
    longitude: 4.8309619,
    contact_first_name: "Edouard",
    contact_last_name: Faker::Name,
    contact_position: "Président",
    contact_phone_number: Faker::Number,
    operating_radius: 50,
    min_operating_surface: 100,
    max_operating_surface: 500,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false
  )
  pro.save!

    pro = Pro.new(
    pro_company_name: Faker::Company.name,
    address: "Paris",
    email: "paris@mail.com",
    password: 123456,
    latitude: 48.8697246,
    longitude: 2.3309619,
    contact_first_name: "Edouard",
    contact_last_name: Faker::Name,
    contact_position: "Président",
    contact_phone_number: Faker::Number,
    operating_radius: 50,
    min_operating_surface: 100,
    max_operating_surface: 500,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false
  )
  pro.save!

   pro = Pro.new(
    pro_company_name: Faker::Company.name,
    address: "Paris",
    email: "paris2@mail.com",
    password: 123456,
    latitude: 48.8697246,
    longitude: 2.3309619,
    contact_first_name: "Edouard",
    contact_last_name: Faker::Name,
    contact_position: "Président",
    contact_phone_number: Faker::Number,
    operating_radius: 50,
    min_operating_surface: 100,
    max_operating_surface: 500,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false
  )
  pro.save!


  pro = Pro.new(
    pro_company_name: Faker::Company.name,
    address: "Paris",
    email: "paris3@mail.com",
    password: 123456,
    latitude: 48.8697246,
    longitude: 2.3309619,
    contact_first_name: "Edouard",
    contact_last_name: Faker::Name,
    contact_position: "Président",
    contact_phone_number: Faker::Number,
    operating_radius: 50,
    min_operating_surface: 500,
    max_operating_surface: 1000,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false
  )
  pro.save!

pro = Pro.new(
    pro_company_name: Faker::Company.name,
    address: "Paris",
    email: "paris4@mail.com",
    password: 123456,
    latitude: 48.8697246,
    longitude: 2.3309619,
    contact_first_name: "Edouard",
    contact_last_name: Faker::Name,
    contact_position: "Président",
    contact_phone_number: Faker::Number,
    operating_radius: 50,
    min_operating_surface: 500,
    max_operating_surface: 1000,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false
  )
  pro.save!
