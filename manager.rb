require_relative 'employees.rb'

class Manager < Employee
  def send_report
    puts "sending email report"
    # use some email sending library
    puts "email sent!"
  end
end

manager = Manager.new({first_name: "Dan", last_name: "Campos", salary: 70000, active: true})
manager.print_info