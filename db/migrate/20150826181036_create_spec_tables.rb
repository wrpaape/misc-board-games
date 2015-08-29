class CreateSpecTables < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.integer :score
      t.integer :min
      t.integer :max
      t.belongs_to :game
    end

    create_table :players do |t|
      t.integer :default
      t.integer :min
      t.integer :max
      t.integer :levels
      t.belongs_to :spec
    endx

    create_table :layouts do |t|
      t.string :type
      t.belongs_to :spec
    end

    create_table :dimensions do |t|
      t.string :type
      t.integer :default
      t.integer :min
      t.integer :max
      t.belongs_to :layout
    end
  end
end
