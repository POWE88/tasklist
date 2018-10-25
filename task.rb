require 'date'
class Task
    attr_accessor :title, :description, :completed

    def initialize(title, description, completed=false )
        @title = title
        @description = description
        @completed = completed


    end

    def print_completed
        if @completed == true
            "#{@title} is completed"
        else
            "#{@title} is not done yet."
        end
    end




end
