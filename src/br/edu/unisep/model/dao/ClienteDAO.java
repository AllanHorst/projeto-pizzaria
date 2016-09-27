package br.edu.unisep.model.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

import br.edu.unisep.hibernate.HibernateSessionFactory;
import br.edu.unisep.model.vo.ClienteVO;

public class ClienteDAO extends DAOGenerico<ClienteVO>{

	
	public List<ClienteVO> listar() {
		Session session = HibernateSessionFactory.getSession();
		
		Criteria crit = session.createCriteria(ClienteVO.class);
		
		List<ClienteVO> retorno = crit.list();
		
		return retorno;
	}
	
	public boolean salvarCliente(ClienteVO cliente) {

		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		
		try {
			session.save(cliente);
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
	
	public void excluir(ClienteVO cliente) {
		Session session = HibernateSessionFactory.getSession();
		
		Transaction trans = session.beginTransaction();
		
		try { 
			session.delete(cliente);
			trans.commit();
		} catch (Exception e) {
			trans.rollback();
		}
		
		session.close();
	}
	
}