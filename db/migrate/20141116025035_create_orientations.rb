class CreateOrientations < ActiveRecord::Migration
  def change
    create_table :orientations do |t|
      t.string :comment
      t.integer :site_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
