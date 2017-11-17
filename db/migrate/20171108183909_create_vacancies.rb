class CreateVacancies < ActiveRecord::Migration[5.1]
  def change
    create_table :vacancies do |t|
      t.string :pocFirstName
      t.string :pocLastName
      t.string :pocEmail
      t.string :title
      t.string :categories
      t.text :description
      t.text :script
      t.integer :budget

      t.timestamps
    end
  end
end
