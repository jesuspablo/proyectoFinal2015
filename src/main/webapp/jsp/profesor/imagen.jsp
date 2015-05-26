



    <script type="text/javascript">
        $(document).ready(function () {
            $("#uploadForm").submit(function () {
                var form = document.getElementById('uploadForm');
                var id= document.getElementById("id").value;
                //$("#spinner").append('<img src="spinner.gif"></div>').fadeIn(1000);
                
                oformData = new FormData(form);
                oformData.append("id", id);
                
                this.timer = setTimeout(function () {
                    $.ajax({
                        url: 'upload',
                        processData: false,
                        contentType: false,
                        enctype: 'multipart/form-data',
                        mimeType:"multipart/form-data",
                        data: new FormData(form), 
                        //data: 'filename=' + $('#file').val(),
                        type: 'post',
                        success: function (msg) {
                            //$("#spinner").fadeOut(1000);
                            $("#spinner").empty().append(msg);
                        }

                    });
                }, 200);
                return false;
            });

        });

    </script>



    
        <h1>Inserta una foto de Perfíl</h1>
        <div>
            <h3>Puedes Subir una Imagen </h3>
            <form id="uploadForm" action="upload" method="post" enctype="multipart/form-data">
                
                <input type="hidden" name="id" id="id" placeholder="id"/><br/><br/>
                <input type="file" name="file" id="file"/><br/><br/>
                
                <input type="submit" value="upload file" /><br/>
            </form>          
            <div id="spinner"></div>
        </div>
   







