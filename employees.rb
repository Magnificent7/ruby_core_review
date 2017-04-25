#represent an employee as an array

# employee1 = ["Marge", "Carter", 80000, true]
# employee2 = ["Dan", "Campos", 70000, true]

# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee1[0]} #{employee1[1]} makes #{employee1[2]} a year."

#represent an employee as a hash
# employee1 = {"first_name" => "Marge", "last_name" => "Carter", "salary" => 80000, "active" => true}
# employee2 = {"first_name" => "Dan", "last_name" => "Campos", "salary" => 70000, "active" => true}

# employee1 = {:first_name => "Marge", :last_name => "Carter", :salary => 80000, :active => true}
# employee2 = {:first_name => "Dan", :last_name => "Campos", :salary => 70000, :active => true}

# puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."
# puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."

# employee1 = {first_name: "Marge"}
# employee1[first_name]

#represent an employee as a class instance
class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def salary
    @salary
  end

  def active=(input_active)
    @active = input_active
  end

  def print_info
    puts "#{first_name} #{last_name} make #{salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new("Marge", "Carter", 80000, true)
employee1.print_info
puts employee1.give_annual_raise
puts employee1.active = false






























