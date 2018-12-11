class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :phone, :string
      t.column :website, :string
      t.column :hours, :string
      t.column :type_id, :integer

      t.timestamps
    end
  end
end
