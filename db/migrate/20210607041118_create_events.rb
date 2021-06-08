class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string     :event_title,    null: false
      t.text       :text,           null: false
      t.integer    :group_name,     null: false
      t.integer    :place,          null: false
      t.integer    :category_id,    null: false
      t.integer    :description,    null: false
      t.integer    :date,           null: false
      t.integer    :prefecture_id,  null: false
      t.integer    :price,          null: false
      t.integer    :ticket,         null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
