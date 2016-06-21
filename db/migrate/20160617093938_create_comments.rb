class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :voter, index: true, foreign_key: true
      t.references :candidate, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
