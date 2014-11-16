class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact
      t.string :email
      t.string :type
      t.integer :company_id

      t.timestamps
    end
  end
end
