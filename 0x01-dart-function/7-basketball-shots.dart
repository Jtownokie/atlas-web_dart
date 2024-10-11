int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var teamAPoints = 0;
  var teamBPoints = 0;

  teamAPoints += teamA['Free throws']! * 1;
  teamAPoints += teamA['2 pointers']! * 2;
  teamAPoints += teamA['3 pointers']! * 3;

  teamBPoints += teamB['Free throws']! * 1;
  teamBPoints += teamB['2 pointers']! * 2;
  teamBPoints += teamB['3 pointers']! * 3;

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else if (teamAPoints == teamBPoints) {
    return 0;
  } else {
    return -1;
  }
}
