class CreateSmarts < ActiveRecord::Migration
  def change
    create_table :smarts do |t|
      t.text :pokemon
      t.text :trainer
      t.text :type1
      t.text :type2
      t.text :move1
      t.text :move2
      t.text :move3
      t.text :move4
      t.text :weakness1
      t.text :weakness2
      t.text :evolution1
      t.text :evolution2
      t.text :evolution3

      t.timestamps null: false
    end
  end
end
