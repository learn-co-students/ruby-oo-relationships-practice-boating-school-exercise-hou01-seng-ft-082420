class Instructor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all.push(self)
    end
    def self.all
        @@all
    end
    def tests
        BoatingTest.all.select { |test| test.instructor == self}
    end 
    def passed_student
      (self.tests.select { |test| test.status == 'passed'}).collect{|test| test.student}  
    end
    
    def pass_student(student,test_name)
        arr = self.tests.select{ |test| test.student == student && test.test_name == test_name}
        if arr.length > 0
            test_index = BoatingTest.all.find_index(arr[0])
            BoatingTest.all[test_index].status = 'passed'
        else
            BoatingTest.new(student, test_name, "passed", self)
        end 
    end
        
    def fail_student(student,test_name)
        arr = self.tests.select {|test| test.student == student && test.test_name == test_name}
        arr.length > 0 ? (arr[0].status = "failed") : (BoatingTest.new(student,test_name,"failed",self))
    end
    def all_students
        self.tests.collect {|test| test.student}
    end
end