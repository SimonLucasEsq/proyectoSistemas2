# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
state = State.new
state.name = 'en curso'
state.save

state = State.new
state.name = 'culminado'
state.save

state = State.new
state.name = 'en espera'
state.save

admin = User.new
admin.name = "Admin"
admin.email = "admin@uni.edu.py"
admin.password = 123456
admin.save

student = StudentType.new
student.participant = "Beneficiario"
student.save

student = StudentType.new
student.participant = "Extensionista"
student.save

student = StudentType.new
student.participant = "Docente"
student.save

student = StudentType.new
student.participant = "Coordinador"
student.save

acti = ExtensionType.new
acti.name = "Activity"
acti.save

proy = ExtensionType.new
proy.name = "Project"
proy.save

servi = ExtensionType.new
servi.name = "Service"
servi.save

category = Category.new
category.name = "Docente"
category.save

category = Category.new
category.name = "Estudiante"
category.save