## 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
# Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


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

class MusicPlaylist
def initialize
@list = []
end
def add(list)
@list << list
end
def track_list
return @list
end
end



## 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.
# These are examples of the class being used with different initializer arguments, method calls, and how it should behave.
# For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.
1.
music = MusicPlaylist.new
result = music.track_list
expect(result).to eq []

2.
music = MusicPlaylist.new
music.add("Micheal Jackson - Beat It")
expect(music.add).to eq ["Micheal Jackson - Beat It"]

3.
music = MusicPlaylist.new
music.add("Micheal Jackson - Beat It")
music.add("Jackson 5 - Remember")
expect(music.add).to eq ["Micheal Jackson - Beat It","Jackson 5 - Remember"]

4.
music = MusicPlaylist.new
music.add("")
expect{music.add}.to raise_error "Not added to Play List"


## 4. Implement the Behaviour
# for each example you create as a test, implement the behaviour that allows the class to behave according to your example.
# At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.
# Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.

 
 

  
 
