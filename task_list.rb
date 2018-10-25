
require_relative 'task'
require_relative 'due_date_task'

class Task_list
    attr_accessor :all_tasks, :completed_tasks, :incompleted_tasks, :all_tasks_with_date, :completed_tasks_with_date, :incompleted_tasks_with_date

    def initialize()
        @all_tasks = []
        @completed_tasks = []
        @incompleted_tasks = []
        @all_tasks_with_date = []
        @completed_tasks_with_date = []
        @incompleted_tasks_with_date = []
    end

    def add_to_lists(task)
        if task.class == Due_date_task
            @all_tasks_with_date << task

            if task.completed == true
                @completed_tasks_with_date << task
            else
                @incompleted_tasks_with_date << task
            end
            true
            #break ***** will need to play with this more
        elsif task.class == Task
            @all_tasks << task

            if task.completed == true
                @completed_tasks << task
            else
                @incompleted_tasks << task
            end
            true
        else
            puts "This is not a task"
            false
        end
    end


end
## TODO: verify add_to_lists method is only adding tasks with dates to thier respective array
