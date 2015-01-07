class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :uname
      t.datetime :dob
      t.string :gender
      t.integer :contact
      t.string :email
      t.string :mpass
      t.string :cmpass

      t.timestamps null: false
    end
  end
end
