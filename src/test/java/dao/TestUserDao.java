package dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import com.edison.entity.User;

public class TestUserDao {
	
	   private SqlSessionFactory factory;

	   @Before
	    public void setUp() throws IOException {
	        String resource = "mybatis-configuration.xml";
	        factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream(resource));
	    }

	    @Test
	    public void selectUserById() {
	        try (SqlSession session = factory.openSession()) {
	            User user = session.selectOne("namespace.selectUserById", 1);
	            System.out.println(user);
	        }
	    }
	    
	    @Test
	    public void selectUserByName() {
	        try (SqlSession session = factory.openSession()) {
	            List<User> users = session.selectList("namespace.selectUserByName", "javen");
	            for (User user : users) {
	                System.out.println(user);
	            }
	        }
	    }

}
