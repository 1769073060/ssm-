package com.rzk.controller;

import com.rzk.pojo.Books;
import com.rzk.service.BookService;
import com.rzk.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //controller 调 service 层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //进入登录页面
    @RequestMapping("/goLogin")
    public String login(){
        return "LoginBook";
    }

    //进入登录页面
    @RequestMapping("/login")
    public String login(HttpSession session,String username,String password,Model model){
        List<Books> book = bookService.queryAllBook();
        model.addAttribute("book",book);
        session.setAttribute("userLoginInfo",username);
        return "allBook";
    }

    //查询全部书籍,并返回到一个书记展示页面
    @RequestMapping("/allBook")
    public String bookDome(Model model){
        List<Books> book = bookService.queryAllBook();
        model.addAttribute("book",book);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "toAddBook";
    }

    //添加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("Books->"+books);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdateBook")
    public String toUpdatePaper(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("QBooks",books);
        return "updateBook";
    }

    //修改书籍
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("updateBooks->"+ books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //删除书籍
    @RequestMapping("/deleteBook/{bookID}")
    public String toDeleteBook(@PathVariable("bookID") int id){
        System.out.println("id->"+id);
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //注销用户
    @RequestMapping("/getOut")
    public String getOut(HttpSession session){
        session.removeAttribute("userLoginInfo");
        return "redirect:/index.jsp";
    }
}
