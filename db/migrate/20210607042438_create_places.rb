class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|

      t.integer :place,       null: false
      t.integer :group_name,  null: false
      t.timestamps
    end
  end
end
