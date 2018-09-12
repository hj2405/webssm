import com.ssm.dao.UserDao;
import com.ssm.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class UserDaoTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void testFindById(){
        User user = userDao.findById(1l);
        System.out.println(user.getUsername());
    }
}
