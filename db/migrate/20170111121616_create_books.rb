class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :abstract
      t.string :state, default: "available"

      t.timestamps
    end
  end
end
