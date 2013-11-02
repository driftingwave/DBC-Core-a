$(document).ready(function(){
  $('#up').on('click', function(event){
    event.preventDefault();

    // var answer = $("span[id='answer']");

    var voteClass = $(this).attr('class'); 

    var answerFlagged = $("span[class= "+ voteClass +"]")

    var answerId = answerFlagged.text()

    var data = {answer_id: answerId, vote_type: -1}
    
    if ($('this').text("vote up"))
    {
      url = "/questions/up/"

      $.post(url, data, function(response){
        console.log(data)

      })
    }

    // else if ($('this').text("vote down"))
    // {
    //   var dataDown = {answer_id: answerId, vote_type: -1}
    //   $.post(url, dataDown, function(){
    //    console.log(response)
    //  })

    // }
  })
})

// alternative for selecting specific links
// $('#vote_count a:nth-child(1)')
// $('#vote_count a:nth-child(1)').attr('class')


