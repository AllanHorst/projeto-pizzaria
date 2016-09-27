package br.edu.unisep.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.unisep.model.dao.DAOGenerico;
import br.edu.unisep.model.vo.ClienteVO;
import br.edu.unisep.model.vo.ItemPedidoVO;
import br.edu.unisep.model.vo.PedidoVO;

@WebServlet("/restrito/finalizarPedido")
public class FinalizarPedidoServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		ClienteVO cliente = (ClienteVO) session.getAttribute("cliente");
		Map<Integer, ItemPedidoVO> carrinho = (Map<Integer, ItemPedidoVO>)
				session.getAttribute("carrinho");
		
		PedidoVO pedido = new PedidoVO();
		List<ItemPedidoVO> itensPedido = new ArrayList<>();
		
		for (ItemPedidoVO item : carrinho.values()) {
			item.setPedido(pedido);
			itensPedido.add(item);
		}
		
		pedido.setItensPedido(itensPedido);
		pedido.setCliente(cliente);
		
		DAOGenerico<PedidoVO> dao = new DAOGenerico<>();
		dao.salvar(pedido);
		
		session.removeAttribute("carrinho");
		session.removeAttribute("qtdeProdutosCarrinho");
		
		req.setAttribute("pedido", pedido);
		
		RequestDispatcher rd = req.getRequestDispatcher("restrito/finalizacao.jsp");
		rd.forward(req, resp);
		
	}
	
}