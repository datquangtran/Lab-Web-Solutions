package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sale_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/elementJSP/header.jsp");
    _jspx_dependants.add("/elementJSP/right_menu.jsp");
    _jspx_dependants.add("/elementJSP/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/home.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/sale.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/header.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/right_content.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/footer.css\">\n");
      out.write("        <title>Construction Machinery</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--start sheet-->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            \n");
      out.write("            <!--header container-->\n");
      out.write("            ");
      out.write("<div class=\"header\">\n");
      out.write("    <div class=\"h_title\">\n");
      out.write("        <div>\n");
      out.write("            <a href=\"Home\">Construction Machinery</a>\n");
      out.write("            <p>Welcome to our website</p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"navbar\">\n");
      out.write("        <span class=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${active == '1' ? 'active' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Home\">Home</a></span>\n");
      out.write("        <span class=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${active == '2' ? 'active' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Sale\">Machine for Sale</a></span>\n");
      out.write("        <span class=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${active == '3' ? 'active' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Infor\">About Our Company</a></span>\n");
      out.write("        <span class=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${active == '4' ? 'active' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Contact\">Contact</a></span>\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("            \n");
      out.write("            <!--content of page-->\n");
      out.write("            <div class=\"content\">\n");
      out.write("                \n");
      out.write("                <!--content details-->\n");
      out.write("                <div>\n");
      out.write("                    <div class=\"left_content\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"sale_detail\">\n");
      out.write("                            <h3>Machines for Sale</h3>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!--right content-->\n");
      out.write("                    ");
      out.write("<div class=\"right_content\">\n");
      out.write("    <div class=\"share_box\">\n");
      out.write("        <h4>Share this page</h4>\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"#\">Share on Facebook</a></li>\n");
      out.write("            <li><a href=\"#\">Share on Twitter</a></li>\n");
      out.write("            <li><a href=\"#\">Share on Google+</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"create_box\">\n");
      out.write("        <h4>Create a website</h4>\n");
      out.write("        <p>Everybody can create a website, it's easy.</p>\n");
      out.write("        <p><a href=\"#\"><span>Try it for FREE now</span></a></p>\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("                    \n");
      out.write("                    <!--clear float-->\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                    \n");
      out.write("                </div><!--end content detail-->\n");
      out.write("                \n");
      out.write("                <!--footer-->\n");
      out.write("                ");
      out.write("<div class=\"footer\">\n");
      out.write("    <div class=\"l_footer\">\n");
      out.write("        <p>This website was created with SimpleSite</p>\n");
      out.write("        <a href=\"#\">Get Your own FREE website. Click here!</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"r_footer\">\n");
      out.write("        <p>\n");
      out.write("            <span>0</span>\n");
      out.write("            <span>0</span>\n");
      out.write("            <span>7</span>\n");
      out.write("            <span>8</span>\n");
      out.write("            <span>6</span>\n");
      out.write("            <span>1</span>\n");
      out.write("        </p>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"clear\"></div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>  <!--end of sheet-->\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("sale");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${saleMachines}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <div class=\"sale_detail\">\n");
          out.write("                                <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sale.getImage()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"/>\n");
          out.write("                                <a href=\"Machine?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sale.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><h5>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sale.getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5></a>\n");
          out.write("                                <p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sale.getInformation()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                <div class=\"border_dotted\"></div>\n");
          out.write("                            </div>\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
