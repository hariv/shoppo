class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :location

      t.timestamps
    end
  end
end
