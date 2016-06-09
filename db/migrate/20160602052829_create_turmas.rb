class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :codigo, null: false, default: 'T300', unique: true
      t.string :turno, null: false
      t.string :semestre, null: false
      t.integer :capacidade, null: false
      t.decimal :valor, null: false
      t.references :disciplina, index: true, foreign_key: true
      t.references :funcionario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
