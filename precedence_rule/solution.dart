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

  // Key = Left letter, Value = Right letter
  final symbolsMaps = <String, String>{};

  // Key = Right letter, Value = Left letter
  final symbolsMapInverted = <String, String>{};

  for (final symbol in symbols) {
    symbolsMaps[symbol[0]] = symbol[2];
    symbolsMapInverted[symbol[2]] = symbol[0];
  }

  // Find the last letter which is the right letter that doesn't appear on the
  // left side.
  var lastLetter = symbolsMaps.values
      .firstWhere((rightLetter) => !symbolsMaps.containsKey(rightLetter));

  word.insert(0, lastLetter);

  do {
    // Get the next last letter.
    // This is left letter associated with the last letter.
    lastLetter = symbolsMapInverted.remove(lastLetter)!;

    word.insert(0, lastLetter);
  } while (symbolsMapInverted.isNotEmpty);

  return word.join();
}
