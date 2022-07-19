import 'dart:math';

void main() {
  print(solution([4, 0, 2, -2], [4, 1, 2, -3], "RGRR")); // 2
  print(solution([1, 1, -1, -1], [1, -1, 1, -1], "RGRG")); // 4
  print(solution([1, 0, 0], [0, 1, -1], "GGR")); // 0
  print(solution([5, -5, 5], [1, -1, -3], "GRG")); // 2
  print(solution([3000, -3000, 4100, -4100, -3000],
      [5000, -5000, 4100, -4100, 5000], "RRGRG")); // 2
}

int solution(List<int> X, List<int> Y, String colors) {
  final groupPointsByRadius = <int, List<int>>{};

  var totalGreenPoints = 0;
  var totalRedPoints = 0;

  for (var i = 0; i < X.length; i++) {
    final x = X[i];
    final y = Y[i];
    final color = colors[i];

    final radius = (sqrt(pow(x, 2) + pow(y, 2)) * 100000).toInt();

    final point = groupPointsByRadius[radius] ?? [0, 0];

    if (color == "R") {
      point[0]++;
      totalRedPoints++;
    } else {
      point[1]++;
      totalGreenPoints++;
    }

    groupPointsByRadius[radius] = point;
  }

  final groupPointsByRadiusSorted = groupPointsByRadius.entries.toList()
    ..sort((a, b) => a.key - b.key);

  for (var i = groupPointsByRadiusSorted.length - 1; i >= 0; i--) {
    if (totalGreenPoints == totalRedPoints) {
      return totalGreenPoints + totalRedPoints;
    }

    final point = groupPointsByRadiusSorted[i].value;

    totalRedPoints -= point[0];
    totalGreenPoints -= point[1];

    if (totalRedPoints <= 0 || totalGreenPoints <= 0) {
      return 0;
    }
  }

  return 0;
}
