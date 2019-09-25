require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Shrek")
m2 = Movie.new("The Incredibles")
m3 = Movie.new("Ted")
m4 = Movie.new("The Godfather")

v1 = Viewer.new("John")
v2 = Viewer.new("Mark")
v3 = Viewer.new("Brad")
v4 = Viewer.new("Cindy")

q1 = QueueItem.new(m1, v1, 5)
q2 = QueueItem.new(m1, v2, 1)
q3 = QueueItem.new(m2, v2, 4)
q4 = QueueItem.new(m3, v2, 2)
q5 = QueueItem.new(m3, v2, 3)
q6 = QueueItem.new(m3, v3, 1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
