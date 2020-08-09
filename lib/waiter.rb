class Waiter

    attr_accessor :name, :yrs_experience
    @@all =[]

    def initialize(name, yrs_experience)
        self.name = name
        self.yrs_experience = yrs_experience
        @@all << self 
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select do |meals|
        meals.waiter == self
        end
    end

    def best_tipper
        Customer.all.find do |meals|
            meals.tip == tip
        end
    end

end