class Gossip < ApplicationRecord
    validates :title, length: { in: 1..14}, presence: true
    validates :content, presence: true

    belongs_to :user
    has_and_belongs_to_many :tags
end
