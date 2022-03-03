# ------ Review of Hashes & Different Implementations ------

# --- String Concentation ---
employee1 = ["Laxi", "Orchis", 420, true]
p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# --- String Interpolation ---
employee2 = ["Mascula", "Orchis", 69, false]
p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# Weakest Hash Implementation #
employee3 = {"first_name" => "Finni", "last_name" => "Orchis", "salary" => 420, "active" => true}
p "#{employee3['first_name']} #{employee3['last_name']} makes $#{employee3['salary']} per year."

# Mid Hash Implementation #
employee4 = {:first_name => "Eirene", :last_name => "Orchis", :salary => 69, :active => false}
p "#{employee4[:first_name]} #{employee4[:last_name]} makes $#{employee4[:salary]} per year."

# Best Hash Implementation #
employee5 = {first_name: "Catasetum", last_name: "Orchis", salary: 69, active: false}
p "#{employee5[:first_name]} #{employee5[:last_name]} makes $#{employee5[:salary]} per year."

# ------ Class for Employees ------

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

# --- Enter In Employees ---

employee1 = Employee.new(
  first_name: "Laxi", 
  last_name: "Orchis", 
  salary: 420, 
  active: true)

employee2 = Employee.new(
  first_name: "Mascula", 
  last_name: "Orchis", 
  salary: 69, 
  active: false)

# p employee1.first_name
# p employee2.first_name

# ------ Class for Managers ft. Inheritance ------

class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super # runs inherited class' inheritance instead of overwrite
    @employees = input_options[:employees]
  end

  def send_report
    p "about to send report..."
    p "report sent"
  end
end

# --- Enter In Manager ---

manager = Manager.new(
  first_name: "Anassa",
  last_name: "Orchis",
  salary: 9000,
  active: true,
  employees: [employee1, employee2]
)

# manager.print_info
# manager.send_report
# p manager.employees