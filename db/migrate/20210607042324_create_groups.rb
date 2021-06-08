class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.integer    :group_name,      null: false
      t.integer    :group_name_kana, null: false
      t.text       :text,            null: false
      t.integer    :place,           null: false
      t.integer    :description,     null: false
      t.integer    :date,            null: false
      t.integer    :prefecture_id,   null: false
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
