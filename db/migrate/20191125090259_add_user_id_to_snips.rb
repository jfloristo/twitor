class AddUserIdToSnips < ActiveRecord::Migration[6.0]
  def change
    add_column :snips, :user_id, :integer
  end
end
