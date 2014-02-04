$(document).ready(function() {

  console.log("Yay ready.");
  var p1wins = 0;
  var p2wins = 0;
  var pos1 = 1;
  var pos2 = 1;

  $(document).on('keyup', function(e) {
    console.log("Yay, keypress.");
    if (e.which == 81) {
      console.log("q pressed");
      $("#player1_strip td:nth-child(" + pos1 + ")").removeClass("active");
      pos1++;
      $("#player1_strip td:nth-child(" + pos1 + ")").addClass("active");
      if (pos1 >= 40) {
        p1wins ++;
        alert("Player 1 wins!!!  Player 1 has won " + p1wins + " times.");

        $.post( "/win", {winner: 'player1'} )

        pos1 = 1;
        pos2 = 1;
        $("td").removeClass("active");
        $("td:nth-child(" + pos1 + ")").addClass("active");
      }
    }
    else if (e.which == 80) {
      console.log("p pressed")
      $("#player2_strip td:nth-child(" + pos2 + ")").removeClass("active");
      pos2 ++;
      $("#player2_strip td:nth-child(" + pos2 + ")").addClass("active");
      if (pos2 >= 40) {
        p2wins ++;
        alert("Player 2 wins!!! Player 2 has won " + p2wins + " times.");

        $.post( "/win", {winner: 'player2'} )

        pos1 = 1;
        pos2 = 1;
        $("td").removeClass("active");
        $("td:nth-child(" + pos1 + ")").addClass("active");
      }
    }
    e.preventDefault();
  });


});
