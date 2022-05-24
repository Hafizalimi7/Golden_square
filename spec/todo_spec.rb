require "todo"

RSpec.describe Todo do
    it "returns task as a string" do
        todo = Todo.new("Cleaning")
        expect(todo.task).to eq "Cleaning"
    end
    it "returns nothing marks the todo as done" do
        todo = Todo.new("Cleaning")
        expect(todo.mark_done!).to eq true
    end
    it "returns nothing marks the todo as done" do
        todo = Todo.new("Cooking")
        expect(todo.done?).to eq true
    end
    it "fail" do
        todo = Todo.new("")
        expect{todo.task}.to raise_error "no task given"
    end

end