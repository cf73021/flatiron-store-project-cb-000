class CreateLineItems < ActiveRecord::Migration
  def change
    create_table(:line_items) do |t|
      t.references :cart, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :quantity, default: 1
    end
  end
end
