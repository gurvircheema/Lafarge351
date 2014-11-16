class CreateHazards < ActiveRecord::Migration
  def change
    create_table :hazards do |t|
      t.string :name

      t.timestamps
    end
  end
end
