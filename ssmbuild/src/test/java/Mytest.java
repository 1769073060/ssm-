import com.rzk.dao.BookMapper;
import com.rzk.pojo.Books;
import com.rzk.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class Mytest {
    @Test
    public void dome() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = (BookService) context.getBean("BookServiceImpl");
        List<Books> list = bookServiceImpl.queryAllBook();
        for (Books books : list) {
            System.out.println(books);
        }
    }
}
