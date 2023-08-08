import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/delivery_page.dart';
import 'package:foodu_app/pages/order_sucess_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String pay="card";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const DeliveryPage()));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: const Color(0xff3F654F),
                      size: 30.sp,
                    )),
                SizedBox(width: 40.w),
                Text(
                  "    Checkout",
                  style: TextStyle(
                      color: const Color(0xff3F654F),
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 60.w),
                Icon(
                  (Icons.shopping_bag_rounded),
                  color: const Color(0xff3F654F),
                  size: 35.h,
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Text(
              "       Payment",
              style: TextStyle(
                  color: const Color(0xff3F654F),
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30.h),
            Center(
                child: Container(
                    height: 170.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffEDEDED),
                        borderRadius: BorderRadius.circular(20.r)),
                        child: Column(
                          children: [
RadioListTile(
          title: Row(
    children: [
      ///use your image
           Container(

            height: 30.h,
            width: 30,
       
            decoration: BoxDecoration(
              color: const Color(0xff3F654F),
            borderRadius: BorderRadius.circular(5.r)
            ),child:  Image.asset(
                'assets/images/Group.png',
                
              ),

           ),
           SizedBox(width: 8.w,),
      Text("Card"),
    
    ],
  ),
          value: "card", 
          groupValue:pay, 
          onChanged: (value){
            setState(() {
                pay= value.toString();
            });
          },
      ),
 Divider(
                      thickness: 2,
                        indent: 10,endIndent: 10,
                    ),
      RadioListTile(
          title: Row(
    children: [
    
           Container(

            height: 30.h,
            width: 30,
       
            decoration: BoxDecoration(
              color: const Color(0xff3F654F),
            borderRadius: BorderRadius.circular(5.r)
            ),child:  Icon(Icons.money,color: Colors.white,)

           ),
             SizedBox(width: 8.w,),
      Text("Cash on delivery"),]),
        
          value: "Cash on delivery", 
          groupValue: pay, 
          onChanged: (value){
            setState(() {
                pay= value.toString();
            });
          },
      ),
                          ],
                        ),)),
                 SizedBox(height: 280.h),
        Row(
          children: [
            SizedBox(width: 50.w),
            Text(
              "Total",
              style: TextStyle(
                color: Color(0xff406A52),
                fontSize: 20.sp,
                //fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 150.w),
            Text(
              "23,000",
              style: TextStyle(
                  color: Color(0xff406A52),
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 40.h),
        Center(
          child: SizedBox(
            height: 55.h,
            width: 350.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xff406A52),
                    elevation: 4,
                    shadowColor: Colors.grey),
                onPressed: () {
                  //  showDialog(context: context, builder: (context){
                  // return Container(
                  
                  //   child:AlertDialog(
                      
                  //     title: Text(""),
                  //   ) ,
                  // );
                  //  });
                       Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const OrderPage()));
                },
                child: Text(
                  "Complete order",
                  style: TextStyle(
                      color: const Color(0xffECECEC),
                      fontSize: 18.sp,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),         

          ],
        ),
      ),
    );
  }
}
