# frozen_string_literal: true

TestUser.destroy_all

TestUser.create(name: 'Ben', description: 'Hi my name is Ben I like programming')

puts "TestUsers count: #{TestUser.count}"
