enum role: [ :aluno, :atendente, :coordenador, :professor, :administrador ]
module RailsAdmin
  def self.table_name_prefix
    'rails_admin_'
  end
end
