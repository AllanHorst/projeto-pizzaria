package br.edu.unisep.model.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

import br.edu.unisep.hibernate.HibernateSessionFactory;
import br.edu.unisep.model.vo.SaborVO;

public class SaborDAO extends DAOGenerico<SaborVO>{

	public List<SaborVO> listar() {
		Session session = HibernateSessionFactory.getSession();
		
		Criteria crit = session.createCriteria(SaborVO.class);
		
		List<SaborVO> retorno = crit.list();
		
		return retorno;
	}
	
	
	public boolean salvarSabor(SaborVO sabor) {

		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		
		try {
			session.save(sabor);
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
	
	public void excluir(SaborVO sabor) {
		Session session = HibernateSessionFactory.getSession();
		
		Transaction trans = session.beginTransaction();
		
		try { 
			session.delete(sabor);
			trans.commit();
		} catch (Exception e) {
			trans.rollback();
		}
		
		session.close();
	}
}
