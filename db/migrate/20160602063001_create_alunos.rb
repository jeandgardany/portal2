class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :matricula, limit: 6, null: false, unique: true, default: "160000"
      t.string :nome, null: false
      t.string :sexo, null: false
      t.date :nascimento, null: false
      t.string :endereco, null: false
      t.string :telefone, limit: 11, null: false
      t.string :cpf, limit: 11, null: false, unique: true
      t.string :rg, null: false, unique: true
      t.string :status, null: false, default: "Ativo"
      t.references :user, index: true, foreign_key: true, null: false, unique: true

      t.timestamps null: false
    end
  end
end
