module AlunosHelper
	:current_user

	def formata_telefone(n_telefone)
  		tel_formatado = "("
  		tel_formatado << n_telefone[0..1]
  		tel_formatado << ")"
  		tel_formatado << n_telefone[2..6]
  		tel_formatado << "-"
  		tel_formatado << n_telefone[7..10]
  		tel_formatado
	end
  def formata_cpf(n_cpf)
      cpf_formatado = n_cpf[0..2]
      cpf_formatado << "."
      cpf_formatado << n_cpf[3..5]
      cpf_formatado << "."
      cpf_formatado << n_cpf[6..8]
      cpf_formatado << "-"
      cpf_formatado << n_cpf[9..10]
      cpf_formatado
  end
  def formata_rg(n_rg)
      rg_formatado = n_rg[0..1]
      rg_formatado << ")"
      rg_formatado << n_rg[2..6]
      rg_formatado << "-"
      rg_formatado << n_rg[7..10]
      rg_formatado
  end
end
