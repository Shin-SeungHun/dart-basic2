import 'word.dart';

void main() {
  final Word word1 = Word();
  word1.word = 'AEIO u1';

  final Word word2 = Word();
  word2.word = 'hello dart';

  // word1
  for (int i = 0; i < word1.word.length; i++) {
    bool isVowelResult = word1.isVowel(i);
    print('Index ${i + 1}: $isVowelResult');
  }

  print('');

  // word2
  for (int i = 0; i < word2.word.length; i++) {
    bool isConsonantResult = word2.isConsonant(i);
    print('Index ${i + 1}: $isConsonantResult');
  }
}
