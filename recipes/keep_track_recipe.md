## 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
# Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.


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
class TodoList
def initialize(list)
@task = []
end
def add(text)
#add text to list
end
def  completed(task)
#remove @task from list
end
def list(text)
return @task
end
end


## 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.
# These are examples of the class being used with different initializer arguments, method calls, and how it should behave.
# For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

1.
todo = TodoList.new
result = todo.add("Cleaning")
expect(result).to eq ["Cleaning"]

2.
todo = TodoList.new()
todo.add("Cleaning")
todo.add("Coding")
expect(todo.add).to eq ["Cleaning","Coding"]

3.
todo = TodoList.new()
todo.add("Cleaning")
todo.add("Coding")
todo.add("Gym")
todo.completed("Coding")
expect(todo.list).to eq ["Cleaning","Gym"]


4.
todo = TodoList.new()
todo.add("Cleaning")
todo.add("Cleaning")
expect{todo.list}.to raise_error "Task Already Added To The List"

5.
todo = TodoList.new()
todo.add("")
expect{todo.list}.to raise_error "List Is Empty"


## 4. Implement the Behaviour
# for each example you create as a test, implement the behaviour that allows the class to behave according to your example.
# At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.
# Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.

