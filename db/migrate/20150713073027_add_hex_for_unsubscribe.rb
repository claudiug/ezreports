class AddHexForUnsubscribe < ActiveRecord::Migration
  def change
    add_column :reports, :subscribe_hash, :string
  end
end
