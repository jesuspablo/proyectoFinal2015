

<!DOCTYPE HTML>
<html lang="en">
    <head> 
        <title>Proyecto Final 2015</title>        
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <link rel="stylesheet" href="css/styles4.css">

    </head>
    <body>

        <div class="continer">

            <div class="izquierda">
                <div class="menu">
                    <h2>MENU</h2> 

                    <ul>
                        <li class="li-blog"><a href="#inicio">Inicio</a></li>


                        <li class="secretaria"><a href="#secretaria">Secretaria</a></li>
                        <ul class="seccion1">
                            <li><a href="#secretaria">Preinscripción</a></li>
                            <li><a href="#secretaria">Alumnado</a></li>
                            <li><a href="#secretaria">Centro</a></li>
                        </ul>



                        <li class="contac"><a href="#contact">Contactanos</a></li>
                        <ul class="seccion2">
                            <li class="tel"><a href="#contact">Telefono</a></li>
                            <li class="ubica"><a href="#contact">Donde estamos</a></li>
                            <li class="map"><a href="#contact">Maps</a></li>

                        </ul>  

                </div>

            </div>


            <div class="centro">
                <div class="slides">

                    							

                </div>

                <div class="telefono">
                    <h2>Teléfono de Contacto</h2>
                    <p>Puedes contactar con nosotro a este número<br></p>
                    <P>Teléfono: 963-298-266</p>
                    <p>Correo: admyfinndongjesus@gmail.com<br></p>							

                </div>

                <div class="mapa">
                    <h2>Maps</h2>
                    <p>Puedes puedes encontrarnos en esta dirección<br>
                    </p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3078.4119850761113!2d-0.3670806999999426!3d39.50519039999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd60460d17c795c9%3A0x2c6a2744a7abcef2!2sAv+de+las+Cortes+Valencianas%2C+26%2C+46016+Tavernes+Blanques%2C+Valencian+Community!5e0!3m2!1ses!2ses!4v1432223550346" width="600" height="450" frameborder="0" style="border:0"></iframe>
                </div>

                <div class="ubicacion">
                    <h2>Maps</h2>
                    <p>Estamos en la AV Constitucion nº56<br>
                    </p>
                    <p>De lunes a Viernes<br>
                    </p>
                    <p>Mañana de 9:00 a 13:00<br>
                    </p>
                    <p>Tarde de 17:00 a 19:00<br>
                    </p>
                    <img src="css/img/centro.jpg"  />
                </div>
            </div> 

            <div class="derecha">




            </div>	



        </div>
      



        <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="css/js/jquery.slides.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {

                //slides
                $(function () {
                    $(".slides").slidesjs({
                        play: {
                            active: true,
                            effect: "slide",
                            interval: 5000,
                            auto: false,
                            swap: true,
                            pauseOnHover: false,
                            restartDelay: 2500
                        }

                    });

                });

                //menu
                $(".secretaria").click(function () {
                    $(".seccion1").toggle(1000);
                    $(".seccion2").hide();

                });

                $(".contac").click(function () {
                    $(".seccion2").toggle(1000);
                    $(".seccion1").hide();


                });
                //Contactos

                $(".map").click(function () {
                    $(".ubicacion").hide();
                    $(".telefono").hide();
                    $(".mapa").toggle(1000);
                });

                $(".tel").click(function () {
                    $(".mapa").hide();
                    $(".ubicacion").hide();
                    $(".telefono").toggle(1000);

                });

                $(".ubica").click(function () {
                    $(".mapa").hide();
                    $(".telefono").hide();
                    $(".ubicacion").toggle(1000);
                });

            });






        </script>

    </body>
</html>