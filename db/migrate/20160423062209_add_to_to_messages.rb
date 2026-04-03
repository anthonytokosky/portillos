class AddToToMessages < ActiveRecord::Migration[4.2]
  def change
    add_column :messages, :to, :string
  end
end
