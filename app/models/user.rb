class User < ApplicationRecord
    # before_create do
    #     self.name = email.capitalize if name.blank?
    # end

    before_validation :normalize_name, on: :create
    has_many :products, dependent: :destroy
    has_one :account
    validates :name, presence: true
    validates :email, uniqueness: true

    after_initialize do |user|
        puts "You have initialized an object!"
    end

    after_find do |user|
        puts "You have found an object"
    end

    after_touch do |user|
        puts "You have touched an object"
    end

    after_save_commit :log_user_saved_to_db

    private
    def normalize_name
        self.name = name.downcase.titleize
    end
    def log_user_saved_to_db
        puts "User was saved to database"
    end


end
