class CreateVoters < ActiveRecord::Migration[5.2]
  def change
    create_table :voters do |t|
      t.string :first_name
      t.string :last_name
      t.string :precinct
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end