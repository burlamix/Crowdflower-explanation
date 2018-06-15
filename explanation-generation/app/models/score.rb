class Score < ApplicationRecord
  belongs_to :person
  belongs_to :point_of_interest
  delegate :name, to: :point_of_interest
end
