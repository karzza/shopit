class CreateWholesales < ActiveRecord::Migration
  def change
    create_table :wholesales do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
