class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.text :content
      t.integer :category
      t.text :solution
      t.date :due_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
