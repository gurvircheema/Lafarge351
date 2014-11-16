class AddLoginIdToWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :login_id, :integer
  end
end
