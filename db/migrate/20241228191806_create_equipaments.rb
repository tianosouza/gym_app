class CreateEquipaments < ActiveRecord::Migration[8.0]
  def change
    create_table :equipaments do |t|
      t.string :name

      t.timestamps
    end
  end
end
