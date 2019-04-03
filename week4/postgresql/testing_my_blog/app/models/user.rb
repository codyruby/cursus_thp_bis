class User < ApplicationRecord
    validates :first_name, :last_name, 
    presence: true
    validates :username, length: { minimum: 3 }

    has_many :books

    after_create :full_name

    def full_name
        "#{first_name} #{last_name}"
    end
end
