class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.text :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
