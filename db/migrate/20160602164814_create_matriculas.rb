class CreateMatriculas < ActiveRecord::Migration
  def change
    create_table :matriculas do |t|
      t.string :semestre, null: false
      t.date :inicio
      t.date :fim
      t.decimal :valor, null: false
      t.boolean :pago
      t.string :status, default: "Pendente"
      t.references :aluno, index: true, foreign_key: true
      t.references :funcionario, index: true, foreign_key: true
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
