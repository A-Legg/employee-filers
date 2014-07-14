


# class EmployeeFilter
#
#
#   def new_employees
#     # @employees = []
#     #  EMPLYOYEES.each do |new|
#     #    if new[:start_date][0] < 2006 << @employees
#     #
#     #    end
#     #  end
#     # @employees
#
#   end
#
# end


class EmployeeFilter
  def initialize(employees)
    @employees = employees
  end

  def started_before_2006
    @employees.select { |employee_hash| employee_hash[:start_date] < Date.new(2006)}
  end

  def all_with_start_date
    @employees.collect { |employee_hash| "#{employee_hash[:first_name]} #{employee_hash[:last_name]} (#{employee_hash[:title]}) - #{employee_hash[:start_date].strftime("%-m/%-d/%Y")}"}
  end

end

