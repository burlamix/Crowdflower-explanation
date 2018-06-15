class CreateSequences < ActiveRecord::Migration[5.2]
  def change
    create_table :sequences do |t|
      t.json :sequence
      t.string :strategy, null: false
      t.belongs_to :scenario, index: true
    end
  end
end
