<div class="col-lg-12 col-sm-12">
	<span class="title">SHOPPING CART</span>
</div>

<div class="col-lg-12 col-sm-12" style="height: 80%">
	<table class="table table-bordered tbl-cart">
		<thead>
			<tr>
				<td class="hidden-xs">Image</td>
				<td>Product Name</td>
				<td class="td-qty">Quantity</td>
				<td>Unit Price</td>
				<td>Remove</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="hidden-xs"><a href="detail.html"> <img
						src="${pageContext.request.contextPath}/resources/images/product/product-1.jpg"
						alt="Age Of Wisdom Tan Graphic Tee" title="" width="47"
						height="47">
				</a></td>
				<td><a href="detail.html">Age Of Wisdom Tan Graphic Tee</a></td>
				<td>
					<div class="input-group bootstrap-touchspin td-qty">
						<span class="input-group-btn"></span>
						<span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span>
						<input type="text" name="" value="1" class="input-qty form-control text-center" style="display: block;">
						<span class="input-group-addon bootstrap-touchspin-postfix"	style="display: none;"></span>
						<span class="input-group-btn"></span>
					</div>
				</td>
				<td class="price">$ 122.21</td>
				<td class="text-center"><a href="#" class="remove_cart" rel="2">
						<i class="fa fa-trash-o"></i>
				</a></td>
			</tr>
			<tr>
				<td class="hidden-xs"><a href="detail.html"> <img
						src="${pageContext.request.contextPath}/resources/images/product/product-1.jpg"
						alt="Adidas Men Red Printed T-shirt" title="" width="47"
						height="47">
				</a></td>
				<td><a href="detail.html">Adidas Men Red Printed T-shirt</a></td>
				<td>
					<div class="input-group bootstrap-touchspin td-qty">
						<span class="input-group-btn"></span>
						<span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span>
						<input type="text" name="" value="1" class="input-qty form-control text-center" style="display: block;">
						<span class="input-group-addon bootstrap-touchspin-postfix"	style="display: none;"></span>
						<span class="input-group-btn"></span>
					</div>
				</td>
				<td class="price">$ 20.63</td>
				<td class="text-center"><a href="#" class="remove_cart" rel="1">
						<i class="fa fa-trash-o"></i>
				</a></td>
			</tr>
			<tr>
				<td colspan="3" align="right">Total</td>
				<td class="total" colspan="2"><b>$ 163.47</b></td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group btns-cart">
		<button type="button" class="btn btn-primary"
			onclick="window.location='catalogue.html'">
			<i class="fa fa-arrow-circle-left"></i> Continue Shopping
		</button>
		<button type="button" class="btn btn-primary">Update Cart</button>
		<button type="button" class="btn btn-primary"
			onclick="window.location='checkout.html'">
			Checkout <i class="fa fa-arrow-circle-right"></i>
		</button>
	</div>

</div>

