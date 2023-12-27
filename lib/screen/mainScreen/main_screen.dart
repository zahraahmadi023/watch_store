import 'package:flutter/material.dart';
import 'package:watch_store/screen/mainScreen/basket_screen.dart';
import 'package:watch_store/screen/mainScreen/profile_screen.dart';
import 'package:watch_store/widgets/btm_nav_item.dart';

import 'home_screen.dart';
class  BtmNaveScreenIndex{//////////////index name
static const  home=0;
static const  basket=1;
static const  profile=2;
}

class MainScreen extends StatefulWidget {

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
List<int> _routHestori=[BtmNaveScreenIndex.home] ;

  int selectedIndex=BtmNaveScreenIndex.home;

  final GlobalKey<NavigatorState> _homeKey=GlobalKey();
  final GlobalKey<NavigatorState> _basketKey=GlobalKey();
  final GlobalKey<NavigatorState> _profileKey=GlobalKey();

  late final map={
    BtmNaveScreenIndex.home:_homeKey,
    BtmNaveScreenIndex.basket:_basketKey,
    BtmNaveScreenIndex.profile:_profileKey
  };
  //map[0]=>_homebasket
  //map[0]=>_basketbasket
  //map[0]=>_profilbasket

  Future<bool> _onwillpop()async{
    if(map[selectedIndex]!.currentState!.canPop()){
      map[selectedIndex]!.currentState!.pop();
    }else if(_routHestori.length>1){
      setState(() {
        _routHestori.removeLast();
        selectedIndex=_routHestori.last;
        
      });
      
    }
    // if(_homeKey.currentState!.canPop()){
    //   _homeKey.currentState!.pop();
    // }
    // if(_basketKey.currentState!.canPop()){
    //   _basketKey.currentState!.pop();
    // }
    // if(_profileKey.currentState!.canPop()){
    //   _profileKey.currentState!.pop();
    // }
    return false ;
  }

  @override
  Widget build(BuildContext context) {
    
    var Size=MediaQuery.of(context).size;
    double btmNavHeight=Size.height*.1;
    return  WillPopScope(
      onWillPop: () {
        return _onwillpop();

      },
      child: Scaffold(
        body: Stack(
          
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: btmNavHeight,
              child:IndexedStack(
                index:selectedIndex,
              children: [
              Navigator(
                key: _homeKey,
                onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) =>  HomeScreen(),),
              ),
              Navigator(
                key: _basketKey,
                onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) =>  BasketScreen(),),
              ),
              Navigator(
                key: _profileKey,
                onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) =>  ProfileScreen(),),
              ),
              ],
    
    
                )
            ),
    
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child:Container(
                color: Colors.white,
                height: btmNavHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                
                  btmNavItem(
                      iconSvgPath: 'images/svg1/user.svg',
                      text: 'پروفایل',
                      isActive: selectedIndex==BtmNaveScreenIndex.profile,
                      onTap:() => btmNavOnpress(index: BtmNaveScreenIndex.profile),
                    ),
                    btmNavItem(
                      iconSvgPath: 'images/svg1/basket.svg',
                      text: 'سبد خرید  ',
                      isActive: selectedIndex==BtmNaveScreenIndex.basket,
                      onTap: () {
                        return btmNavOnpress(index: BtmNaveScreenIndex.basket);
                      },
                    ),
                    btmNavItem(
                      iconSvgPath: 'images/svg1/home.svg',
                      isActive:selectedIndex==BtmNaveScreenIndex.home,
                      text: 'خانه',
                      onTap:() => btmNavOnpress(index: BtmNaveScreenIndex.home),
                    ),
                ]),
              ),
            ),
          ]
          ,)
      ),
    );
  }



  btmNavOnpress({required index}){
  setState(() {
    selectedIndex=index;

    _routHestori.add(selectedIndex);
  });

}
}
