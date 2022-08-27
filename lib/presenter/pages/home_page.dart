import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../model/dimens.dart' as example;
import '../model/strings.dart' as example;
import '../model/colors.dart' as example;
import '../model/styles.dart';
import 'dart:developer';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Conecta'),
      // ),
      body: Container(),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        bottomBarItems: [
          BottomBarItemsModel(
            icon: const Icon(Icons.home, size: example.Dimens.iconNormal),
            iconSelected: const Icon(Icons.home,
                color: AppColors.cherryBlue, size: example.Dimens.iconNormal),
            title: example.Strings.home,
            dotColor: example.AppColors.cherryBlue,
            onTap: () {
              log('Início');
            },
          ),
          BottomBarItemsModel(
            icon: const Icon(Icons.search, size: example.Dimens.iconNormal),
            iconSelected: const Icon(Icons.search,
                color: AppColors.cherryBlue, size: example.Dimens.iconNormal),
            title: example.Strings.search,
            dotColor: example.AppColors.cherryBlue,
            onTap: () {
              log('Buscar');
            },
          ),
          BottomBarItemsModel(
            icon: const Icon(Icons.person, size: example.Dimens.iconNormal),
            iconSelected: const Icon(Icons.person,
                color: AppColors.cherryBlue, size: example.Dimens.iconNormal),
            title: example.Strings.person,
            dotColor: example.AppColors.cherryBlue,
            onTap: () {
              log('Perfil');
            },
          ),
          BottomBarItemsModel(
              icon: const Icon(Icons.settings, size: example.Dimens.iconNormal),
              iconSelected: const Icon(Icons.settings,
                  color: AppColors.cherryBlue, size: example.Dimens.iconNormal),
              title: example.Strings.settings,
              dotColor: example.AppColors.cherryBlue,
              onTap: () {
                log('Configurações');
              }),
        ],
        bottomBarCenterModel: BottomBarCenterModel(
          centerBackgroundColor: example.AppColors.cherryBlue,
          centerIcon: const FloatingCenterButton(
            child: Icon(
              Icons.add,
              color: AppColors.white,
            ),
          ),
          centerIconChild: [
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.home,
                color: AppColors.white,
              ),
              onTap: () => log('Item1'),
            ),
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.home,
                color: AppColors.white,
              ),
              onTap: () => log('Item2'),
            ),
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.home,
                color: AppColors.white,
              ),
              onTap: () => log('Item3'),
            ),
          ],
        ),
      ),
    );
  }
}
