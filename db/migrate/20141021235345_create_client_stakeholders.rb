class CreateClientStakeholders < ActiveRecord::Migration
  def change
    create_table :client_stakeholders do |t|
      t.references :client, index: true
      t.references :stakeholder, index: true

      t.timestamps
    end
  end
end
