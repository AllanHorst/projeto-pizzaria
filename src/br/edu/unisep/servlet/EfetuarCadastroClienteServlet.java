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
import br.edu.unisep.model.vo.ClienteVO;

@WebServlet("/cadCliente")
public class EfetuarCadastroClienteServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nome = req.getParameter("nome");
		String telefone = req.getParameter("telefone");
		String endereco = req.getParameter("endereco");

		ClienteVO cliente = new ClienteVO();
		cliente.setNome(nome);
		cliente.setEndereco(endereco);
		cliente.setTelefone(telefone);

		ClienteDAO dao = new ClienteDAO();
		boolean retorno = dao.salvarCliente(cliente);

		if (retorno) {
			HttpSession session = req.getSession();
			session.setAttribute("cliente", cliente);

			resp.sendRedirect("gerenciamento/restrito/clientes.jsp");
		} else {
			req.setAttribute("cliente", cliente);
			req.setAttribute("erro_cadastro", "Erro ao realizar cadastro. " + "Usuário já cadastrado");

			RequestDispatcher rd = req.getRequestDispatcher("acesso.jsp");
			rd.forward(req, resp);
		}

	}

}
