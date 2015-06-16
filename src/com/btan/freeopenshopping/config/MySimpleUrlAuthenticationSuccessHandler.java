package com.btan.freeopenshopping.config;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.*;
import org.springframework.security.web.authentication.*;

public class MySimpleUrlAuthenticationSuccessHandler implements AuthenticationSuccessHandler{

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, 
		      HttpServletResponse response, Authentication authentication) throws IOException,
			ServletException {
		// TODO Auto-generated method stub
		String targetUrl = determineTargetUrl(authentication);
		 
        if (response.isCommitted()) {
            return;
        }
 
        redirectStrategy.sendRedirect(request, response, targetUrl);
	}
	
	/** Builds the target URL according to the logic defined in the main class Javadoc. */
    protected String determineTargetUrl(Authentication authentication) {
        boolean isUser = false;
        boolean isAdmin = false;
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for (GrantedAuthority grantedAuthority : authorities) {
            if (grantedAuthority.getAuthority().equals("USER")) {
                isUser = true;
                break;
            } else if (grantedAuthority.getAuthority().equals("ADMIN")) {
                isAdmin = true;
                break;
            }
        }
 
        if (isUser) {
            return "/user/index.html";
        } else if (isAdmin) {
            return "/admin/categorymgr.html";
        } else {
            throw new IllegalStateException();
        }
    }


}
