class RemoveSiteIdFromLogins < ActiveRecord::Migration
  def change
    remove_column :logins, :site_id
  end
end
