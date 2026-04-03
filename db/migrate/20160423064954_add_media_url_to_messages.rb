class AddMediaUrlToMessages < ActiveRecord::Migration[4.2]
  def change
    add_column :messages, :media_url, :string
  end
end
