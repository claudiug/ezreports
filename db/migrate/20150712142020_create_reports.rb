class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :email
      t.integer :period
      t.boolean :subscribed
      t.string :generated_email
      t.timestamps null: false
    end
  end
end
