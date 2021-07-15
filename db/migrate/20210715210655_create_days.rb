class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.datetime :date
      t.string :title
      t.text :content
      t.boolean :favorite

      t.timestamps
    end
  end
end
