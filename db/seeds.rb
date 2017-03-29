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
Customer.destroy_all



pro = Pro.new(
    pro_company_name: "admin",
    address: "1, rue de Maubeuge",
    email: "ecastaignet@hotmail.com",
    password: 123456,
    latitude: 45.7589419,
    longitude: 4.8309619,
    contact_first_name: "Edouard",
    contact_last_name: "Castaignet",
    contact_position: "Directeur",
    contact_phone_number: "0112345678",
    operating_radius: 50,
    min_operating_surface: 100,
    max_operating_surface: 500,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false,
    admin: true
  )
  pro.save!

  pro = Pro.new(
    pro_company_name: "admin",
    address: "1, rue de Maubeuge",
    email: "gsalin@gmail.com",
    password: 123456,
    latitude: 45.7589419,
    longitude: 4.8309619,
    contact_first_name: "Edouard",
    contact_last_name: "Castaignet",
    contact_position: "directeur",
    contact_phone_number: "0112345678",
    operating_radius: 50,
    min_operating_surface: 100,
    max_operating_surface: 500,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false,
    admin: true
  )
  pro.save!

  pro = Pro.new(
    pro_company_name: Faker::Company.name,
    address: "1, place Bellecour, Lyon",
    email: "lyon@mail.com",
    password: 123456,
    latitude: 45.7589419,
    longitude: 4.8309619,
    contact_first_name: "Edouard",
    contact_last_name: "Po",
    contact_position: "Président",
    contact_phone_number: "0112345678",
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
    contact_last_name: "Jello",
    contact_position: "Président",
    contact_phone_number: "0112345678",
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
    contact_last_name: "Minh",
    contact_position: "Président",
    contact_phone_number: "0112345678",
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
    contact_last_name: "Mello",
    contact_position: "Président",
    contact_phone_number: "0112345678",
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
    contact_last_name: "Mille",
    contact_position: "Président",
    contact_phone_number: "0112345678",
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
    email: "paris4@mail.com",
    password: 123456,
    latitude: 48.8697246,
    longitude: 2.3309619,
    contact_first_name: "Edouard",
    contact_last_name: "Best",
    contact_position: "Président",
    contact_phone_number: "0112345678",
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
    email: "paris5@mail.com",
    password: 123456,
    latitude: 48.8697246,
    longitude: 2.3309619,
    contact_first_name: "Edouard",
    contact_last_name: "Surimi",
    contact_position: "Président",
    contact_phone_number: "0112345678",
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
    email: "paris6@mail.com",
    password: 123456,
    latitude: 48.8697246,
    longitude: 2.3309619,
    contact_first_name: "Edouard",
    contact_last_name: "Faure",
    contact_position: "Président",
    contact_phone_number: "0112345678",
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
    email: "paris7@mail.com",
    password: 123456,
    latitude: 48.8697246,
    longitude: 2.3309619,
    contact_first_name: "Edouard",
    contact_last_name: "Faure",
    contact_position: "Président",
    contact_phone_number: "0112345678",
    operating_radius: 50,
    min_operating_surface: 500,
    max_operating_surface: 1000,
    all_works: false,
    architecte: false,
    furnitures: false,
    simulation: false
  )
  pro.save!

customer = Customer.new(
  customer_company_name: Faker::Company.name,
  first_name: "Jean-Pierre",
  last_name: "Dick",
  mobile_phone_number: "0712345678",
  email: "customer@mail.com",
  customer_address: "Versailles",
  works_address: "Sèvres",
  needs_surface: 200,
  nb_of_employees: 25,
  starts_at: "Thu, 30 Mar 2017 00:00:00 UTC +00:00",
  ends_at: "Thu, 30 Mar 2017 00:00:00 UTC +00:00",
  customer_startup_style: true,
  description: "petite description",
  latitude: 48.8167,
  longitude: 2.2
  )
customer.save!

customer = Customer.new(
  customer_company_name: Faker::Company.name,
  first_name: "Jean-Michel",
  last_name: "Duluma",
  mobile_phone_number: "0712345678",
  email: "customesrgr@mail.com",
  customer_address: "Versailles",
  works_address: "Versailles",
  needs_surface: 200,
  nb_of_employees: 25,
  starts_at: "Thu, 30 Mar 2017 00:00:00 UTC +00:00",
  ends_at: "Thu, 30 Mar 2017 00:00:00 UTC +00:00",
  customer_startup_style: true,
  description: "petite description",
  latitude: 48.8167,
  longitude: 2.2
  )
customer.save!


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
