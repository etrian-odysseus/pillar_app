class CreateNewspapers < ActiveRecord::Migration
  def change
    create_table :newspapers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
