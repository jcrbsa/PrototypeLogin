package meupacote;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;


public class MeuBean {
	
	public String nome = null;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String acao(){
		boolean sucesso = true;
				FacesContext context = FacesContext.getCurrentInstance();
		if(nome != null){
			for (int i = 0; i < nome.length(); i++) {
				char c = nome.charAt(i);
				if (!Character.isLetter(c) && !Character.isSpaceChar(c)){
					String msg = "Digite somente caracteres alfabeticos";
					FacesMessage message = new FacesMessage(msg);
					context.addMessage("formulario", message);
					sucesso = false;
					break;
				}
				
			}
		}else {
			sucesso = false;
		}
		return (sucesso ? "sucesso" : "falha");

	}
	
	
	
}
