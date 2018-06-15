module Scenarios
  class CreateTaskFile
    include Command

    DELIMITER = "===\n".freeze

    output :file_path
    attr_accessor :file_path

    def call(scenario:, explanations:)

      filename = DateTime.now.to_s + '-' + scenario.name + '.txt'
      self.file_path = Rails.root.join('task_files', filename)

      File.open(file_path, 'w') do |f|
        scenario.people.each do |person|
          # Name
          f << scenario.name + "\n"
          # Preferences
          f << 'Preferences:'
          first_score = person.scores.order(:id).first
          f << first_score.score.to_s
          person.scores.where.not(id: first_score.id).order(:id).each do |s|
            f << ',' + s.score.to_s
          end
          f << "\n"
          # Sequence
          f << 'Sequence:'
          sequence_names = scenario.sequences.first.sequence["sequence_poi_names"]
          f << sequence_names.slice!(0)
          sequence_names.each{ |p| f << ',' + p }
          f << "\n"
          # Explanation name
          f << "Default\n"
          # Explanation
          f << explanations[person.name] + "\n"
          f << DELIMITER
        end
      end

    end
  end
end
