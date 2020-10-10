class Waiter
attr_accessor :name, :yrs_experience

@all = [] 

def initialize(name, yrs_experience)
@name = name
@yrs_experience = yrs_experience


@@all << self
end

def self.all
@@all
end

#def initialize(waiter, customer, total, tip=0)
def new_meal(customer,total,tip=0)
Meal.mew(self,customer,total, tip)
end

def meals
Meal.all.select{|meal|meal.waiter == self}
end

#using #meals, then return the customer of the meal with the highest tip
def best_tipper
    generous = meals.max do |meal_a, meal_b|
        meal_a.tip <=> meal_b.tip
    end
    generous.customer
end


end