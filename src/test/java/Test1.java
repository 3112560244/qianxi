import com.qx.pojo.Books;
import com.qx.pojo.Employee;
import com.qx.service.BookService;
import com.qx.service.EmployeeService;
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
        EmployeeService employeeService =(EmployeeService) context.getBean("EmployeeServiceImpl");
        for (Employee employee:employeeService.findAll()){
            System.out.println(employee);
        }
    }
}
