class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :matricula, null: false, default: 'MF1001', unique: true
      t.string :nome, null: false
      t.date :nascimento, null: false
      t.string :sexo, null: false
      t.string :cpf, limite: 11, null: false, unique: true
      t.string :rg, null: false, unique: true
      t.string :endereco, null: false
      t.date :admissao, null: false
      t.decimal :salario
      t.string :carga_horaria
      t.string :turno
      t.string :status, null: false, default: "Ativo"
      t.references :user, index: true, foreign_key: true, null: false
      t.references :funcao, index: true, foreign_key: true, null: false

      t.timestamps null: false
      
    end
  end
end
