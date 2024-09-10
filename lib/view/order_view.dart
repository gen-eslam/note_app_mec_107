import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Order",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30.r),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(4.r),
              color: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: 47.r, vertical: 10.r),
                      color: Colors.brown,
                      child: const Text("data"),
                    ),
                  ),
                  const Expanded(
                      child: Text(
                    "data",
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            const Text(
              "data",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16.h,
            ),
            const Text(
              "data",
              textAlign: TextAlign.center,
            ),
            const Text(
              "data",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                OutlinedButton(onPressed: () {}, child: const Text("data")),
                SizedBox(
                  width: 8.h,
                ),
                OutlinedButton(onPressed: () {}, child: const Text("data"))
              ],
            ),
            Divider(
              height: 20.r,
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 50.r,
                  height: 50.r,
                ),
                SizedBox(
                  width: 12.w,
                ),
                const Column(
                  children: [
                    Text(
                      "data",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "data",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const Spacer(),
                const CircleAvatar(),
                SizedBox(
                  width: 5.w,
                ),
                const Text("1"),
                SizedBox(
                  width: 5.w,
                ),
                const CircleAvatar()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
