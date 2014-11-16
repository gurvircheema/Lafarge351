class AddLoggableIdToLogin < ActiveRecord::Migration
  def change
    add_column :logins, :loggable_id, :integer
    add_column :logins, :loggable_type, :string
  end
end
