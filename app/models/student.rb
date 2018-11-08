class Student

  attr_reader :first_name, :last_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.full_names
    all.map { |student| "#{student.first_name} #{student.last_name}"}
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(full_name)
    all.find { |student| "#{student.first_name} #{student.last_name}" == full_name }
  end

end
