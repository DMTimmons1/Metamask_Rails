class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :eth_address
      t.string :eth_nonce
      t.string :username

      t.timestamps
    end
  end
end
