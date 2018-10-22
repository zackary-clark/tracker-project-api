class CreateBodyweights < ActiveRecord::Migration[5.2]
  def change
    create_table :bodyweights do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.datetime :date
      t.float :weight
      t.string :notes

      t.timestamps
    end
  end
end
