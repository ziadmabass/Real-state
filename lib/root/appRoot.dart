import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_real_state/cubit/cubit_cubit.dart';
import 'package:the_real_state/veiw/all_builders/allBuilder.dart';
import 'package:the_real_state/veiw/artificial_apartment/artificialApartment.dart';
import 'package:the_real_state/veiw/history/history.dart';
import 'package:the_real_state/veiw/notification/notification.dart';
import 'package:the_real_state/veiw/saved_card/savedCard.dart';
import 'package:the_real_state/veiw/saved_property/savedProperty.dart';
import 'package:the_real_state/veiw/search_estimated_cost/searchEstimatedCost.dart';
import 'package:the_real_state/veiw/audio_call/audioCall.dart';
import 'package:the_real_state/veiw/builder_profile/builderProfile.dart';
import 'package:the_real_state/veiw/chat/chatScraen.dart';
import 'package:the_real_state/veiw/contect_us/contectUs.dart';
import 'package:the_real_state/veiw/home/homeScraen.dart';
import 'package:the_real_state/veiw/indevidule_chat/indeviduleChat.dart';
import 'package:the_real_state/veiw/main_layout/mainLayout.dart';
import 'package:the_real_state/veiw/owner_profile/ownerProfile.dart';
import 'package:the_real_state/veiw/question/questionScrean.dart';
import 'package:the_real_state/veiw/setting/setting.dart';
import 'package:the_real_state/veiw/splash_screan/splashScrean.dart';
import 'package:the_real_state/veiw/terms&condetions/terms&condetions.dart';
import 'package:the_real_state/veiw/total_estimation/totalEstemation.dart';
import 'package:the_real_state/veiw/transaction_details/transactionDeteils.dart';
import 'package:the_real_state/veiw/video_call/videoCall.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CubitCubit()),
      ],
      child: BlocBuilder<CubitCubit, CubitState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splashscrean(),
       theme: ThemeData.dark(),
            darkTheme: ThemeData.light(),
            themeMode: CubitCubit.get(context).isDark
                ? ThemeMode.light
                : ThemeMode.dark,
          );
        },
      ),
    );
  }
}
