class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :manager_id

      t.timestamps
    end
  end
end
