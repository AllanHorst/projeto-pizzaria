package br.edu.unisep.model.vo;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="pedido")
public class PedidoVO {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;

	@OneToOne
	@JoinColumn(name="idcliente")
	private ClienteVO cliente;
	
	@Column(name="status")
	private String status;
	
	@OneToMany
	@Column(name="idsabor")
	private Integer idsabor;

	@OneToMany(mappedBy="pedido")
	@Cascade({CascadeType.ALL})
	private List<ItemPedidoVO> itensPedido;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ClienteVO getCliente() {
		return cliente;
	}

	public void setCliente(ClienteVO cliente) {
		this.cliente = cliente;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getIdsabor() {
		return idsabor;
	}

	public void setIdsabor(Integer idsabor) {
		this.idsabor = idsabor;
	}

	public List<ItemPedidoVO> getItensPedido() {
		return itensPedido;
	}

	public void setItensPedido(List<ItemPedidoVO> itensPedido) {
		this.itensPedido = itensPedido;
	}
	
	
}