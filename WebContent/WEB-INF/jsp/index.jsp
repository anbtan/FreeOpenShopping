<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-lg-12 col-sm-12">
	<span class="title">FEATURED PRODUCTS</span>
</div>

<c:forEach var="product" items="${productList }">
	<div class="col-lg-4 col-sm-4 hero-feature text-center">
		<div class="thumbnail">
			<a href="${pageContext.request.contextPath }/user/detail.html"
				class="link-p" style="overflow: hidden; position: relative;"> <img
				src="${pageContext.request.contextPath}/resources/images/product/${product.productImage }"
				alt=""
				style="position: absolute; width: 250px; height: auto; max-width: none; max-height: none; left: -4px; top: 0px;">
			</a>
			<div class="caption prod-caption">
				<h4>
					<a href="detail.html">${product.productName }</a>
				</h4>
				<p>${product.description }</p>
				<p></p>
				<h3 style="color: red;">
					<strong>${product.price }</strong>
				</h3>
				<div class="btn-group">
					<a href="#" class="btn btn-primary"><i
						class="fa fa-shopping-cart"></i> Buy</a> <a href="#"
						class="btn btn-success"><i class="fa fa-heart"></i> Add
						Wishlist</a>
				</div>
				<p></p>
			</div>
		</div>
	</div>
</c:forEach>
