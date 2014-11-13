class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :organization
      t.string :role
      t.string :source
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
