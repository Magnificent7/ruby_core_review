require "./employees.rb"
require "./email_report_module.rb"

class Intern < Employee
  include EmailReportable
end

intern = Intern.new({first_name: "Calvin", last_name: "Chan", salary: 30000, active: true})

intern.print_info
intern.send_report
