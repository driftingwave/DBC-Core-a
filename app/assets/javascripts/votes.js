  $(document).ready(function(){
  $('.vote').on('click', function(event){
    event.preventDefault();

    var vote_type = ($(this).data("vote"))
    var type = vote_type == "up" ? 1 : -1

    var voteId = $(this).attr('id');


    var answerFlagged = $("span[id= "+ voteId +"]")

    var answerId = answerFlagged.text()

    var data = {answer_id: answerId, vote_type: type}

    url = "/questions/up/"

    $.post(url, data, function(response){
      $("#vote_count").html(", " + response.total + " votes")
    })
  })
})

// alternative for selecting specific links
// $('#vote_count a:nth-child(1)')
// $('#vote_count a:nth-child(1)').attr('class')


