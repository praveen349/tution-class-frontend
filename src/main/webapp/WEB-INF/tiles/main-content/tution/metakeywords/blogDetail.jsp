<!-- Dynamic meta -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title><c:if test="${blog.metaTitle eq null}">${blog.title}</c:if><c:if
		test="${blog.metaTitle ne null}">${blog.metaTitle}</c:if></title>
<meta name="description" content="${blog.metaDescription}">
<meta name="keywords" content="${blog.metaKeys}">
<!-- Dynamic Meta End -->


