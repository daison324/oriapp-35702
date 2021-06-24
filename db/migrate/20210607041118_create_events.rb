class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string     :event_title,    null: false
      t.text       :text,           null: false
      t.integer    :group_name,     null: false
      t.integer    :prefecture_id,  null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
