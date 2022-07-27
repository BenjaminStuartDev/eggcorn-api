# frozen_string_literal: true

TestUser.destroy_all

TestUser.create(name: 'Ben', description: 'Hi my name is Ben I like Programming')
TestUser.create(name: 'Jasmine', description: 'Hi my name is Jasmine I like Building')

puts "TestUsers count: #{TestUser.count}"
