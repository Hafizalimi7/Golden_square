require "todo_list"
require "todo"

RSpec.describe "Todo Intergration" do
    it "construct add function" do
      todo_list = TodoList.new
      todo = Todo.new("Cleaning")
      expect(todo_list.add(todo)).to eq [todo]
    end
    it "Todo completed" do
      todo_list = TodoList.new
      task1 = Todo.new("Cleaning")
      todo_list.add(task1)
      task1.mark_done!
      expect(todo_list.complete).to eq [task1]
    end
    it "incompleted Todo" do
      todo_list = TodoList.new
      task1 = Todo.new("Cleaning")
      task2 = Todo.new("Coding")
      todo_list.add(task1)
      todo_list.add(task2)
      task1.done? 
      task2.done? 
      expect(todo_list.incomplete).to eq [task1,task2]
    end
    it "marks all todo as complated" do
      todo_list = TodoList.new
      task1 = Todo.new("Cleaning")
      task2 = Todo.new("Coding")
      task3 = Todo.new("Cooking")
      todo_list.add(task1)
      todo_list.add(task2)
      todo_list.add(task3)
      task1.mark_done!
      task2.mark_done!
      task3.mark_done!
      expect(todo_list.give_up!).to eq [task1,task2,task3]

    end
end
