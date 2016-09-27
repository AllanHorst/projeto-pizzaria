package br.edu.unisep.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unisep.model.vo.ItemPedidoVO;

@WebServlet("/escolhaSabor")
public class EscolhaSaborServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String tamanho = req.getParameter("tamanho");
		
		ItemPedidoVO item = new ItemPedidoVO();
		item.setTamanho(Integer.parseInt(tamanho));
		
		

		
		
	}
}
