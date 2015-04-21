<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-lg-12">
    	<h1 class="page-header">
        	Category Management
        	<small>Add, Edit, Delete category</small>
    	</h1>
    	<ol class="breadcrumb">
        	<li>
            	<i class="fa fa-dashboard"></i>  <a href="${pageContext.request.contextPath }/admin/dashboard.html">Dashboard</a>
        	</li>
        	<li class="active">
            	<i class="fa fa-file"></i>Category Management
        	</li>
    	</ol>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
        	<div class="panel-heading">
            	All Categories
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
            	<div class="dataTable_wrapper">
                	<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                		<div class="row">
                			<div class="col-sm-6">
                				<div class="dataTables_length" id="dataTables-example_length">
                					<label>Show 
                						<select name="dataTables-example_length" aria-controls="dataTables-example" class="form-control input-sm">
                							<option value="10">10</option>
                							<option value="25">25</option>
                							<option value="50">50</option>
                							<option value="100">100</option>
                						</select>
                						 entries
                					</label>
                				</div>
                			</div>
	                		<div class="col-sm-6">
	                			<div id="dataTables-example_filter" class="dataTables_filter">
	                				<label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="dataTables-example">
	                				</label>
	                			</div>
	                		</div>
                		</div>
                	<div class="row">
                		<div class="col-sm-12">
                			<table class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info">
                    			<thead>
                        			<tr role="row">
                        				<th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 285px;">
                        				Category Id
                        				</th>
                        				<th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 341px;">
                        				Category name
                        				</th>
                        				<th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 312px;">
                        				Description
                        				</th>
                        				<th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 249px;">
                        				Level
                        				</th>
                        				<th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 187px;">
                        				Category parent
                        				</th>
                        			</tr>
                        		</thead>
                        		<tbody>
                        			<c:forEach var="cate" items="${cateList }">
									<tr class="gradeA odd" role="row">
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
                    <div class="row">
                    	<div class="col-sm-6">
                    		<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">
                    			Showing 1 to 10 of 57 entries
                    		</div>
                    	</div>
                    	<div class="col-sm-6">
                    		<div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate">
                    			<ul class="pagination">
                    				<li class="paginate_button previous disabled" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_previous">
                    					<a href="#">Previous</a>
                    				</li>
                    				<li class="paginate_button active" aria-controls="dataTables-example" tabindex="0">
                    					<a href="#">1</a>
                    				</li>
                    				<li class="paginate_button " aria-controls="dataTables-example" tabindex="0">
                    					<a href="#">2</a>
                    				</li>
                    				<li class="paginate_button " aria-controls="dataTables-example" tabindex="0">
                    					<a href="#">3</a>
                    				</li>
                    				<li class="paginate_button " aria-controls="dataTables-example" tabindex="0">
                    					<a href="#">4</a>
                    				</li>
                    				<li class="paginate_button " aria-controls="dataTables-example" tabindex="0">
                    					<a href="#">5</a>
                    				</li>
                    				<li class="paginate_button " aria-controls="dataTables-example" tabindex="0">
                    					<a href="#">6</a>
                    				</li>
                    				<li class="paginate_button next" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_next">
                    					<a href="#">Next</a>
                    				</li>
                    			</ul>
                    		</div>
                    	</div>
                    </div>
                </div>
            </div>
            <!-- /.table-responsive -->
        </div>
	    <!-- /.panel-body -->
    </div>
</div>