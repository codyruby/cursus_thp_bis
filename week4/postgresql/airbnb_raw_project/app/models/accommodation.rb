class Accommodation < ApplicationRecord
    validates :available_beds, :price, presence: true,
    format: { with: /\A[+]?\d+\Z/}
    validates :description, length: { maximum: 140 },
    presence: true
    validates :has_wifi, :welcome_message, presence: true

    belongs_to :user
    belongs_to :city
    has_many :reservations
    
end
