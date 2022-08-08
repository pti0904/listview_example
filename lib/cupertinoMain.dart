import 'package:flutter/cupertino.dart';
import 'animalItem.dart';
import 'iosSub/cupertinoFirstPage.dart';

class CupertinoMain extends StatefulWidget {
  //여기부터 다음 오버라이드 전까진 탭바 만들기


  @override
  State<StatefulWidget> createState() {
  return _CupertinoMain();
  }
}

//안드로이드 쓸때 화면 이상하면 글꼴 의심
//화면 구성하는 기본 골격을 만듬
class _CupertinoMain extends State<CupertinoMain> {
  CupertinoTabBar? tabBar;
  List<Animal> animalList=List.empty(growable:true);

  @override
  void initState(){
    super.initState();
    tabBar = CupertinoTabBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
    ]);

    animalList.add(Animal(animalName: "벌", kind : "곤충", imagePath: "repo/images/bee.png"));
    animalList.add(Animal(animalName: "고양이", kind : "포유류", imagePath: "repo/images/cat.png"));
    animalList.add(Animal(animalName: "젖소", kind : "포유류", imagePath: "repo/images/cow.png"));
    animalList.add(Animal(animalName: "강아지", kind : "포유류", imagePath: "repo/images/dog.png"));
    animalList.add(Animal(animalName: "여우", kind : "포유류", imagePath: "repo/images/fox.png"));
    animalList.add(Animal(animalName: "원숭이", kind : "영장류", imagePath: "repo/images/monkey.png"));
    animalList.add(Animal(animalName: "돼지", kind : "포유류", imagePath: "repo/images/pig.png"));
    animalList.add(Animal(animalName: "늑대", kind : "포유류", imagePath: "repo/images/wolf.png"));
  }


  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
//build함수에 만들어 놓은 탭바에 넣음
          tabBar: tabBar!,
          tabBuilder: (context, value) {
            if (value ==0) {
              //CupertinoFirstPage반환
              return CupertinoFirstPage(animalList: animalList,);

            }else {
              return Container(
                child: Center(
                  child: Text('cupertino tab 2'),
                ),
              );
            }
          }

      ),
    );
  }
}
//main.dart파일 열고 이 파일 불러오고 main()함수에서 runApp()괄호 안을 CupertinoMain()으로 변경
//그리고 실행해보면 탭바에 쿠퍼티노 디자인의 아이콘이 보임

