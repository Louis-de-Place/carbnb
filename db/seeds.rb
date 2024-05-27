# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users = [
  { first_name: 'John', last_name: 'Doe', birth_date: '1980-01-01', rating: 3.5, email: 'john.doe@example.com', password: 'password123' },
  { first_name: 'Jane', last_name: 'Doe', birth_date: '1990-02-01', rating: 4.2, email: 'jane.doe@example.com', password: 'password123' },
  { first_name: 'Alice', last_name: 'Smith', birth_date: '1985-03-01', rating: 4.8, email: 'alice.smith@example.com', password: 'password123' },
  { first_name: 'Bob', last_name: 'Johnson', birth_date: '1975-04-01', rating: 2.9, email: 'bob.johnson@example.com', password: 'password123' },
  { first_name: 'Carlos', last_name: 'Garcia', birth_date: '1982-05-01', rating: 4.4, email: 'carlos.garcia@example.com', password: 'password123' },
  { first_name: 'Diana', last_name: 'Martinez', birth_date: '1988-06-01', rating: 4.7, email: 'diana.martinez@example.com', password: 'password123' },
  { first_name: 'Ewa', last_name: 'Hernandez', birth_date: '1983-07-01', rating: 3.3, email: 'ewa.hernandez@example.com', password: 'password123' },
  { first_name: 'François', last_name: 'Lopez', birth_date: '1979-08-01', rating: 4.1, email: 'francois.lopez@example.com', password: 'password123' },
  { first_name: 'Giorgio', last_name: 'Wilson', birth_date: '1981-09-01', rating: 4.9, email: 'giorgio.wilson@example.com', password: 'password123' },
  { first_name: 'Hana', last_name: 'Anderson', birth_date: '1987-10-01', rating: 3.6, email: 'hana.anderson@example.com', password: 'password123' },
  { first_name: 'Igor', last_name: 'Thomas', birth_date: '1976-11-01', rating: 4.3, email: 'igor.thomas@example.com', password: 'password123' },
  { first_name: 'Jasmine', last_name: 'Taylor', birth_date: '1989-12-01', rating: 4.8, email: 'jasmine.taylor@example.com', password: 'password123' },
  { first_name: 'Ken', last_name: 'Moore', birth_date: '1984-01-01', rating: 2.5, email: 'ken.moore@example.com', password: 'password123' },
  { first_name: 'Lina', last_name: 'Jackson', birth_date: '1978-02-01', rating: 4.2, email: 'lina.jackson@example.com', password: 'password123' },
  { first_name: 'Marta', last_name: 'Martin', birth_date: '1986-03-01', rating: 3.9, email: 'marta.martin@example.com', password: 'password123' },
  { first_name: 'Nils', last_name: 'Lee', birth_date: '1980-04-01', rating: 4.7, email: 'nils.lee@example.com', password: 'password123' },
  { first_name: 'Olga', last_name: 'Perez', birth_date: '1983-05-01', rating: 2.8, email: 'olga.perez@example.com', password: 'password123' },
  { first_name: 'Pedro', last_name: 'Thompson', birth_date: '1977-06-01', rating: 4.4, email: 'pedro.thompson@example.com', password: 'password123' },
  { first_name: 'Quinn', last_name: 'White', birth_date: '1982-07-01', rating: 3.2, email: 'quinn.white@example.com', password: 'password123' },
  { first_name: 'Rita', last_name: 'Harris', birth_date: '1979-08-01', rating: 4.5, email: 'rita.harris@example.com', password: 'password123' },
  { first_name: 'Sam', last_name: 'Sanchez', birth_date: '1981-09-01', rating: 2.9, email: 'sam.sanchez@example.com', password: 'password123' },
  { first_name: 'Tina', last_name: 'Clark', birth_date: '1984-10-01', rating: 4.3, email: 'tina.clark@example.com', password: 'password123' },
  { first_name: 'Ugo', last_name: 'Ramirez', birth_date: '1978-11-01', rating: 4.7, email: 'ugo.ramirez@example.com', password: 'password123' },
  { first_name: 'Vera', last_name: 'Lewis', birth_date: '1987-12-01', rating: 3.4, email: 'vera.lewis@example.com', password: 'password123' },
  { first_name: 'Wang', last_name: 'Robinson', birth_date: '1980-01-01', rating: 4.1, email: 'wang.robinson@example.com', password: 'password123' },
  { first_name: 'Xia', last_name: 'Walker', birth_date: '1985-02-01', rating: 4.6, email: 'xia.walker@example.com', password: 'password123' },
  { first_name: 'Yuki', last_name: 'Young', birth_date: '1976-03-01', rating: 2.7, email: 'yuki.young@example.com', password: 'password123' },
  { first_name: 'Zara', last_name: 'Allen', birth_date: '1988-04-01', rating: 4.2, email: 'zara.allen@example.com', password: 'password123' },
  { first_name: 'John', last_name: 'Doe', birth_date: '1980-01-01', rating: 3.5, email: 'john.doe2@example.com', password: 'password123' },
  { first_name: 'Jane', last_name: 'Doe', birth_date: '1990-02-01', rating: 4.2, email: 'jane.doe2@example.com', password: 'password123' },
  { first_name: 'Alice', last_name: 'Smith', birth_date: '1985-03-01', rating: 4.8, email: 'alice.smith2@example.com', password: 'password123' },
  { first_name: 'Bob', last_name: 'Johnson', birth_date: '1975-04-01', rating: 2.9, email: 'bob.johnson2@example.com', password: 'password123' },
  { first_name: 'Carlos', last_name: 'Garcia', birth_date: '1982-05-01', rating: 4.4, email: 'carlos.garcia2@example.com', password: 'password123' },
  { first_name: 'Diana', last_name: 'Martinez', birth_date: '1988-06-01', rating: 4.7, email: 'diana.martinez2@example.com', password: 'password123' },
  { first_name: 'Ewa', last_name: 'Hernandez', birth_date: '1983-07-01', rating: 3.3, email: 'ewa.hernandez2@example.com', password: 'password123' },]




  users.each do |user|
    User.create!(user)
  end

  puts "Created 34 users with ratings"
