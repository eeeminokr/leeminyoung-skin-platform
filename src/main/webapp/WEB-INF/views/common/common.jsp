<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <link rel="shortcut icon"
                href="${pageContext.request.contextPath}/resources/static/images_old/common/favicon.ico" />
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css_old/font.css" />
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css_old/common.css" />
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css_old/style.css" />
            <!-- jquery -->
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
            <!-- jquery-ui -->
            <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
            <!-- jquery-ui css -->
            <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
            <script type="text/javascript"
                src="${pageContext.request.contextPath}/resources/static/js_old/common.js"> </script>
            <script type="text/javascript"
                src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-3.6.1.min.js"></script>
            <script type="text/javascript"
                src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-1.6.4.min.js"></script>





            <script type="text/javascript" charset="utf-8">
            $(function() {	

                for (let i = 0; i < 65; i++) {
                    let key = sessionStorage.key(i);
                    if (!window.location.pathname.includes('solution_01_2')) {
                        sessionStorage.removeItem('check_step_'+i);
                    }
                }

            });
            </script>