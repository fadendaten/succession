class CreateSuccessionEntities < ActiveRecord::Migration
  def change
    create_table :succession_entities do |t|
      t.integer :parent_id
      t.string :parent_type
      t.integer :rank, default: 0

      t.timestamps
    end
  end
end
