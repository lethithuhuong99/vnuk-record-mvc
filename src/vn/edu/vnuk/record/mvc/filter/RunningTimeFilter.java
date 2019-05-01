/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author michel
 */
@WebFilter("/*")
public class RunningTimeFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        
        long initialTime = System.currentTimeMillis();
        
        chain.doFilter(request, response);
        
        long finalTime = System.currentTimeMillis();
        
        String uri = ((HttpServletRequest)request).getRequestURI();
        String parameter = ((HttpServletRequest) request).getParameter("action");
        
        String loggingMessage = parameter != null ?
        	String.format("Running %s?action=%s took %sms.", uri, parameter, finalTime - initialTime):
        	String.format("Running %s took %sms.", uri, finalTime - initialTime);
        
        System.out.println(loggingMessage);
        
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
    
}
