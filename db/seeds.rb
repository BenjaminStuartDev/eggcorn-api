# frozen_string_literal: true

User.destroy_all

User.create(name: 'Test', email: 'test@test.com', password: 'test', username: 'Test Test')

puts "User count: #{User.all.count}"
