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

$(document).ready(function(){
  $('#gender').on('change', function () {
    var $selectedArea = $('#gender').val();
    if ( $selectedArea == 'その他' ) {
      $('#other_gender').prop( 'disabled', false );
    } else {
      $('#other_gender').prop( 'disabled', true );

    }
  });
});
