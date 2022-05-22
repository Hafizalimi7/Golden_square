require "keep_track"

RSpec.describe TodoList do
  it "has an empty list" do
    todo = TodoList.new
    result = todo.list
    expect(result).to eq []
  end
  it "adding task to list" do
    todo = TodoList.new
    result = todo.add("Cleaning")
    expect(result).to eq ["Cleaning"]
  end
  it "adding another task to the list" do
    todo = TodoList.new()
    todo.add("Cleaning")
    todo.add("Coding")
    expect(todo.list).to eq ["Cleaning","Coding"]
  end
  it "Removing completed task from list" do
    todo = TodoList.new()
    todo.add("Cleaning")
    todo.add("Coding")
    todo.add("Gym")
    todo.completed("Coding")
    expect(todo.list).to eq ["Cleaning","Gym"]
  end
  it "raise error for repeated task added to the list" do
    todo = TodoList.new()
    todo.add("Cleaning")
    expect {todo.completed("Football")}.to raise_error "Task Not Available In The List"
  end
end