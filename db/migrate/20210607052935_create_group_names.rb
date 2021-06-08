class CreateGroupNames < ActiveRecord::Migration[6.0]
  def change
    create_table :group_names do |t|

      t.timestamps
    end
  end
end
