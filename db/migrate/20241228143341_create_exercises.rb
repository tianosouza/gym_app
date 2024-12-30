class CreateExercises < ActiveRecord::Migration[8.0]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.text :instructions
      t.string :exercise_type
      t.boolean :is_favorite, default: false
      t.string :num_exercise
      #t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :exercises, :name, unique: true
  end
end
