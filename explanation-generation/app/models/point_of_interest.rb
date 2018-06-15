class PointOfInterest < ApplicationRecord
  belongs_to :scenario
  has_many :scores, dependent: :destroy
  has_many :people, through: :scores

  def self.with_most_pleasure
    joins(:scores).group(:point_of_interest_id, 'point_of_interests.id').select('point_of_interests.*', 'MAX(score) as mp')
  end

  def self.with_least_misery
    joins(:scores).group(:point_of_interest_id, 'point_of_interests.id').select('point_of_interests.*', 'MIN(score) as lm')
  end

  def most_pleasure_score
    self['mp']
  end

  def least_misery_score
    self['lm']
  end
end
