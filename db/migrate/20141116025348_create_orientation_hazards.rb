class CreateOrientationHazards < ActiveRecord::Migration
  def change
    create_table :orientation_hazards do |t|
      t.integer :orientation_id
      t.integer :hazard_id

      t.timestamps
    end
  end
end
