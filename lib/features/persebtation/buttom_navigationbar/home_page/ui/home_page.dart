import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constant/text_constant.dart';
import '../../../../../core/widget/home_shows_widget.dart';
import '../../../../../core/widget/shows_container_widget.dart';
import '../../../widget/membership_list_widget.dart';
import '../cubit/hompage_cubit.dart';
import '../widget/task_hall_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = '/homepage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HompageCubit, HompageState>(
      listener: (context, state) {},
      builder: (context, state) {
        HompageCubit cubit = HompageCubit.get(context);
        return SafeArea(
          child: SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //bar
                SizedBox(
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(kLanguage),
                      ),
                      Image.asset(
                        "assets/images/logo-en-US.png",
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.chat))
                    ],
                  ),
                ),
                Image.asset(
                  fit: BoxFit.contain,
                  "assets/images/202310041321484036349736.png",
                ),
                ShowsContainerWidget(
                  choseModel: cubit.images[0],
                  height: 25,
                  heightContainer: 50,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 80,
                      crossAxisSpacing: 8),
                  itemCount: cubit.item.length,
                  itemBuilder: (context, index) {
                    return ShowsContainerWidget(
                      choseModel: cubit.item[index],
                      height: 30,
                      heightContainer: 50,
                    );
                  },
                ),
                Image.asset("assets/images/promote-en-US.png"),
                const Text(
                  kTaskHall,
                  textAlign: TextAlign.left,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisExtent: 100,
                      crossAxisSpacing: 8),
                  itemCount: cubit.taskHall.length,
                  itemBuilder: (context, index) {
                    return TaskHallWidget(
                      choseModel: cubit.taskHall[index],
                    );
                  },
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 150,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const HomeShowsWidget();
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(kMembershipList),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => MembershipListWidget(
                      membershipListModel: cubit.memberShip[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
                  itemCount: cubit.memberShip.length,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
