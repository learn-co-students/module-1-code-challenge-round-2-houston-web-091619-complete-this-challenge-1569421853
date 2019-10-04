require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("Chandon")
v2 = Viewer.new("Donna")
v3 = Viewer.new("Cherian")
v4 = Viewer.new("Chanell")

m1 = Movie.new("Hangover", 2)
m2 = Movie.new("Game Of Thrones", 3)
m3 = Movie.new("Bleach", 4)
m4 = Movie.new("Black Clover", 5)

q1 = QueueItem.new(m4, v1)
q2 = QueueItem.new(m3, v2)
q3 = QueueItem.new(m1, v3)
q4 = QueueItem.new(m2, v4)
q5 = QueueItem.new(m2, v1)
q6 = QueueItem.new(m1, v2)
q7 = QueueItem.new(m4, v3)
q8 = QueueItem.new(m3, v4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line




