import 'hero.dart';
import 'slime.dart';

/// PoisonSlime 클래스 작성
/// 1. 독 슬라임은 슬라임 중에서도 특히 ‘독 공격’이 되는 것
/// 2. PoisonSlime은 아래의 코드로 인스턴스화되는 클래스다.
///     1. PoisonSlime posionSlime = PoisonSlime(’A’);
/// 3. PoisonSlime은 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5다
/// 4. PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
///     1. 우선 ‘보통 슬라임과 같은 공격을 한다’
///     2. ‘독 공격의 남은 횟수’가 0이 아니면 다음을 추가로 수행한다
///     3. 화면에 ‘추가로, 독 포자를 살포했다!’를 표시
///     4. 용사의 hp의 1/5에 해당하는 포인트를 용사의 hp로부터 감소시키고, ‘~포인트의 데미지’라고 표시
///     5. ‘독 공격의 남은 횟수’를 1 감소시킨다.
class PoisonSlime extends Slime {
  int poisonAttackCnt = 5; // 독 공격이 가능한 남은 횟수 초기값 5

  PoisonSlime({required super.suffix});

  @override
  ///     PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
  ///     1. 우선 ‘보통 슬라임과 같은 공격을 한다’
  ///     2. ‘독 공격의 남은 횟수’가 0이 아니면 다음을 추가로 수행한다
  ///     3. 화면에 ‘추가로, 독 포자를 살포했다!’를 표시
  ///     4. 용사의 hp의 1/5에 해당하는 포인트를 용사의 hp로부터 감소시키고, ‘~포인트의 데미지’라고 표시
  ///     5. ‘독 공격의 남은 횟수’를 1 감소시킨다.
  void attack(Hero hero) {
    super.attack(hero); // 보통 슬라임과 같은 공격
    // 독 공격의 남은 횟수가 0이 아니면 다음을 추가로 수행
    if (poisonAttackCnt > 0) {
      print('$suffix 슬라임이 추가로 독 포자를 살포했다!');
      int poisonDamage = (hero.hp / 5).round(); // double 값을 int로 반올림
      hero.hp -= poisonDamage;
      print('${hero.name}는 $suffix 슬라임의 공격에 $poisonDamage 포인트의 데미지를 입었다!\n');
      poisonAttackCnt--; // 독 공격 횟수 감소
    } else {
      print('슬라임 $suffix의 독 포자가 전부 소진되었다.\n');
    }
  }
}
