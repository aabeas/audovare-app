class RemoveAccountRadioFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :account_radio, :string
  end
end
