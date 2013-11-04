$(document).ready(function(){

  answerButton = $('#answer')

  answerForm = $("#answerform")

  answerButton.on('click', function(event){
    event.preventDefault();

    $(answerForm).removeClass('answerform')

  })
// end of answer button

});
// end of function

// <span id="answer">
// <%= button_to "Offer Your Answer" %>