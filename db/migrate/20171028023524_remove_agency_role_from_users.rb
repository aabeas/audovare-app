class RemoveAgencyRoleFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :agency_role, :boolean
  end
end
