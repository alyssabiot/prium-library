class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :abstract
      t.string :aasm_state

      t.timestamps
    end
  end
end
