import 'package:counter_app/views/nav_bar/cubit.dart';
import 'package:counter_app/views/nav_bar/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarStates>(
        builder: (context, state) {
          final cubit = BlocProvider.of<NavBarCubit>(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(["Home", "Account"][cubit.currentIndex]),
              backgroundColor: Colors.deepPurple,
            ),
            body: [Text('Home'), Text('Account')][cubit.currentIndex],
            bottomNavigationBar: _BottomNavBar(),
          );
        },
      ),
    );
  }
}



class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<NavBarCubit>(context);
    return BottomNavigationBar(
      currentIndex: cubit.currentIndex,
      onTap: cubit.changeIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Account",
        ),
      ],
    );
  }
}


/*

import 'package:flutter/material.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: [Text('Home'), Text('Account')][currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (v) {
          currentIndex = v;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}


 */
