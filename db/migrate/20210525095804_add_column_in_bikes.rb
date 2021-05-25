class AddColumnInBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :name, :string
  end
end
