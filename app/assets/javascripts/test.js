$(document).ready(function(){
  $('#relation').on('change', function () {
    var $selectedArea = $('#relation').val();
    if ( $selectedArea == 'その他' ) {
      $('#other_relation').prop( 'disabled', false );
    } else {
      $('#other_relation').prop( 'disabled', true );

    }
  });
});
