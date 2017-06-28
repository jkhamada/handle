class CreateAliases < ActiveRecord::Migration[5.0]
  def change
    create_table :aliases do |t|
      t.references :user, foreign_key: true
      t.string :facebook
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
