class CreateEmailPools < ActiveRecord::Migration
  def change
    create_table :email_pools do |t|
      t.string :email
      t.integer :report_id
      t.timestamps null: false
    end
  end
end
