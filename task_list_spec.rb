require 'rspec'
require_relative 'task_list'

#
# #Story: As a developer, I can add all of my Tasks to a TaskList.
# Hint: A TaskList has-many Tasks
#
# #Story: As a developer with a TaskList, I can get the completed items.
#

describe Task_list do
    let(:task_list){Task_list.new()}

    it "Is an array of all tasks" do
        expect(task_list.all_tasks).to be_a(Array)
    end

    it "Task to all tasks" do
        my_task = Task.new("Title", "Describe me")
        expect(task_list.add_to_lists(my_task)).to eq(true)
    end

    it "Can add tasks to completed items array." do
        my_task = Task.new("Title", "Describe me", true)
        expect{task_list.add_to_lists(my_task)}.to change{task_list.completed_tasks.count}.by(1)
    end

    it "Is an array of completed tasks" do
        expect(task_list.completed_tasks).to be_a(Array)
    end

    it "Can add tasks to incompleted items array." do
        my_task = Task.new("Title", "Describe me", false)
        expect{task_list.add_to_lists(my_task)}.to change{task_list.incompleted_tasks.count}.by(1)
    end

    it "Is an array of incompleted tasks" do
        expect(task_list.incompleted_tasks).to be_a(Array)
    end

    it "Can add tasks with date items to array." do
        my_task_date = Due_date_task.new("title", "description", 2018, 10, 25)
        expect{task_list.add_to_lists(my_task_date)}.to change{task_list.all_tasks_with_date.count}.by(1)
    end

    it "Is an array of tasks with dates" do
        expect(task_list.all_tasks_with_date).to be_a(Array)
    end


end
