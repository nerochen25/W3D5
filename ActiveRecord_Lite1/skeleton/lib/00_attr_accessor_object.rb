class AttrAccessorObject
  def self.my_attr_accessor(*names) #*names are many methods
    # 1. first passing in the methods as args
    # 2. iterate through every method
    # 3.
    names.each do |name|
      define_method(name) do #name here is the method, like Object.name = "object"
        instance_variable_get("@#{name}") #same as @name, getter method
      end

      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value)
      end
    end
  end
end
