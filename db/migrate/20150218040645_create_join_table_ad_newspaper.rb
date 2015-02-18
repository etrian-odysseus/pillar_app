class CreateJoinTableAdNewspaper < ActiveRecord::Migration
  def change
    create_join_table :ads, :newspapers do |t|
      t.integer :ad_id
      t.integer :newspaper_id
    end
  end
end
