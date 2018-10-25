require 'rspec'
require_relative 'task'


describe Task do
    let(:task) {Task.new("title", "I'm a description", true)}
    # Story: As a developer, I can create a Task.
    it "is a real task" do
        expect{task}.to_not raise_error
    end

    #Story: As a developer, I can give a Task a title and retrieve it.
    it "has a title" do
        expect(task.title.class).to eq(String)
        expect(task.title).to be_a(String)
    end

    #Story: As a developer, I can give a Task a description and retrieve
    it "has a description" do
        expect(task.description).to be_a(String)
    end

    #Story: As a developer, I can mark a Task done.
    it "can be marked done" do
        expect(task.completed).to eq(true)
    end

    # # TODO: Story: As a developer, when I print a Task that is done, its status is shown.
    it "can use a method print status of done tasks" do
        expect(task.print_completed).to eq("#{task.title} is completed")
    end


end
#

#

#
#
