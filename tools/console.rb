require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end
#Begin test variables
s1 = Student.new("Ben")
s2 = Student.new("Alex")
s3 = Student.new("Marcus")
s4 = Student.new("Mike")
i1 = Instructor.new("Raul")
i2 = Instructor.new("Antonio")
i3 = Instructor.new("Joe")
bt1 = BoatingTest.new(s4,"turn","passed",i1)
bt2 = BoatingTest.new(s3,"stop","passed",i2)
bt3 = BoatingTest.new(s2,"highway","passed",i3)
bt4 = BoatingTest.new(s1,"written","failed",i1)
bt5 = BoatingTest.new(s3,"written","failed",i3)
#End test variables
binding.pry
0 #leave this here to ensure binding.pry isn't the last line