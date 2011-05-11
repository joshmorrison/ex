class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :userID
      t.string :lastname
      t.string :firstname
      t.string :active
      t.string :userType
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
