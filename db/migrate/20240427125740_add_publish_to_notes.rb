class AddPublishToNotes < ActiveRecord::Migration[7.1]
  def change
    add_column :notes, :publish, :boolean, default: false
  end
end