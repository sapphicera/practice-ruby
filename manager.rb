# old code stuff, delete later

# require 'faker'

# # ------ Class for Employees ------

# class Employee
#   attr_reader :first_name, :last_name, :salary, :active
#   attr_writer :first_name, :last_name, :active

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_options[:salary]
#     @active = input_options[:active]
#   end

#   def print_info
#     p "#{@first_name} #{@last_name} makes $#{@salary} per year."
#   end

#   def give_annual_raise
#     @salary *= 1.05
#   end
# end

# # employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
# # employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)

# # employee1.print_info
# # employee2.print_info

# # ------ Class for Managers ft. Inheritance ------

# class Manager < Employee
#   attr_reader :employees
#   def initialize(input_options)
#     super
#     @employees = input_options[:employees]
#   end

#   def send_report
#     puts "Sending email..."
#     # use email sending library...
#     puts "Email sent!"
#   end

#   def give_all_raises
#     employees.each{|e| e.give_annual_raise}
#   end

#   def fire_all_employees
#     employees.each{|e| e.active = false}
#   end
# end

# manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

# manager.print_info
# manager.send_report

# manager.give_all_raises
# employee1.print_info
# employee2.print_info

# manager.fire_all_employees
# p employee1.active
# p employee2.active

# ---- new stuff ----

# new_hires = []

# 100.times do
#   test = Employee.new(
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name, 
#     salary: Faker::Number.between(from: 36_000, to: 120_000), 
#     active: true)
#   new_hires << test
# end

# pp new_hires