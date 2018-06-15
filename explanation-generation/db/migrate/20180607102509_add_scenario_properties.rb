class AddScenarioProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :scenarios, :name, :string, null: false
    add_column :scenarios, :description, :string, null: false
    add_column :scenarios, :persona, :string, null: false
  end
end
