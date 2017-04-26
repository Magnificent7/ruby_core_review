require "./employees.rb"
require "./email_report_module.rb"

class Manager < Employee
  include EmailReportable
  attr_accessor :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

employee1 = Employee.new({first_name: "Marge", last_name: "Carter", salary: 80000, active: true})

manager = Manager.new({first_name: "Dan", last_name: "Campos", salary: 70000, active: true, employees: [employee1]})
manager.print_info
manager.give_all_raises
puts employee1.salary
manager.fire_all_employees
puts employee1.active