class BoatingTest
  attr_reader :student, :test_name, :instructor
  attr_accessor :test_status
  @@all = []

  def self.all
    @@all
  end

  def initialize(student, test_name, test_status, instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    @@all << self
  end

end
