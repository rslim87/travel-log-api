class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.string :city
      t.string :country
      t.string :month
      t.integer :year
      t.boolean :solo_travel

      t.timestamps
    end
  end
end
