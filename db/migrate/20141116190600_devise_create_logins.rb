class DeviseCreateLogins < ActiveRecord::Migration
  def change
    change_table(:logins) do |t|
      ## Database authenticatable
      t.string :encrypted_password, null: false, default: ""

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip



    end



    # add_index :logins, :confirmation_token,   unique: true
    # add_index :logins, :unlock_token,         unique: true
  end
end
