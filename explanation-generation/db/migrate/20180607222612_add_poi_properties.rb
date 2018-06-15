class AddPoiProperties < ActiveRecord::Migration[5.2]
  def change
    add_reference :point_of_interests, :scenario, foreign_key: true
  end
end
