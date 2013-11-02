$(document).ready(function(){
  $('.up').on('click', function(event){
    event.preventDefault();

    var voteId = $(this).attr('id'); 

    var answerFlagged = $("span[id= "+ voteId +"]")

    var answerId = answerFlagged.text()

    var data = {answer_id: answerId, vote_type: 1}
    
    url = "/questions/up/"

    $.post(url, data, function(response){
      console.log(data)

    })
  })

  $('.down').on('click', function(event){
    event.preventDefault();

    var voteId = $(this).attr('id'); 

    var answerFlagged = $("span[id= "+ voteId +"]")

    var answerId = answerFlagged.text()

    var data = {answer_id: answerId, vote_type: -1}
    
    url = "/questions/up/"

    $.post(url, data, function(response){
      console.log(data)

    })
  })
})

// alternative for selecting specific links
// $('#vote_count a:nth-child(1)')
// $('#vote_count a:nth-child(1)').attr('class')


