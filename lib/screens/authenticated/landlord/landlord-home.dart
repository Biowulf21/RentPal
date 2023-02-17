import 'package:bumblebee/providers/auth-provider.dart';
import 'package:bumblebee/repositories/firestore-repository.dart';
import 'package:bumblebee/screens/reusable-widgets/buttons.dart';
import 'package:bumblebee/screens/authenticated/profile-page.dart';
import 'package:bumblebee/screens/authenticated/properties-page.dart';
import 'package:flutter/material.dart';
import 'package:speed_dial_fab/speed_dial_fab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/firebase-provider.dart';

class HomePageLayout extends ConsumerWidget {
  const HomePageLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: PrimaryButton(
        buttonText: 'Test',
        buttonCallback: () async {
          final user = await ref.read(authRepositoryProvider).getCurrentUser();
          final firestoreInstance = ref.read(FirestoreInstanceProvider);
          final result = await FirestoreRepository(firestoreInstance)
              .getDocument(collectionID: 'users', documentID: user!.uid);
        },
      ),
    );
  }
}

class LandlordHomeWidget extends ConsumerStatefulWidget {
  const LandlordHomeWidget({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LandlordHomeWidgetState();
}

class _LandlordHomeWidgetState extends ConsumerState<LandlordHomeWidget> {
  int _selectedIndex = 0;

  static const List<Widget> _bottomNavBarChildren = <Widget>[
    HomePageLayout(),
    PropertiesPage(),
    ProfilePage(),
  ];

  static const List<BottomNavigationBarItem> bottomNavItems =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.dashboard),
      label: "Home",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.cases), label: "Properties"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  static const List<IconData> _secondaryMenuIcons = <IconData>[
    Icons.house_sharp,
    Icons.search
  ];

  static const List<String> _secondaryMenuLabels = <String>[
    "Add New Property",
    "Search"
  ];

  void changeSelectedItemIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("BumbleBee"),
        backgroundColor: Colors.amber[700],
      ),
      body: _bottomNavBarChildren.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: _selectedIndex,
        onTap: changeSelectedItemIndex,
      ),
      floatingActionButton: SpeedDialFabWidget(
          primaryBackgroundColor: Theme.of(context).colorScheme.primary,
          primaryIconExpand: Icons.add,
          secondaryIconsList: _secondaryMenuIcons,
          secondaryIconsOnPress: [() => {}, () => {}],
          secondaryIconsText: _secondaryMenuLabels),
    );
  }
}