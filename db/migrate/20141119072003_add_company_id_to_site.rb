class AddCompanyIdToSite < ActiveRecord::Migration
  def change
    add_column :sites, :company_id, :integer
  end
end
