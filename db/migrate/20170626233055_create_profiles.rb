class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :last_name
      t.string :nickname
      t.string :document
      t.date :date_of_birth
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
