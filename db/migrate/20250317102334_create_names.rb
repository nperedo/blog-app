class CreateNames < ActiveRecord::Migration[8.0]
  def change
    create_table :names do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
