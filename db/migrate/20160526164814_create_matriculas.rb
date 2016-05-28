class CreateMatriculas < ActiveRecord::Migration
  def change
    create_table :matriculas do |t|
      t.integer :numero, null: false, unique: true
      t.string :semestre, null: false
      t.date :inicio
      t.date :fim
      t.decimal :valor, null: false
      t.boolean :pago
      t.references :aluno, index: true, foreign_key: true
      t.references :funcionario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
