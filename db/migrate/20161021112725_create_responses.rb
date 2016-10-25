class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.string :name
      t.string :mail
      t.boolean :html
      t.boolean :css
      t.boolean :js
      t.boolean :react

      t.timestamps
    end
  end
end
