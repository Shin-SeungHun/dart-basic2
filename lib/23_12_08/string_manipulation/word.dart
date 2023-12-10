class Word {
  String word = '';

  bool isVowel(int i) {
    final List<String> vowelList = ['a', 'e', 'i', 'o', 'u'];

    if (i < 0 || word.length <= i || word.substring(i, i + 1) == ' ') {
      return false;
    }

    return vowelList.contains(word.substring(i, i + 1).toLowerCase());
  }

  bool isConsonant(int i) {
    if (i < 0 || word.length <= i || word.substring(i, i + 1) == ' ') {
      return false;
    }

    return !isVowel(i);
  }
}
