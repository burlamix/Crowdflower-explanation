class AddScoreProperties < ActiveRecord::Migration[5.2]
  def change
    add_reference :scores, :person, foreign_key: true
    add_reference :scores, :point_of_interest, foreign_key: true
  end
end
