<!DOCTYPE html>
<html lang="en">
<?php  
	require_once "header.php"; 
	require_once "login.php"; 
	require_once "menu.php"; 
?>  
  
  <!-- Start single page header -->
  <section id="single-page-header">
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="single-page-header-left">
              <h2>Préstamo</h2>
              <p>Solicitar Préstamo.</p>
            </div>
          </div>
         <!-- <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="single-page-header-right">
              <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Service</li>
              </ol>
            </div>-->
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End single page header -->
 
      
      <!-- Start signup section -->
       <section id="contact">
     <div class="container">
       <div class="row">
         <div class="col-md-12">
           <div class="title-area">
              <h2 class="title">Préstamos en Línea</h2>
              <span class="line"></span>
              <p>Aquí usted puede solicitar sus Préstamos en línea</p>
            </div>
         </div>
         <div class="col-md-12">
           <div class="cotact-area">
             <div class="row">
               <div class="col-md-4">
                 <div class="contact-area-left">
                   <h4>Información de la Empresa</h4>
                   <p>Caja de Ahorro del Ejercito Bolivariano (CAEJERB)</p>
                   <address class="single-address">
                     <p>P.O. Avenida Las Escuelas. Edificio Caja de Ahorro del Ejército. Sector Fuerte Tiuna. El Valle,  Caracas.</p>
                     <p>info@caejerb.com</p>
                     <p>+(58) 212-937-51-2</p>
                   </address> 
                   <div class="footer-right contact-social">
                      <a href="index.html"><i class="fa fa-facebook"></i></a>
                      <a href="#"><i class="fa fa-twitter"></i></a>
                      <a href="#"><i class="fa fa-google-plus"></i></a>
                      <a href="#"><i class="fa fa-linkedin"></i></a>
                      <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>                
                 </div>
               </div>
               <div class="col-md-8">
                 <div class="contact-area-right">
                   <form action="" class="comments-form contact-form">
                    <div class="form-group">                        
                      <input type="text" class="form-control" placeholder="Nombre">
                    </div>
                    <div class="form-group">                        
                      <input type="email" class="form-control" placeholder="Correo">
                    </div>
                    <div class="form-group">                        
                      <input type="email" class="form-control" placeholder="Celular">
                    </div>
                     <div class="form-group">                        
                      <input type="text" class="form-control" placeholder="Asunto">
                    </div>
                    <div class="form-group">                        
                      <textarea placeholder="Comentario" rows="3" class="form-control"></textarea>
                    </div>
                    <button class="comment-btn">Enviar</button>
                  </form>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
  </section>
  <!-- End contact section  -->
 
  <?php require_once "footer.php"; ?>
   </body>
</html>
