class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.belongs_to :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
