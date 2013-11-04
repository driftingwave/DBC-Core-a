$(document).ready(function(){

  answerButton = $('#answer')

  answerForm = $("#answerformarea")

  var removed = $(answerForm).remove();

  answerButton.on('click', function(event){

    event.preventDefault();

    removed.insertAfter(answerButton);

    $(answerForm).removeClass('answerformarea')

    answerButton.detach()

  })


});
