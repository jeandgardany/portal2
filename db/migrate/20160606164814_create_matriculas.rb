class CreateMatriculas < ActiveRecord::Migration
  def change
    create_table :matriculas do |t|
      t.string :semestre, null: false
      t.date :inicio
      t.date :fim
      t.decimal :ap1, :precision => 5, :scale => 2, :default => 0.01
      t.decimal :ap2, :precision => 5, :scale => 2, :default => 0.02
      t.decimal :ap3, :precision => 5, :scale => 2, :default => 0.03
      t.integer :faltas
      t.references :aluno, index: true, foreign_key: true
      t.references :funcionario, index: true, foreign_key: true
      t.references :turma, index: true, foreign_key: true
      t.references :solicitacao_matricula, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
