import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constant/text_constant.dart';
import '../../../widget/earn_detales_widget.dart';
import '../../../widget/row_button_withe_text.dart';
import '../cubit/mepage_cubit.dart';

class MePage extends StatelessWidget {
  const MePage({super.key});
  static String id = '/me';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MepageCubit, MepageState>(
      listener: (context, state) {},
      builder: (context, state) {
        MepageCubit cubit = MepageCubit.get(context);
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              kMyWallet,
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/head_13.png"),
                      ),
                      const Text("01069415696"),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text(kBalanceEGP), Text("1091.5")],
                        ),
                      ),
                      const Text(" $kEffectiveDate 2024-01-17~2025-01-16"),
                      SizedBox(
                        height: 200,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 100,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8),
                          itemBuilder: (context, index) =>
                              const EarnDetalesWidget(),
                          itemCount: 4,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisExtent: 100,
                            crossAxisSpacing: 8,
                          ),
                          itemBuilder: (context, index) =>
                              const EarnDetalesWidget(),
                          itemCount: 3,
                        ),
                      )
                      /*   SizedBox(
                        height: 100,
                        child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 8,
                          ),
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              const EarnDetalesWidget(),
                          itemCount: 3,
                        ),
                      ), */
                    ],
                  ),
                ),
                Container(
                    height: 450,
                    padding: const EdgeInsets.all(10),
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // shrinkWrap: true,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 5,
                      ),
                      itemBuilder: (context, index) => RowButtonWitheText(
                          myButttonsModel: cubit.myButtons[index]),
                      itemCount: cubit.myButtons.length,
                    )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
