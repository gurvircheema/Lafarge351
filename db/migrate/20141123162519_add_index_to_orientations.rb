class AddIndexToOrientations < ActiveRecord::Migration
  def change
    add_index :orientations, [:site_id, :worker_id], :unique => true, :name => 'one orientation of worker per site'
  end
end
