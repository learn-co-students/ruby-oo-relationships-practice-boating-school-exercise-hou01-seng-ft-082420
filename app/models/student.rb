class Student
    attr_accessor :first_name
    @@all = []
   def initialize(first_name)
       @first_name = first_name
       self.class.all.push(self)
   end
   def self.all
       @@all
   end
   def add_boating_test(test_name,status,instructor)
       BoatingTest.new(self,test_name,status,instructor)
   end
   def tests
       BoatingTest.all.select {|test| test.student == self}
   end
   
   def all_instructors
       self.tests.collect{ |test| test.instructor } 
   end
   def self.find_student(first_name)
       self.all.find {|student| student.first_name == first_name}
   end
   def grade_percentage
       ((self.tests.select {|test| test.status == "passed"}).length).to_f / (self.tests.length).to_f
   end
end