class CreateFuncaos < ActiveRecord::Migration
  def change
    create_table :funcaos do |t|
      t.string :cargo, null: false, unique: true

      t.timestamps null: false
    end
  end
end
