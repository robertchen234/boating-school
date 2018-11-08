require_relative '../config/environment'

# Declare your variables here~~~
kevywevy = Instructor.new("kevin")
tony = Instructor.new("tony")
eric = Instructor.new("eric")

rob = Student.new("rob", "chen")
brian = Student.new("brian", "bri")
amir = Student.new("amir", "am")

test1 = BoatingTest.new(rob, "test 1", "passed", tony)
test2 = BoatingTest.new(brian, "test 2", "passed", kevywevy)
test3 = BoatingTest.new(amir, "test 3", "passed", eric)
test4 = BoatingTest.new(rob, "test 4", "failed", tony)
test5 = BoatingTest.new(amir, "test 5", "failed", kevywevy)

# don't remove!
binding.pry
0
