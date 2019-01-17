class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :full_name
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
