class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.belongs_to :user
      t.integer :position, array: true

      t.timestamps
    end
  end
end
