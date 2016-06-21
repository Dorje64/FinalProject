class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.text :plan
      t.string :loaction

      t.timestamps null: false
    end
  end
end
