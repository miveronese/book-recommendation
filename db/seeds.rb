# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = Book.create([

  { title: 'The Name of The Wind - Patrick Rothfuss' }, 
  { title: 'The Last Apprentice - Joseph Delaney' },
  { title: 'The Subtle Knife - Philip Pullman' },    
  { title: 'Good Omens - Terry Pratchett and Neil Gaiman' }, 
  { title: 'Lost Horizon - James Hilton' },
  { title: 'Utopia - Thomas Moore' },
  { title: 'Somnium - Johannes Kepler' },
  { title: 'Castle Waiting, graphic novel by Linda Medley' },
  { title: 'Bone: Out of Boneville - graphic novel by Jeff Smith' }, 
  { title: 'Groo, the Wanderer - comic book by Sergio Aragones' },
  { title: 'Baron in the Trees - Italo Calvino' },
  { title: 'El libro de loz abrazos - Eduardo Galeano' },
  { title: 'Around the Day in 80 Worlds - Julio Cortazar' }
])

likes = Like.create([
  { user_id: 1, book_id: 1 }, 
  { user_id: 1, book_id: 2 }, 
  { user_id: 1, book_id: 3 }, 
  { user_id: 1, book_id: 4 }, 
  { user_id: 2, book_id: 5 }, 
  { user_id: 2, book_id: 6 }, 
  { user_id: 2, book_id: 7 }, 
  { user_id: 3, book_id: 8 }, 
  { user_id: 3, book_id: 9 }, 
  { user_id: 3, book_id: 10 }, 
  { user_id: 3, book_id: 1 }, 
  { user_id: 4, book_id: 11 }, 
  { user_id: 4, book_id: 12 }, 
  { user_id: 4, book_id: 13 }, 
  { user_id: 4, book_id: 5 },
  { user_id: 5, book_id: 1 }
])

users = User.create([
  {name: 'Anna'}, 
  {name: 'Brigitte'}, 
  {name: 'Carol'}, 
  {name: 'Diana'},
  {name: 'Ellen'}
])




