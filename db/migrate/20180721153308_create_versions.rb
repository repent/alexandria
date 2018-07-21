class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.string :title
      t.string :author
      t.string :number
      t.text :text
      t.belongs_to :document, foreign_key: true
      t.boolean :public_readable
      t.boolean :public_writeable

      t.timestamps
    end
  end
end
