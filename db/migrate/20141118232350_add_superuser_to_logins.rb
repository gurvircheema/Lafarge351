class AddSuperuserToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :superuser, :boolean
  end
end
