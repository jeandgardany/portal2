module MensalidadesHelper
	def formatar_boolean(pago)
		html = ""
		if pago == true
			html = "Sim"
		elsif pago == false
			html = "Não"
		end
		html
	end
end
