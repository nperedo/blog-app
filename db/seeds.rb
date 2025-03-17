Post.create([
  { title: 'First Post', content: 'This is the first post.', author: 'Alice' },
  { title: 'Second Post', content: 'Learning Rails is fun!', author: 'Bob' },
  { title: 'Third Post', content: 'Rails makes web development easier.', author: 'Charlie' }
])

puts "Seeded #{Post.count} posts."

Name.create([
  { name: "Bob", age: 30}, 
  { name: "Noah", age: 25},
  { name: "Charlie", age: 59}
])
