class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :codigo, null: false, default: "D200", unique: true
      t.string :nome, null: false
      t.string :status, null: false
      t.references :funcionario, index: true, foreign_key: true
      t.references :curso, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
