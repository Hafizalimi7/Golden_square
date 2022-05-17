## 1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

'''ruby
is_true = check_text(text)
# * text is a string with word in it
# * method should return true if text includes #TODO
'''



# The method doesn't print anything or have any other side-effects
## 3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE

# 1 check_text("") Fail "Not a sentence"
# 2 check_text("How's your #TODO list going ?") => true
# 3 check_text("Is that a #TO list ?") => false
# 4 check_text("Let's look at that #todo list") => false

## 4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.