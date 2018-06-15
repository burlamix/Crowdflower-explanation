class AddPersonProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :name, :string, null: false

    add_reference :people, :scenario, foreign_key: true
  end
end
