# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Crea un usuario administrador de ejemplo
# puts 'creando Admin..'
# User.create!(
#     email: 'admin@example.com',
#     name:'admin',
#     password: '123456', 
#     admin: true
#   )
# puts 'Admin creado con exito!'
# # Obtener el primer usuario como administrador
# admin_user = User.first

# # Crear 5 usuarios
# 5.times do
#     User.create!(
#         name: Faker::Name.name,
#         email: Faker::Internet.unique.email,
#         password: 'password' 
#     )
#   end
  
#   puts "Usuarios creados."
  
# # Crear 5 publicaciones solo por el administrador
# 5.times do |n|
#     article=Article.create!(
#       title: Faker::Book.unique.title,
#       description: Faker::Lorem.paragraph
#     )
  
#     puts "Publicación '#{article.title}' creada."
    
  
#       # Crear 3 comentarios para cada publicación
#   3.times do
#     user = User.all.sample
#     article.comments.create!(
#       content: Faker::Lorem.sentence,
#       user: user # Asignamos un usuario aleatorio como autor del comentario
#     )
#   end
  
#     puts "Comentarios creados para la publicación '#{article.title}'."
#   end
  
#   puts "¡Datos de ejemplo creados exitosamente!"