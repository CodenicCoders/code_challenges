void main() {
  print(findWord(["P>E", "E>R", "R>U"]));
  print(findWord(["I>N", "A>I", "P>A", "S>P"]));
  print(findWord(["U>N", "G>A", "R>Y", "H>U", "N>G", "A>R"]));
  print(findWord(["I>F", "W>I", "S>W", "F>T"]));
  print(findWord(["R>T", "A>L", "P>O", "O>R", "G>A", "T>U", "U>G"]));
  print(findWord(
      ["W>I", "R>L", "T>Z", "Z>E", "S>W", "E>R", "L>A", "A>N", "N>D", "I>T"]));
}

/// **Findings**
///
/// - The right letter that doesn't appear on the left side is the last letter
/// of the word.
/// - The left letter associated with the last letter of the word is the next
/// last letter.
String findWord(List<String> symbols) {
  final word = <String>[];

  // Convert the each string symbol into key-value pairs wherein the keys
  // represent the right letters and the values represent the left letters.

  final symbolsMap = <String, String>{};

  for (final symbol in symbols) {
    symbolsMap[symbol[2]] = symbol[0];
  }

  // The letter that is available ONLY on the right side is the last letter of
  // the word.
  var lastLetter = symbolsMap.keys
      .firstWhere((leftLetter) => !symbolsMap.values.contains(leftLetter));

  word.insert(0, lastLetter);

  do {
    // Get the next last letter.
    // This is left letter associated with the last letter.
    lastLetter = symbolsMap.remove(lastLetter)!;

    word.insert(0, lastLetter);
  } while (symbolsMap.isNotEmpty);

  return word.join();
}
