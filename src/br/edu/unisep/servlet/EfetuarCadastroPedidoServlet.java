package br.edu.unisep.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unisep.model.vo.PedidoVO;

@WebServlet("/cadPedido")
public class EfetuarCadastroPedidoServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idcliente = req.getParameter("idcliente");
		String idsabor = req.getParameter("idsabor");
		String status = req.getParameter("status");

		PedidoVO pedido = new PedidoVO();

	}
}
