class CreateClientProducts < ActiveRecord::Migration
  def change
    create_table :client_products do |t|
      t.references :client, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
