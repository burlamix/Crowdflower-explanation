class Scenario < ApplicationRecord
  has_many :people, dependent: :destroy
  has_many :point_of_interests, dependent: :destroy
  has_many :sequences, dependent: :destroy
end
