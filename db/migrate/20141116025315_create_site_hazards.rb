class CreateSiteHazards < ActiveRecord::Migration
  def change
    create_table :site_hazards do |t|
      t.integer :site_id
      t.integer :hazard_id

      t.timestamps
    end
  end
end
