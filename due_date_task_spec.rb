require 'rspec'
require_relative 'due_date_task'

describe Due_date_task do
    let(:due_date){Due_date_task.new("title", "description", 2018, 10, 25)}

    it "can create a Due_date_task, which is a Task and has a due date" do
        expect{due_date}.to_not raise_error
        expect(due_date).is_a? Task
        expect(due_date.date).to be_a Date
    end

    it "can print task information" do
        expect(due_date.print_due_date_task).to be_a String
    end


end



# Story: As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
# Hint: Use the built-in Ruby Date class
#
# Story: As a developer, I can print an item with a due date with labels and values.
# Hint: When implementing to_s, use super to call to_s on the super class.
#
# Story: As a developer, I can add items with due dates to my TaskList.
# Hint: Consider keeping items with due dates separate from the other items.
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
#
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
#
