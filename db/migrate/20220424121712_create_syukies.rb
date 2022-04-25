class CreateSyukies < ActiveRecord::Migration[6.0]
  def change
    create_table :syukies do |t|
      t.text :diary
      t.integer :point, null: false
      t.date :date, null: false
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end
