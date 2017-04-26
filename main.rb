require "./employees.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new({first_name: "Marge", last_name: "Carter", salary: 80000, active: true})
employee1.print_info

manager = Actualize::Manager.new({first_name: "Dan", last_name: "Campos", salary: 70000, active: true, employees: [employee1]})
manager.print_info
manager.give_all_raises
puts employee1.salary
manager.fire_all_employees
puts employee1.active

intern = Actualize::Intern.new({first_name: "Calvin", last_name: "Chan", salary: 30000, active: true})

intern.print_info
intern.send_report