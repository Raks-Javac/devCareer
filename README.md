# dev_career

![Slide 16_9 - 1](https://user-images.githubusercontent.com/56641192/120399860-bbb74d00-c334-11eb-9849-4dbd94317627.png)



























<!-- 

Controlling the drawer 
GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();
  
   @override
  Widget build(BuildContext context) {
  return SliderMenuContainer(
              appBarColor: Colors.white,
              key: _key,
              sliderMenuOpenSize: 200,
              sliderMenu: MenuWidget(
                onItemClick: (title) {
                  _key.currentState.closeDrawer();
                  setState(() {
                    this.title = title;
                  });
                },
              ),
              sliderMain: MainWidget()),
      
Using the below methods for controll drawer .
 _key.currentState.closeDrawer();
 _key.currentState.openDrawer();
 _key.currentState.toggle();
 _key.currentState.isDrawerOpen();

Use below variable if you want to controlle animation.
_key.currentState.animationController
 -->
