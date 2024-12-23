- 전통적인 네이티브 앱 개발
  - iOS/Android의 네이티브 UI 컴포넌트를 직접 호출
  - 각 플랫폼의 위젯과 1:1로 매핑되어 동작
- 플러터의 방식
  - Skia라는 C++로 작성된 그래픽 엔진을 사용
  - 플러터 엔진이 모든 UI를 직접 픽셀 단위로 렌더링
  - 플랫폼의 캔버스(Canvas)만 제공받아서 그 위에 직접 그리는 방식
  - 네이티브 위젯을 사용하지 않기 때문에 플랫폼 독립적인 일관된 UI 제공 가능

⇒ 게임 엔진같다고한다. 모든 픽셀을 호스트와 상관없이 그려내는..

> React Native와의 차이점

- React Navite는 자바스크립트를 통해 OS와 대화를 하기 때문에 IOS와 Android에서의 보여지는 화면이 다르다고 한다.
- 때문에 많은 부분을 커스텀 하고 싶다면 Flutter를 사용하는게 좋다.

---

### 플러터를 시작하기 위한 세팅

1. Flutter 설치 후 path 잡아주기
2. 안드로이드 스튜디오 설치 후 뭐 command 뭐시기 뭐 해주기
3. flutter create [프로젝트 이름] 으로 플러터 프로젝트 생성하기

- vscode로 개발할때 결국 안드로이드 스튜디오에 설치된 SDK를 사용하고, 여기에 설치된 emulator를 사용한다고 한다.
- 그래서 vscode에 emulator를 사용하려면 안드로이드 스튜디오에서 먼저 추가를 해줘야 하고 안드로디으 emulator는 Adroid Virtual Device라고 한다. 줄여서 AVD!

- vscode에거 개발할때 flutter run이 아니라 디버깅 모드로 개발하는 이유는 widget inspector와 emulator를 사용할 수 있기때문인것 같다.

- flutter의 시작점이다. runApp은 (Widget app) ⇒ void이며 widget은 레고 블럭이라고 생각하면 편하다.
- 이 위젯을 조합해 UI를 설계하는 것으로, 플러터 공식 홈에 공식으로 만들어 놓은 것도 많고, 일반인이 만들어 놓은것도 많은듯 하다.

```dart
void main() {
  runApp();
}
```

> Widget을 만든다는 것은 그냥 class를 만드는 것이다.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// 위젯으로 만들기 위해선 flutter SDK에 있는 3개의 core Widget 중 하나를 상속받아야 한다.

class App extends StatelessWidget {
  // 또한 runApp의 매개변수로 들어가는 클래스를 root Widget이라 하는데, 이건 두 개의 옵션 중 하나를 return해야 한다고 한다.
  // 하나는 material 앱을, 다른 하나는 cupertino라는 구글과 애플의 디자인 시스템이라고 한다.
  // 어떤 느낌으로 보여주고싶은지 플러터에 알려주는거라고 한다.
  // 아무리 커스텀을 하려고해도 root에선 꼭 정해줘야 한다. 이건 구글의 언어ㅣ므로 material의 스타일이 더 좋다고 한다.
  @override
  Widget build(BuildContext context) {
    // 모든 widget은 이 bulld를 구현해야 한다.
    return MaterialApp(home: Text('메뚜기월드'));
  }
}
```

- scaffold가 없어서 저런 끔찍한 것이 나왔다. scaffold는 화면의 구조를 제공해준다.
- 모바일 앱의 모든 화면은 scaffold가 필요하다.
- 구조를 정해준다 했으니 navbar나 화면 정렬, 뭐 이런것들?

![image.png](/readme/스크린샷%202024-12-24%20061244.png)

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("헬로 월드"),
      ),
    );
  }
}

```

- **`참고로 콤마를 잘 찍으면 자동으로 주석도 달아주고 프리티어의 방해를 막을 수 있다. 명심`**

![image.png](/readme/스크린샷%202024-12-24%20061541.png)
