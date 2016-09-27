package br.edu.unisep.model.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

import br.edu.unisep.hibernate.HibernateSessionFactory;
import br.edu.unisep.model.vo.PedidoVO;

public class PedidoDAO {

	public List<PedidoVO> listar() {
		Session session = HibernateSessionFactory.getSession();
		
		Criteria crit = session.createCriteria(PedidoVO.class);
		
		List<PedidoVO> retorno = crit.list();
		
		return retorno;
	}
	
	public boolean salvarPedido(PedidoVO pedido) {

		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		
		try {
			session.save(pedido);
			trans.commit();
		} catch(ConstraintViolationException e) {
			e.printStackTrace();
			trans.rollback();
			return false;
		} finally {
			session.close();
		}
		
		return true;
	}
	
	public void excluir(PedidoVO pedido) {
		Session session = HibernateSessionFactory.getSession();
		
		Transaction trans = session.beginTransaction();
		
		try { 
			session.delete(pedido);
			trans.commit();
		} catch (Exception e) {
			trans.rollback();
		}
		
		session.close();
	}
	
}
