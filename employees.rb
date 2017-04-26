#represent an employee as an array

# employee1 = ["Marge", "Carter", 80000, true]
# employee2 = ["Dan", "Campos", 70000, true]

# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a y`ear."
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
module Actualize
  class Employee
    attr_accessor :first_name, :last_name, :salary, :active

    def initialize(input_options)
      @first_name = input_options[:first_name]
      @last_name = input_options[:last_name]
      @salary = input_options[:salary]
      @active = input_options[:active]
    end

    def print_info
      puts "#{first_name} #{last_name} makes #{salary} a year."
    end

    def give_annual_raise
      @salary = 1.05 * @salary
    end
  end
end




























