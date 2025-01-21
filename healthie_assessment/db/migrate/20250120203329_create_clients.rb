class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :subscription, default: 'basic'
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end

    add_index :clients, :email, unique: true
  end
end