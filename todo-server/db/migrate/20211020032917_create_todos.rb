class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :priority
      t.boolean :completed
      t.belongs_to :user, null: false, foreign_key:true
      
      t.timestamps
    end
  end
end
