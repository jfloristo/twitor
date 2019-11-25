class CreateSnips < ActiveRecord::Migration[6.0]
  def change
    create_table :snips do |t|
      t.text :snip

      t.timestamps
    end
  end
end
