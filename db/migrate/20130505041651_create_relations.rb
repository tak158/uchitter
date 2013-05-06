class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :user, index: true
      t.integer :to_user

      t.timestamps
    end
  end
end
