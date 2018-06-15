module SequenceStrategies
  class LmMpWmStrategy
    include Command

    THRESHOLD = 4
    STRATEGY = 'Least Misery + Most Pleasure + Without Misery'.freeze

    output :sequence
    attr_accessor :sequence

    def call(scenario:)
      scenario = scenario
      points = scenario.point_of_interests

      # # Without Misery
      points = points.where.not(id: points.joins(:scores).where('scores.score < ?', THRESHOLD).ids)

      # # Calculate Most Pleasure and Least Misery
      # points = points.with_most_pleasure.with_least_misery
      self.sequence = points.joins(:scores)
                            .group(:point_of_interest_id, 'point_of_interests.id')
                            .order('MAX(score) + MIN(score) DESC')

      # Persist sequence
      sequence_json = {}
      sequence_json[:sequence_poi_names] = []
      sequence_json[:sequence_poi_ids] = []
      sequence.each_with_index do |poi, index|
        sequence_json[:sequence_poi_names][index] = poi.name
        sequence_json[:sequence_poi_ids][index] = poi.id
      end
      seq = Sequence.find_or_create_by(scenario: scenario, strategy: STRATEGY)
      seq.update(sequence: sequence_json)
    end
  end
end
