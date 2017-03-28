class CreateVoterSupermen < ActiveRecord::Migration[5.0]
  def change
    create_table :voter_supermen do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
