class AddForeignKeys < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :venues do |t|
      t.string :venue_type
      t.string :venue_name
      t.string :venue_address
      t.string :phone
      t.string :website
      t.timestamps
    end

    create_table :programs do |t|
      t.references :venue
      t.string :program_name
      t.integer :age_start
      t.integer :age_end
      t.string :cost
      t.string :hours_open
      t.string :hours_close
      t.timestamps
    end
  end
end
