class Product < ApplicationRecord
    belongs_to :user, touch: true, counter_cache: true
    validates :name, presence: true   
    validates :size, inclusion: {in: ["small", "medium"]}
    validates :size, presence: true,on: :create

    after_touch do 
        puts "An Product was touched"
    end
    after_destroy :log_destroy_action
    def log_destroy_action
        puts "Product destroyed"
    end
end
