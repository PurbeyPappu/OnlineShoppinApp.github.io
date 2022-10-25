<%-- 
    Document   : admin
    Created on : 28-May-2022, 8:42:00 AM
    Author     : HP
--%>

<%@page import="com.mycompany.e.commerce.entities.User"%>
<%
    

     User user = (User)session.getAttribute("current-user");
    
    if(user == null)
    {
    session.setAttribute("message","You are not logged in !! Login first");
    return;
    }
    else
    {
       if(user.getUserType().equals("normal"))
       {
       session.setAttribute("message", "You are not admin ! Do not access this page");
       response.sendRedirect("login.jsp");
       return;
           
    }
    }


%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel -e_commerce</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
         <%@include file="components/navbar.jsp" %>
         
         <div class="container admin">
             <div class="row mt-3">
                 <!---<!-- first col -->
                 <div class="col-md-4">
                     <div class="card">
                         <div class="card-body text-center">
                             <div class="container">
                                 <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/user.png" alt="Invalid">
                             </div>
                             <h1 class="text-upercase text-muted">Users</h1>
                             <h1>1223</h1>
                         </div>
                     </div>   
                     
                     
                 </div>
                 <!-- second col -->
                  <div class="col-md-4"> 
                     <div class="card">
                         <div class="card-body text-center">
                             <div class="container">
                                 <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/delivery-box.png" alt="Invalid">
                             </div>
                             <h1 class="text-upercase text-muted">Categories</h1>
                             <h1>1223</h1>
                         </div>
                     </div>
                     
                     
                  </div>
                 <!-- third col -->
                  <div class="col-md-4">
                    <div class="card">
                         <div class="card-body text-center">
                             <div class="container">
                                 <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/application.png" alt="Invalid">
                             </div>
                             <h1 class="text-upercase text-muted">Products</h1>
                             <h1>1223</h1>
                         </div>
                     </div> 
                     
                      
                  </div>
                 
                  
             </div>
             
              <!-- -second rows-  -->
              <div class="row mt-3">
                  <div class="col-md-6">
                      
                    <div class="card" data-toggle="modal" data-target="#exampleModal">
                         <div class="card-body text-center">
                             <div class="container">
                                 <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/application.png" alt="Invalid">
                             </div>
                             <h1 class="text-upercase text-muted">Add Categories</h1>
                             <h1 class="mt-2">1223</h1>
                         </div>
                     </div> 
                  
            
                      
                  </div>
                  <div class="col-md-6">
                     
                    <div class="card" data-toggle="modal" data-target="#productModal">
                         <div class="card-body text-center">
                             <div class="container">
                                 <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/application.png" alt="Invalid">
                             </div>
                             <h1 class="text-upercase text-muted">Add Products</h1>
                             <h1 class="mt-2">1223</h1>
                         </div>
                     </div> 
                  
             </div>
                  </div>
                       
              </div>
            
    </div>
    <!-- add category model -->
   
    
    
    <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Categories Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <form action="ProductOperationServlet" method="post">
              
              <input type="hidden" name="operation" value="addcategory"> 
              <div class="form-group">
                  
                  <input type="text" class="form-control" name="catTitle" placeholder="Enter Category Title"required />
                  
                  <div class="form-group">
                      <textarea style="height: 250px;" class="form-control" name="catDescription"  placeholder="Enter category description" required></textarea>
                  </div>
                  <div class="container text-center">
                      <button type="button" class="btn btn-success"> Add Category</button>
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       
                  </div>
              </div>
          </form>
          
          
      </div>
          </div>
  </div>
</div>
    <!-- add category modal -->
    
    
    
    
    <!--Add product  model-->   
    <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Product Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <form action="">
              <div class="form-group">
                  
                  <input type="text" class="form-control" name="pName" placeholder="Enter Product Name"required />
                  <input class="file-upload-input" type="file" onchange="readURL(this)" accept="Image/*">
                  <input type="text" class="form-control" name="price" placeholder="Enter Product Price"required />
                  <input type="text" class="form-control" name="pDisc" placeholder="Enter Discount Price"required />
                  <div class="form-group">
                      <textarea style="height: 250px;" class="form-control" name="catDescription"  placeholder="Enter  description" required></textarea>
                  </div>
                  <div class="container text-center">
                      <button type="button" class="btn btn-success"> Add Products</button>
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       
                  </div>
              </div>
          </form>
          
          
      </div>
          </div>
  </div>
</div>
    
         
    </body>
</html>
