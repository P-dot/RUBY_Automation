module Module_explanation
   def method_class
     return "This the module with its method."
   end 
end

class Class_1
  include Module_explanation
end

class Class_2
  include Modeule_explanation
end

c_1 = Class_1.new
c_2 = Class_2.new

puts c_1.method_class
puts c_2.method_class


