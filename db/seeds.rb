# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

big   = User.create! name: 'The Notorious B.I.G.', password: '12345678', email: 'big@test.com'
snoop = User.create! name: 'Snoop Dogg', password: '12345678', email: 'snoop@test.com'
flex  = User.create! name: 'Funkmaster Flex', password: '12345678', email: 'flex@test.com'
ice   = User.create! name: 'Ice Cube', password: '12345678', email: 'ice@test.com'

Message.create! title: 'Tha Shiznit', content: 'Poppin, stoppin, hoppin like a rabbit', user: snoop
Message.create! title: 'Hypnotize ', content: 'Hah, sicker than your average Poppa', user: big
