class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.string :content
      t.integer :recipient

      t.timestamps
    end
  end
end
