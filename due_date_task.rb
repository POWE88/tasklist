require 'date'
require_relative 'task'

class Due_date_task < Task
    attr_accessor :date, :year, :month, :day

    def initialize(title, description, year, month, day, completed=false)
        super(title, description, completed)
        @date = create_date(year, month, day)
    end

    def create_date(year, month, day)
        Date.parse("#{year}-#{month}-#{day}")
    end

    def print_due_date_task
        "completed: #{@completed} - #{@title}(#{@description}): due on #{@date}"
    end


end
