class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.integer :site_id
      t.string :email

      t.timestamps
    end
  end
end
