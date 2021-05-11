class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title, null: false, limit: 100
      t.string :description,  null: false, limit: 260
      t.string :author, null: false, limit: 100
      t.binary :image
      t.integer :status

      t.timestamps
    end
  end
end
