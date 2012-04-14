class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :question1
      t.string :question2
      t.string :question3

      t.timestamps
    end
  end
end
