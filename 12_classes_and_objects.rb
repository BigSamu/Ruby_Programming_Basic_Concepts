
# ------------------
# 1) Class
# ------------------

class Car 
    # 1.1) Class Variable
    @name 
    @model
    @topspeed

    # 1.2) Init Method (Sort of Constructor)
    def initialize(name, model, topspeed)
        @name = name
        @model = model
        @topspeed = topspeed
    end

    # 1.3) Class Methods
    def getName()
        puts "Car name is #{@name}"
    end

    def setName(name)
        @name = name
    end
end

# -------------------------------
# 2) Object or Instance of Class
# -------------------------------

car1 = Car.new('Mercedez', 2020,100)
car1.getName()
# output: Car name is Mercedez

car1.setName('Toyota')
car1.getName()
# output: Car name is Toyota

