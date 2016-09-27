package br.edu.unisep.model.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table(name="usuario")
	public class UsuarioVO {

		@Id
		@Column(name="id_user")
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private Integer id;
		
		@Column(name="ds_email")
		private String email;
		
		@Column(name="ds_senha")
		private String senha;
		
		@Column(name="permissao")
		private Integer permissao;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getSenha() {
			return senha;
		}

		public void setSenha(String senha) {
			this.senha = senha;
		}

		public Integer getPermissao() {
			return permissao;
		}

		public void setPermissao(Integer permissao) {
			this.permissao = permissao;
		}
	}
