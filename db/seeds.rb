# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: 'admin', 
  email: 'admin@example.com', 
  password: '123456', 
  password_confirmation: '123456',
  phone: 'adminPhone',
  adress: 'adminAdress',
  role: 'admin'
)

user_1 = User.create!(
        name: 'Diana23',
        email: 'diana23@mail.ru',
        password: '123456', 
        password_confirmation: '123456', 
        phone: '0-700-60-99-00',
        adress: 'Бишкек, ул. Московская, 27'
)
user_2 = User.create!(
        name: 'Olya0207',
        email: 'olya_0207@mail.ru',
        password: '123456', 
        password_confirmation: '123456', 
        phone: '0-555-18-22-12',
        adress: 'Бишкек, ул. Ахунбаева, 129'
)

fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

restaurant_1 = Restaurant.create!(
    image: File.new(fixtures_path.join('logo-1.jpg')),
    title: 'Empress Hall', 
    description: "Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia"
)
restaurant_2 = Restaurant.create!(
    image: File.new(fixtures_path.join('logo-2.jpg')),
    title: 'Coffee House', 
    description: "Explicabo earum libero fuga commodi, animi beatae nihil et molestias."
)
restaurant_3 = Restaurant.create!(
    image: File.new(fixtures_path.join('logo-3.jpg')),
    title: 'Подсолнухи', 
    description: "Necessitatibus a nam dolorum, adipisci nesciunt reprehenderit autem doloremque at. Cum commodi excepturi non!"
)

dishes = Dish.create!([
  {
    image: File.new(fixtures_path.join('1.jpg')),
    title: "Consectetur adipisicing",
    price: 120,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque quaerat ad itaque reprehenderit similique, earum quia. Necessitatibus a nam dolorum, adipisci nesciunt reprehenderit autem doloremque at. Cum commodi excepturi non!",
    restaurant_id: restaurant_1.id
  }, 
  {
    image: File.new(fixtures_path.join('2.jpg')),
    title: "Animi beatae nihil",
    price: 112,
    description: "Explicabo earum libero fuga commodi, animi beatae nihil et molestias. Eligendi natus earum sequi expedita ducimus impedit, dolor facilis dolores voluptatem nisi!",
    restaurant_id: restaurant_1.id
  }, 
  {
    image: File.new(fixtures_path.join('3.jpg')),
    title: "Quod reprehenderit",
    price: 98,
    description: "Earum libero fuga commodi. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_1.id
  }, 
  {
    image: File.new(fixtures_path.join('4.jpg')),
    title: "similique voluptas",
    price: 136,
    description: "Consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_1.id
  }, 
  {
    image: File.new(fixtures_path.join('5.jpg')),
    title: "Similique voluptas",
    price: 118,
    description: "Dolor sit amet, consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_3.id
  }, 
  {
    image: File.new(fixtures_path.join('6.jpg')),
    title: "Sed enim debitis",
    price: 158,
    description: "Sed enim debitis eaque eos molestias sit repellendus commodi itaque voluptatum. Ullam ipsum esse molestias, nobis, dolores numquam suscipit minus reiciendis nostrum! Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_3.id
  }, 
  {
    image: File.new(fixtures_path.join('7.jpg')),
    title: "Facilis vitae",
    price: 114,
    description: "Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_3.id    
  }, 
  {
    image: File.new(fixtures_path.join('8.jpg')),
    title: "Molestiae officia",
    price: 96,
    description: "Consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_2.id    
   },
  {
    image: File.new(fixtures_path.join('9.jpg')),
    title: "Adipisicing elit",
    price: 136,
    description: "Consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_2.id
  }, 
  {
    image: File.new(fixtures_path.join('10.jpg')),
    title: "Debitis eaque",
    price: 124,
    description: "Dolor sit amet, consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_2.id
  }, 
  {
    image: File.new(fixtures_path.join('11.jpg')),
    title: "Sit repellendus",
    price: 119,
    description: "Sed enim debitis eaque eos molestias sit repellendus commodi itaque voluptatum. Ullam ipsum esse molestias, nobis, dolores numquam suscipit minus reiciendis nostrum! Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_2.id
  },
  {
    image: File.new(fixtures_path.join('12.jpg')),
    title: "Itaque",
    price: 127,
    description: "Sed enim debitis eaque eos molestias sit repellendus commodi itaque voluptatum. Ullam ipsum esse molestias, nobis, dolores numquam suscipit minus reiciendis nostrum! Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    restaurant_id: restaurant_2.id
  }
])