class CreateAssembliesParts < ActiveRecord::Migration[7.0]
  def change
    create_table :assemblies_parts do |t|
      t.belongs_to :assembly, null: false, foreign_key: true
      t.belongs_to :part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
