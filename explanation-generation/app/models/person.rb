class Person < ApplicationRecord
  belongs_to :scenario
  has_many :scores, dependent: :destroy
  has_many :point_of_interests, through: :scores

  accepts_nested_attributes_for :scores
end
