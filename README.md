# 노마드 코드 플러터 toonflix 학습

## 01/project-creation

* flutter project 생성

```bash
$ flutter create [프로제트 명]
```

## 02/hello-world

### 1. flutter app 시작점

* lib/main.dart의 main 함수에서 시작된다.

* runApp 메소드를 통해 `루트 위젯`을 실행한다.

* 루트 위젯은 아래 2가지 

    + 머터리얼 App : 구글 머터리얼 디자인 가이드를 따른 App

    + 쿠퍼치노 App : iOS 디자인 가이드를 따른 App

### 2. root App 구동

* runApp을 통해 실행될 클래스를 지정

* 실행될 클래스는 StatelessWidget, StatefulWidget등을 상속해야 한다.

* 상속한 클래스는 build 메소드를 override 해야 한다.

### 3. App 클래스 구조

* 루트 위젯 MaterialApp을 리턴한다.

* MaterialApp은 home 속성으로 Scaffold를 받는다.

* Scaffold는 머터리얼 디자인에 대한 개략적인 구조이다.

* 현재 구성은 아래와 같다.

    + appBar : 앱의 상단에 앱에 대한 설명을 나타낸다.

    + body: 실제 앱의 영역으로 현재 'Hello World' 텍스트를 출력한다.

```dart
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```