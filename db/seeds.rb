# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# mia = ContactInfo.create(contact_name: 'Mia')
# nancy = ContactInfo.create(contact_name: 'Nancy')
# joe = ContactInfo.create(contact_name: 'Joe')

# research = Department.create(department_name: 'Research & Development')
# marketing = Department.create(department_name: 'Marketing')

# allan = Employee.create(first_name: 'Allan', contact_info_id: mia.id, department_id: research.id)
# jane = Employee.create(first_name: 'Jane', contact_info_id: nancy.id, department_id: research.id)
# john = Employee.create(first_name: 'John', contact_info_id: joe.id, department_id: marketing.id)

# migration = Project.create(project_name: 'Migration', description: 'Website migration')
# xmas = Project.create(project_name: 'XMAS', description: 'XMAS Party 2019')

# Allocation.create(employee_id: allan.id, project_id: migration.id)
# Allocation.create(employee_id: allan.id, project_id: xmas.id)
# Allocation.create(employee_id: jane.id, project_id: migration.id)
# Allocation.create(employee_id: john.id, project_id: xmas.id)
chen = ContactInfo.create(email_address: 'chenhe.elec@gmail.com', phone_number: '0451699387')
male = Gender.create(gender: 'Male')
syd = Location.create(location: 'Sydney')
User.create(user_name: 'Chen He', password_digest: BCrypt::Password.create('Jedi'), age: 30, gender_id: male.id, contact_info_id: chen.id, location_id: syd.id)
