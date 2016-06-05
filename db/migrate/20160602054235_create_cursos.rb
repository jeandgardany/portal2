class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :codigo, null: false, default: 'C100', unique: true
      t.string :nome, null: false
      t.string :duracao, null: false
      t.string :tipo, null: false
      t.decimal :valor, null: false
      t.string :status, null: false

      t.timestamps null: false
    end
  end
end
