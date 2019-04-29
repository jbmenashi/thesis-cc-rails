# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Appointment.destroy_all
Schedule.destroy_all

s1 = Schedule.create(title: "Tuesday")

a1 = Appointment.create(title: "Doctor", start_time: 11, end_time: 20, schedule_id: s1.id)
a2 = Appointment.create(title: "Dentist", start_time: 25, end_time: 34, schedule_id: s1.id)