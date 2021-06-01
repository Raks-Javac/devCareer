import 'package:dev_career/src/style/constants.dart';
import 'package:flutter/material.dart';

const double kNavBarHeight = 80.0;

class DevCareerWeb extends StatefulWidget {
  @override
  _DevCareerWebState createState() => _DevCareerWebState();
}

class _DevCareerWebState extends State<DevCareerWeb> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        // margin:
        //     EdgeInsets.symmetric(horizontal: kWebMargin, vertical: kWebMargin),
        width: _width,
        height: _height,
        child: Container(
          decoration: kContainerDec,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [NavigationBar(), Body(height: _height, width: _width)],
            ),
          ),
        ),
      ),
      floatingActionButton: ChatUsButton(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required double height,
    @required double width,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      // color: Colors.green,
      width: _width,
      child: Stack(
        children: [
          Positioned(
            top: _height / 5,
            left: _width / 2,
            child: Image.asset(
              "assets/image/pana.png",
              width: _width / 2.4,
            ),
          ),
          Positioned(
            top: _height / 7,
            left: 25,
            child: Container(
              width: _width / 3.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Development \nBuild with Love",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Welcome to DevCareer, the right community to get your software developement projects done much faster with the right team and dthe right way",
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Button(
                          buttonText: "Sign Up",
                          backgroundColor: Color(0xFF72E79A),
                          fontWeight: FontWeight.bold,
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Button(
                            buttonText: "Services",
                            onPressed: () {},
                            backgroundColor: null)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Function onPressed;
  final FontWeight fontWeight;
  Button(
      {@required this.buttonText,
      @required this.onPressed,
      this.fontWeight,
      @required this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 80,
        height: 35,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Colors.white, width: 0.9),
        ),
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
            fontFamily: "PL",
            fontSize: 13,
            fontWeight: fontWeight,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: kNavBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Logo(),
          Expanded(
            flex: 3,
            child: Container(
              height: kNavBarHeight,
              child: Row(
                children: [
                  Navs(),
                  SignInAndMenuNav(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatUsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Color(0xFF72E79A),
      child: ImageIcon(
        AssetImage("assets/image/clarity_chat-bubble-outline-badged.png"),
        color: Color(0xFF6155AE),
      ),
    );
  }
}

class SignInAndMenuNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.only(
          right: 20,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                buttonText: "Sign In",
                onPressed: () {},
                backgroundColor: null,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: ImageIcon(
                  AssetImage(
                    "assets/image/iwwa_menu.png",
                  ),
                  color: Colors.white,
                  size: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Navs extends StatelessWidget {
  SizedBox _spacer() {
    return SizedBox(
      width: 50,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "How it works",
              style: Theme.of(context).textTheme.headline4,
            ),
            _spacer(),
            Text(
              "Service",
              style: Theme.of(context).textTheme.headline5,
            ),
            _spacer(),
            Text(
              "About Us",
              style: Theme.of(context).textTheme.headline5,
            ),
            _spacer(),
            Text(
              "Contact ",
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: ImageIcon(
            AssetImage(
              "assets/image/{DevCircle}.png",
            ),
            color: Colors.white,
            size: 180,
          ),
        ),
      ),
    );
  }
}
