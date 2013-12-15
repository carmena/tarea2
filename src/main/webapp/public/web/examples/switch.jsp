
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" />

        <link rel="stylesheet" href="../static/stylesheets/bootstrap-switch.css" />
        <%--<link rel="stylesheet" href="http://getbootstrap.com/2.3.2/assets/js/google-code-prettify/prettify.css" />
        <link rel="stylesheet" href="http://getbootstrap.com/2.3.2/assets/css/docs.css" />
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css">
        <link rel="stylesheet" href="http://bdmdesign.github.io/bootstrap-switch/static/stylesheets/flat-ui-fonts.css">
        --%>
      


    </head>
    <body>
 

          <%--    <div class="row-fluid">
            <div class="span8 offset2">
                <div class="bs-docs-example">   --%>   

                    <div id="label2-toggle-switch">
                        <label class="label-change-switch">
                            <div class="make-switch switch-small" data-on="success" data-off="danger" data-on-label="Activo" data-off-label="Inactivo">

                                <input type="checkbox" checked>
                            </div>
                        </label>
                    </div>

 <%--  
                </div>
            

            </div>
        </div>
--%>  

        <%--    
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        --%>    
        <script>
         
            $(document).ready(function() {
                window.prettyPrint && prettyPrint();
                $('#mySwitch').on('switch-change', function(e, data) {
                    var $el = $(data.el)
                            , value = data.value;
                    console.log(e, $el, value);
                });

                // DIMENSION
           //     $('#btn-size-regular-switch').on('click', function() {
          //          $('#dimension-switch').bootstrapSwitch('setSizeClass', '');
            //    });
            //    $('#btn-size-mini-switch').on('click', function() {
            //        $('#dimension-switch').bootstrapSwitch('setSizeClass', 'switch-mini');
            //    });
           //     $('#btn-size-small-switch').on('click', function() {
          //          $('#dimension-switch').bootstrapSwitch('setSizeClass', 'switch-small');
         //       });
          //      $('#btn-size-large-switch').on('click', function() {
          //          $('#dimension-switch').bootstrapSwitch('setSizeClass', 'switch-large');
         //       });

                // STATE
                $('#toggle-state-switch-button').on('click', function() {
                    $('#toggle-state-switch').bootstrapSwitch('toggleState');
                });
                $('#toggle-state-switch-button-on').on('click', function() {
                    $('#toggle-state-switch').bootstrapSwitch('setState', true);
                });
                $('#toggle-state-switch-button-off').on('click', function() {
                    $('#toggle-state-switch').bootstrapSwitch('setState', false);
                });
                $('#toggle-state-switch-button-status').on('click', function() {
                    alert($('#toggle-state-switch').bootstrapSwitch('status'));
                });

                // DESTROY
                //  $('#btn-destroy-switch').on('click', function() {
                //      $('#destroy-switch').bootstrapSwitch('destroy');
                //      $(this).remove();
                //   });
                // CREATE
                $('#btn-create').on('click', function() {
                    $('#create-switch').wrap('<div class="make-switch" />').parent().bootstrapSwitch();
                    $(this).remove()
                });

                // ACTIVATION
                $('#btn-is-active-switch').on('click', function() {
                    alert($('#disable-switch').bootstrapSwitch('isActive'));
                });
                $('#btn-toggle-activation-switch').on('click', function() {
                    $('#disable-switch').bootstrapSwitch('toggleActivation');
                });
                $('#btn-disable-switch').on('click', function() {
                    $('#disable-switch').bootstrapSwitch('setActive', false);
                });
                $('#btn-activate-switch').on('click', function() {
                    $('#disable-switch').bootstrapSwitch('setActive', true);
                });

                // LABEL
                 $('#btn-label-on-switch').on('click', function() {
                      $('#label-switch').bootstrapSwitch('setOnLabel', 'I');
                    });
                    $('#btn-label-off-switch').on('click', function() {
                      $('#label-switch').bootstrapSwitch('setOffLabel', 'O');
                  });

                $('#label-toggle-switch').on('click', function(e, data) {
                    $('.label-toggle-switch').bootstrapSwitch('toggleState');
                });
                $('.label-toggle-switch').on('switch-change', function(e, data) {
                    alert(data.value);
                });
                $('#label2-toggle-switch').on('switch-change', function(e, data) {
                    alert(data.value);
                });

                // COLOR
                //   $('#btn-color-on-switch').on('click', function() {
                //        $('#change-color-switch').bootstrapSwitch('setOnClass', 'success');
                //   });
                //    $('#btn-color-off-switch').on('click', function() {
                //       $('#change-color-switch').bootstrapSwitch('setOffClass', 'danger');
                //    });

                // ANIMATION
               // $('#btn-animate-switch').on('click', function() {
              //      $('#animated-switch').bootstrapSwitch('setAnimated', true);
              //  });
              //  $('#btn-dont-animate-switch').on('click', function() {
              //      $('#animated-switch').bootstrapSwitch('setAnimated', false);
              //  });

                // RADIO
                //$('.radio1').on('switch-change', function() {
                //      $('.radio1').bootstrapSwitch('toggleRadioState');
                //   });
                //   $('.radio2').on('switch-change', function() {
                //      $('.radio2').bootstrapSwitch('toggleRadioStateAllowUncheck', true);
                //  });
            });
        </script>


        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<%--  <script src="http://getbootstrap.com/2.3.2/assets/js/google-code-prettify/prettify.js"></script>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    --%>      <script src="../static/js/bootstrap-switch.js"></script>
     </body>
</html>
