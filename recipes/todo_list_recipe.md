## 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
# Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.
As a user
So that I can keep track of my Todo List
I want to add Todo to my TodoList


## 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.
# The interface of a class includes:
#  name of the class.
# The design of its initializer and the parameters it takes.
# The design of its public methods, including:
# Their names and purposes
# What parameters they take and the data types.
# What they return and that data type
# Any other side effects they might have.
# Steps 3 and 4 then operate as a cycle.

class Todo
  def initialize(task) # task is a string
    @task = task
    @done = false
  end

  def task
    # Returns the task as a string
    fail "no task given" if @task.empty?
    return @task
  
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @done = true
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @done = true
    
  end
end

class Todo
  def initialize(task) # task is a string
    @task = task
    @done = false
  end

  def task
    # Returns the task as a string
    fail "no task given" if @task.empty?
    return @task
  
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @done = true
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @done = true
    
  end
end


## 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.
# These are examples of the class being used with different initializer arguments, method calls, and how it should behave.
# For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.
1.
it "construct add function" do
      todo_list = TodoList.new
      todo = Todo.new("Cleaning")
      expect(todo_list.add(todo)).to eq [todo]
    end

2.
it "Todo completed" do
      todo_list = TodoList.new
      task1 = Todo.new("Cleaning")
      todo_list.add(task1)
      task1.mark_done!
      expect(todo_list.complete).to eq [task1]
    end
3.
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
4.
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

1. it "returns task as a string" do
        todo = Todo.new("Cleaning")
        expect(todo.task).to eq "Cleaning"
    end
2.   it "returns nothing marks the todo as done" do
        todo = Todo.new("Cleaning")
        expect(todo.mark_done!).to eq true
    end
3.    it "returns nothing marks the todo as done" do
        todo = Todo.new("Cooking")
        expect(todo.done?).to eq true
    end
4.    it "fail" do
        todo = Todo.new("")
        expect{todo.task}.to raise_error "no task given"
    end

## 4. Implement the Behaviour
# for each example you create as a test, implement the behaviour that allows the class to behave according to your example.
# At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.
# Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.

 
 

  