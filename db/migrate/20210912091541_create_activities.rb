class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.date :date
      t.string :link
      t.integer :duration
      t.text :comment

      t.timestamps
    end
  end
end
