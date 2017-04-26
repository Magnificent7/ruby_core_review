require "./employees.rb"
require "./email_report_module.rb"

module Actualize
  class Intern < Employee
    include EmailReportable
  end
end
