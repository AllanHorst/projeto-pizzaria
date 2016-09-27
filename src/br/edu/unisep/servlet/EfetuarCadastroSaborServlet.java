package br.edu.unisep.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.unisep.model.dao.ClienteDAO;
import br.edu.unisep.model.dao.SaborDAO;
import br.edu.unisep.model.vo.ClienteVO;
import br.edu.unisep.model.vo.SaborVO;

@WebServlet("/cadSabor")
public class EfetuarCadastroSaborServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nome = req.getParameter("nome");
		String descricao = req.getParameter("descricao");

		SaborVO sabor = new SaborVO();
		sabor.setNome(nome);
		sabor.setDescricao(descricao);

		SaborDAO dao = new SaborDAO();
		boolean retorno = dao.salvarSabor(sabor);

		if (retorno) {
			HttpSession session = req.getSession();
			session.setAttribute("sabor", sabor);

			resp.sendRedirect("/gerenciamento/restrito/sabores.jsp");
		} else {
			req.setAttribute("sabor", sabor);
			req.setAttribute("erro_cadastro", "Erro ao realizar cadastro. " + "Sabor já cadastrado");

			RequestDispatcher rd = req.getRequestDispatcher("sabores.jsp");
			rd.forward(req, resp);
		}

	}
}
