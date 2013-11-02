$(document).ready(function(){
  $('.up').on('click', function(){

    var answer = $("span[id='answer']");

    var buttonClass = $('this').attr('class'); 

    var answerFlagged = $("span[class= "+ buttonClass +"]")

    var answerId = answerFlagged.text()

    if ($('this').text("up"))
    {
      var data = {answer_id: answerId, type: 1}
      var url = '/questions/up/'

      $.post(url, data, function(response){


      })
    }

    else 
    {
      var dataDown = {answer_id: answerId, type: -1}
      $.post(url, dataDown, function(){

      })
    }
  })
})

// alternative for selecting specific links
// $('#vote_count a:nth-child(1)')
// $('#vote_count a:nth-child(1)').attr('class')
