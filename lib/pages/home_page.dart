import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text("str_flutter",style: TextStyle(fontSize: 19),).tr(),
            const SizedBox(height: 360,),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: () => context.setLocale(const Locale('en', 'US')),
                    child: const Text("English",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () => context.setLocale(const Locale('ko', 'KO')),
                    child: const Text("Korean",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () => context.setLocale(const Locale('ja', 'JA')),
                    child: const Text("Japanese",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
