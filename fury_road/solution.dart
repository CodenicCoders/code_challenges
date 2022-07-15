void main() {
  print(solution("ASAASS")); // 115
  print(solution("SSA")); // 80
  print(solution("SSSSAAA")); // 175
}

/// ** FINDINGS **
///
/// - The user can start on a scooter.
/// - Once the user gets off the scooter, then they can only walk.
/// - The scooter can be traversed in the following pattern:
///
/// ```
/// e.g. road = SSAA, 1 = scooter, 0 = foot
///
/// 0000
/// 1000
/// 1100
/// 1110
/// 1111
/// ```
int solution(String R) {
  const asphaltOnFootTime = 20;
  const sandOnFootTime = 30;

  const asphaltOnScooterTime = 5;
  const sandOnScooterTime = 40;

  var travelTime = 0;

  for (var i = 0; i < R.length; i++) {
    travelTime += R[i] == "A" ? asphaltOnFootTime : sandOnFootTime;
  }

  var shortestTravelTime = travelTime;

  for (var i = 0; i < R.length; i++) {
    travelTime += R[i] == "A"
        ? asphaltOnScooterTime - asphaltOnFootTime
        : sandOnScooterTime - sandOnFootTime;

    if (travelTime < shortestTravelTime) {
      shortestTravelTime = travelTime;
    }
  }

  return shortestTravelTime;
}
