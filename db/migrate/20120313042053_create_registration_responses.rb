class CreateRegistrationResponses < ActiveRecord::Migration
  def change
    create_table :registration_responses do |t|
      t.integer :registration_id
      t.string :response1
      t.string :response2
      t.string :response3

      t.timestamps
    end
  end
end
