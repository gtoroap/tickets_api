puts "Creating users..."
User.create(username: 'test', password: '1234', name: 'Test', last_name: 'Test', email: 'test@test.com')
puts "Creating users... Done"

puts "Creating tickets..."
Ticket.create(
  [
    {
      user_id: 1, venue: 'Cinema #1', seat: 'A1', location: 'Section A', price: 5, valid_from: Time.now, valid_until: Time.now + 24.hours
    },
    {
      user_id: 1, venue: 'Cinema #1', seat: 'A2', location: 'Section A', price: 5, valid_from: Time.now, valid_until: Time.now + 24.hours
    },
    {
      user_id: 1, venue: 'Cinema #1', seat: 'A3', location: 'Section A', price: 5, valid_from: Time.now, valid_until: Time.now + 24.hours
    },
    {
      user_id: 1, venue: 'Cinema #1', seat: 'A4', location: 'Section A', price: 5, valid_from: Time.now, valid_until: Time.now + 24.hours
    }
  ]
)
puts "Creating tickets... Done"
