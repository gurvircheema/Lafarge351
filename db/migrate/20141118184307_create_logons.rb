class CreateLogons < ActiveRecord::Migration
  def change
    create_table :logons do |t|
      t.integer :worker_id
      t.integer :site_id
      t.datetime :logout_time

      t.timestamps
    end
  end
end
