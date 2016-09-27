package br.edu.unisep.model.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import br.edu.unisep.hibernate.HibernateSessionFactory;
import br.edu.unisep.model.vo.UsuarioVO;

public class UsuarioDAO {

	
	public UsuarioVO obterUsuario(String usuario, String senha) {
		Session session = HibernateSessionFactory.getSession();
		
		Criteria crit = session.createCriteria(UsuarioVO.class);
		crit.add(Restrictions.eq("email", usuario));
		crit.add(Restrictions.eq("senha", senha));
		
		
		UsuarioVO user = (UsuarioVO) crit.uniqueResult();
		
		session.close(); 
		
		return user;
	}
	
	
}
