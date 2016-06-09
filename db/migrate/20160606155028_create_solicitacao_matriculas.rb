class CreateSolicitacaoMatriculas < ActiveRecord::Migration
  def change
    create_table :solicitacao_matriculas do |t|
      t.decimal :valor, :precision => 5, :scale => 2, :default => 0.00
      t.integer :ano, null: false
      t.integer :semestre, null: false
      t.references :aluno, index: true, foreign_key: true
      #t.references :matricula, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
