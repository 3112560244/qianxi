import com.qx.pojo.Books;
import com.qx.pojo.Dept;
import com.qx.service.BookService;
import com.qx.service.DeptService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test1 {


    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl =(BookService) context.getBean("BookServiceImpl");
        for (Books books:bookServiceImpl.queryAllBook()){
            System.out.println(books);
        }
    }

    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        DeptService DeptServer =(DeptService) context.getBean("DeptServiceImpl");
        for (Dept dept:DeptServer.findAllDept()){
            System.out.println(dept);
        }
    }
}
