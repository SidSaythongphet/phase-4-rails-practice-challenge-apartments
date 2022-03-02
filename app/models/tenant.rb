class Tenant < ApplicationRecord
    has_many :leases, dependent: :destroy
    has_many :apartments, through: :leases

    validates :name, presence: true
    validates :name, length: { minimum: 2 }
    validates :age, numericality: { greater_than_or_equal_to: 18 }
end
