class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :status
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
