class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :company_name
      t.text :ad_text

      t.timestamps null: false
    end
  end
end
