# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160603221731) do

  create_table "alunos", force: :cascade do |t|
    t.string   "nome",        limit: 255,                                  null: false
    t.string   "sexo",        limit: 255,                                  null: false
    t.date     "nascimento",                                               null: false
    t.string   "endereco",    limit: 255,                                  null: false
    t.string   "telefone",    limit: 11,                                   null: false
    t.string   "cpf",         limit: 11,                                   null: false
    t.string   "rg",          limit: 255,                                  null: false
    t.decimal  "mensalidade",             precision: 10
    t.string   "status",      limit: 255,                default: "Ativo", null: false
    t.integer  "user_id",     limit: 4,                                    null: false
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "alunos", ["user_id"], name: "index_alunos_on_user_id", using: :btree

  create_table "cursos", force: :cascade do |t|
    t.string   "codigo",     limit: 255,                default: "C100", null: false
    t.string   "nome",       limit: 255,                                 null: false
    t.string   "duracao",    limit: 255,                                 null: false
    t.string   "tipo",       limit: 255,                                 null: false
    t.decimal  "valor",                  precision: 10,                  null: false
    t.string   "status",     limit: 255,                                 null: false
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string   "codigo",         limit: 255, default: "D200", null: false
    t.string   "nome",           limit: 255,                  null: false
    t.string   "status",         limit: 255,                  null: false
    t.integer  "funcionario_id", limit: 4
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "matricula_id",   limit: 4
  end

  add_index "disciplinas", ["funcionario_id"], name: "index_disciplinas_on_funcionario_id", using: :btree
  add_index "disciplinas", ["matricula_id"], name: "index_disciplinas_on_matricula_id", using: :btree

  create_table "disciplinas_matriculas", id: false, force: :cascade do |t|
    t.integer "disciplina_id", limit: 4, null: false
    t.integer "matricula_id",  limit: 4, null: false
  end

  add_index "disciplinas_matriculas", ["disciplina_id", "matricula_id"], name: "index_disciplinas_matriculas_on_disciplina_id_and_matricula_id", using: :btree
  add_index "disciplinas_matriculas", ["matricula_id", "disciplina_id"], name: "index_disciplinas_matriculas_on_matricula_id_and_disciplina_id", using: :btree

  create_table "funcaos", force: :cascade do |t|
    t.string   "cargo",      limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "matricula",     limit: 255,                default: "MF1001", null: false
    t.string   "nome",          limit: 255,                                   null: false
    t.date     "nascimento",                                                  null: false
    t.string   "sexo",          limit: 255,                                   null: false
    t.string   "cpf",           limit: 255,                                   null: false
    t.string   "rg",            limit: 255,                                   null: false
    t.string   "endereco",      limit: 255,                                   null: false
    t.date     "admissao",                                                    null: false
    t.decimal  "salario",                   precision: 10
    t.string   "carga_horaria", limit: 255
    t.string   "turno",         limit: 255
    t.string   "status",        limit: 255,                default: "Ativo",  null: false
    t.integer  "user_id",       limit: 4,                                     null: false
    t.integer  "funcao_id",     limit: 4,                                     null: false
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  add_index "funcionarios", ["funcao_id"], name: "index_funcionarios_on_funcao_id", using: :btree
  add_index "funcionarios", ["user_id"], name: "index_funcionarios_on_user_id", using: :btree

  create_table "matriculas", force: :cascade do |t|
    t.string   "semestre",       limit: 255,                                     null: false
    t.date     "inicio"
    t.date     "fim"
    t.decimal  "valor",                      precision: 10,                      null: false
    t.boolean  "pago"
    t.string   "status",         limit: 255,                default: "Pendente"
    t.integer  "aluno_id",       limit: 4
    t.integer  "funcionario_id", limit: 4
    t.integer  "curso_id",       limit: 4
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
  end

  add_index "matriculas", ["aluno_id"], name: "index_matriculas_on_aluno_id", using: :btree
  add_index "matriculas", ["curso_id"], name: "index_matriculas_on_curso_id", using: :btree
  add_index "matriculas", ["funcionario_id"], name: "index_matriculas_on_funcionario_id", using: :btree

  create_table "matriculas_turmas", id: false, force: :cascade do |t|
    t.integer "matricula_id", limit: 4, null: false
    t.integer "turma_id",     limit: 4, null: false
  end

  add_index "matriculas_turmas", ["matricula_id", "turma_id"], name: "index_matriculas_turmas_on_matricula_id_and_turma_id", using: :btree
  add_index "matriculas_turmas", ["turma_id", "matricula_id"], name: "index_matriculas_turmas_on_turma_id_and_matricula_id", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true, using: :btree
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree

  create_table "turmas", force: :cascade do |t|
    t.string   "codigo",       limit: 255, default: "T300", null: false
    t.string   "turno",        limit: 255,                  null: false
    t.string   "semestre",     limit: 255,                  null: false
    t.integer  "capacidade",   limit: 4,                    null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "matricula_id", limit: 4
  end

  add_index "turmas", ["matricula_id"], name: "index_turmas_on_matricula_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.integer  "role",                   limit: 4,   default: 0
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "alunos", "users"
  add_foreign_key "disciplinas", "funcionarios"
  add_foreign_key "disciplinas", "matriculas"
  add_foreign_key "funcionarios", "funcaos"
  add_foreign_key "funcionarios", "users"
  add_foreign_key "matriculas", "alunos"
  add_foreign_key "matriculas", "cursos"
  add_foreign_key "matriculas", "funcionarios"
  add_foreign_key "turmas", "matriculas"
end
