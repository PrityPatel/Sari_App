class CreateSaris < ActiveRecord::Migration
  def change
    create_table :saris do |t|
      t.string :image
      t.string :story
      t.string :owner

      t.belongs_to :user, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
