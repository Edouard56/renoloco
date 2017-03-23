class AddReferencesToMatches < ActiveRecord::Migration[5.0]
  def change
    add_reference :matches, :pro, foreign_key: true
  end
end
