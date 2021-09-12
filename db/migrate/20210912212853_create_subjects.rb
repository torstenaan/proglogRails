class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name

      t.timestamps
    end

    create_table :activities_subjects, id: false do |t|
      t.belongs_to :activity
      t.belongs_to :subject
    end
  end
end
