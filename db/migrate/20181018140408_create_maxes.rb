class CreateMaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :maxes do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.datetime :date
      t.float :squat1RM
      t.float :bench1RM
      t.float :deadlift1RM
      t.float :press1RM

      t.timestamps
    end
  end
end
