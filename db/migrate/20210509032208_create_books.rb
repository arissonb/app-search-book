class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.binary :image
      t.integer :status

      t.timestamps
    end
  end
end
