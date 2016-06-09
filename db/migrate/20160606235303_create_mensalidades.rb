class CreateMensalidades < ActiveRecord::Migration
  def change
    create_table :mensalidades do |t|
      t.boolean :pago
      t.integer :mes, null: false
      t.integer :ano, null: false
      t.references :aluno, index: true, foreign_key: true
      t.references :solicitacao_matricula, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
