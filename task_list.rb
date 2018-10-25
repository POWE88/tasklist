
require_relative 'task'

class Task_list
    attr_accessor :all_tasks, :completed_tasks, :incompleted_tasks
    def initialize()
        @all_tasks = []
        @completed_tasks = []
        @incompleted_tasks = []
    end

    def add_to_lists(task)
        if task.class == Task
            @all_tasks << task

            if task.completed == true
                @completed_tasks << task
                # p @completed_tasks
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

# my_task = Task.new("title", "describe me", true)
# my_list = Task_list.new
# my_list.add_to_lists(my_task)
