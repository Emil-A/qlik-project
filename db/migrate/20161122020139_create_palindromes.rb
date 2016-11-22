class CreatePalindromes < ActiveRecord::Migration
  def change
    create_table :palindromes do |t|
      t.string :user
      t.text :body

      t.timestamps null: false
    end
  end
end
