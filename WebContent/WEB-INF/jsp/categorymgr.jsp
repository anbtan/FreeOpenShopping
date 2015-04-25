<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<!-- Title page -->
<div class="row">
	<div class="col-lg-12">
    	<h1 class="page-header">
        	Category Management
        	<small>Add, Edit, Delete category</small>
    	</h1>
    	<ol class="breadcrumb">
        	<li>
            	<i class="fa fa-dashboard"></i> Dashboard
        	</li>
        	<li class="active">
            	<i class="fa fa-file"></i> Category Management
        	</li>
    	</ol>
	</div>
</div>
<!-- End title page -->
<!-- Category panel -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-primary">
        	<div class="panel-heading"><strong>All Categories</strong></div>
            <!-- /.panel-heading -->
            <div class="panel-body">
            	<div class="row col-sm-12">
            		<div>
  						<table class="table table-bordered" id="cateTable" data-click-to-select="true">
    						<thead>
						        <tr>
						        	<th></th>
						            <th>Category Id</th>
						            <th>Category name</th>
						            <th>Description</th>
						            <th>Level</th>
						            <th>Category parent</th>
						        </tr>
						    </thead>
						    
						    <tbody>
                       			<c:forEach var="cate" items="${cateList }">
								<tr role="row">
									<td style="text-align: center;"><input type="checkbox" value="${cate.id }" /></td>
									<td>${cate.id }</td>
									<td>${cate.name }</td>
									<td>${cate.description }</td>
									<td>${cate.level }</td>
									<td>${cate.parentId }</td>
								</tr>
								</c:forEach>
                       		</tbody>
  						</table>
					</div>
            	</div>
            	<!-- /.table-responsive -->
            	<button type="button" class="btn btn-primary" style="width: 100px; text-align: center;" id="btnAdd">Add</button>
            	<button type="button" class="btn btn-primary" style="width: 100px; text-align: center;">Edit</button>
            	<button type="button" class="btn btn-primary" style="width: 100px; text-align: center;">Delete</button>
        	</div>
	    	<!-- /.panel-body -->
    	</div>
	</div>
</div>

<!-- Add dialog modal -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        		<h4 class="modal-title" id="myModalLabel">Add category</h4>
      		</div>
      	<div class="modal-body">
        	<s:form class="form col-md-12 center-block" method="post" commandName="objCategory" action="admin.html">
	            <div class="form-group">
	            	<label class="control-label">Category name: </label>
	              	<s:input type="text" class="form-control input-lg" placeholder="Category name" path="name" />
	            </div>
	            <div class="form-group">
	            	<label class="control-label">Description: </label>
	              	<s:textarea path="description" placeholder="Description" class="form-control input-lg" rows="1" cols="1"/>
	            </div>
	            <div class="modal-footer">
		        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        	<button type="button" class="btn btn-primary">Save</button>
      			</div>
	    	</s:form>
      	</div>
      	<div class="modal-footer" style="border-width: 0px;">
	          <div class="col-md-12"></div>	
	      </div>
    </div>
</div>
<!-- /.End dialog -->
</div>


<!-- Custom Theme JavaScript -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css">

<!-- Jquery library -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

<!-- JQuery datatable -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.js"></script>

<!-- Boostrap datatable -->
<script src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.js"></script>

<!-- Main javascript -->
<script src="${pageContext.request.contextPath}/resources/js/categorymgr.js"></script>