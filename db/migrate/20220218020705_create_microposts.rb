class CreateMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :microposts do |t|
      t.text :content, null: false
      t.boolean :allow
      t.string :radio_type
      t.timestamps
    end
  end
end
