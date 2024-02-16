import 'package:flutter/material.dart';
import '../../../../core/widget/home_shows_widget.dart';
import '../../../../core/widget/icon_button_arrow_ios_widget.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});
  static String id = '/taskListPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                IconButtonArrowBackIosWidget(),
                Expanded(flex: 2, child: Center(child: Text("قائمة المهام"))),
              ],
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spacer(),
                        Column(
                          children: [
                            Text("المهام المتبقية اليوم (PCE)"),
                            Text("0")
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text("المهام المتبقية اليوم (PCE)"),
                            Text("0"),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  GridView.builder(
                    padding: const EdgeInsets.all(10),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 160,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return const HomeShowsWidget();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
