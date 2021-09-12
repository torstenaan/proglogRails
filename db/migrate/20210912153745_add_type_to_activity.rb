class AddTypeToActivity < ActiveRecord::Migration[6.1]
  def change
    add_reference :activities, :type, null: false, foreign_key: true
  end
end
