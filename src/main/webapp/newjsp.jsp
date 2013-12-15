<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script type="text/javascript" src="public/app/bootstrap-select.js"></script>
        <link rel="stylesheet" type="text/css" href="public/app/bootstrap-select.css">


        <!-- 3.0 -->
        <link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="public/bootstrap/js/bootstrap.min.js"></script>

        <!-- 2.3.2
        <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
        <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.js"></script>
        -->
        <script type="text/javascript">
            $(window).on('load', function() {

                $('.selectpicker').selectpicker({
                    'selectedText': 'cat'
                });

                // $('.selectpicker').selectpicker('hide');
            });
        </script>
    </head>
    <body>


        <select class="selectpicker">

            <option data-content="<span class='label label-success'>Relish</span>">Relish</option>
            <option data-content="<span class='label label-success'>Relish</span>">Relish</option>
        </select>



    </body>
</html>
