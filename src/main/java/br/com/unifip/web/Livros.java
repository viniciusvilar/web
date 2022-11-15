package br.com.unifip.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Livros
 */
@WebServlet("/livros")
public class Livros extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private List<BibliotecaLivro> livros = new ArrayList<BibliotecaLivro>();
    public Livros() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("livros", livros);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("mostrarLivro.jsp");
		dispatcher.forward(request, response);
		//doGet(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BibliotecaLivro livro3 = new BibliotecaLivro();
		String idParam = request.getParameter("nameCode");
		String nameParam = request.getParameter("nameName");
		livro3.setId(Integer.parseInt(idParam));
		livro3.setName(nameParam);
		livros.add(livro3);

		request.setAttribute("livros", livros);
		doGet(request, response);
	}
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}