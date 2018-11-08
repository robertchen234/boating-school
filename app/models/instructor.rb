class Instructor
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def boating_tests
    BoatingTest.all.select { |test| test.instructor == self }
  end

  def fail_student(student_name, test_name)
    boating_tests.map do |test|
      if test.student.full_name == student_name && test.test_name == test_name
        test.test_status = "failed"
      end
    end
  end

  def pass_student(student_name, test_name)
    boating_tests.map do |test|
      if test.student.full_name == student_name && test.test_name == test_name
        test.test_status = "passed"
      end
    end
  end

end
