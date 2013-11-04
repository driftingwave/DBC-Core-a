$(document).ready(function(){

  answerButton = $('#answer')

  answerForm = $("#answerformarea")

  answerButton.on('click', function(event){
    event.preventDefault();

    $(answerForm).removeClass('answerformarea')
    answerButton.addClass('answerformarea')

  })
// end of answer button

});
// end of function

// <span id="answer">
// <%= button_to "Offer Your Answer" %>