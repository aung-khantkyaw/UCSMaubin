import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/112';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostMuskmelonPage3 extends StatelessWidget {
  const PostMuskmelonPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  FruitPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("သခွားမွှေး ဖျက်ပိုး"),

      ),
      body: ListView.builder(
        itemCount: DemoValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: DemoValues.posts[index]);
        },
      ), floatingActionButton: const FloatingActionButton.extended(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      onPressed: _launchURL,
      label: Text('See More'),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "ကိုသာအေး",
      //email: "ishfar@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ငြိမ်း",
      //email: "ishrak@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မအာင်ဆန်းလင်း",
      //email: "shakleen@gmail.com",
      email: "မြေလတ်သား",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်မင်းစိန်",
      //email: "shakleen@gmail.com",
      email: "သဲကုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးဗညား",
      //email: "shakleen@gmail.com",
      email: "ကျောက်ဆည်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ရှု့မငြီး",
      //email: "shakleen@gmail.com",
      email: "ခေတ်သစ်မောင်မယ်",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
  ];

  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
      "Thank you",
      user: users[0],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[1],
      title: "Muskmelon",
      summary: """သီးထိုးယင်သည် ခြင်၊ယင်... """,
      body: """သီးထိုးယင်သည် ခြင်၊ယင်အုပ်စု (Order: Diptera)တွင် ပါဝင်သော ယင်ကောင်အမျိုးအစား အင်းဆက်ဖျက်ပိုးတစ်မျိုးဖြစ်သည်။ သရက်သီး၊ ဇီးသီး၊ မာလကာသီး၊ နဂါးမောက်သီး၊ သင်္ဘောသီး၊ ကျွဲကောသီး၊ မင်းဂွတ်သီး၊ လိမ္မော်သီး၊ နှင်းသီး၊ မက်မွန်သီး၊ ကြက်မောက်သီး၊ သခွားမွှေးသီး စသည့်သစ်သီးဝလံများနှင့် ဗူး၊ဖရုံ၊သခွား၊ခဝဲ၊ကြက်ဟင်းခါး၊ပဲလင်းမြွေသီး၊ငရုတ်၊ခရမ်းချဉ် စသည့် ဟင်းသီးဟင်းရွက်အုပ်စုမှ အသီးများတွင် ကျရောက်ဖျက်ဆီးလျက်ရှိပြီး တိုင်းဒေသကြီးနှင့် ပြည်နယ် အားလုံးတွင် ပြန့်နှံကျရောက်လျက်ရှိသည်။
သီးထိုးယင်သည် ကျရောက်သော လက်ခံပင်(အသီးပင်) အမျိုးအစား၊ ယင်ကောင်၏ သွင်ပြင် လက္ခဏာ၊ မျိုးပွားနှုန်းနှင့် ဘဝစက်ဝန်းကြာချိန် စသည်တို့အပေါ် မူတည်၍ မျိုးစိပ်အမျိုးမျိုးရှိပါသည်။ ကမ္ဘာပေါ်တွင် သီးထိုးယင်မျိုးစိပ်ပေါင်း ထောင်နှင့်ချီ၍ရှိပြီး အချို့သောမျိုးစိပ်များမှာ သမပိုင်းရာသီဥတု ရှိသောနိုင်ငံများ(Temperate Region Countries) တွင်တွေ့ရပြီး အပူပိုင်းနိုင်ငံများ(Tropical Region Countries) တွင် မတွေ့ရှိပါ။ မြန်မာနိုင်ငံတွင် ၂၀၁၆ခုနှစ်အထိ အမျိုးအစားခွဲခြား အတည်ပြုပြီးသော မျိုးစိပ်ပေါင်း(၁၆)မျိုးရှိပါသည်။ ၎င်းတို့အနက်မှ မြန်မာနိုင်ငံတွင် အများဆုံးတွေ့ရသော သီးထိုးယင် မျိုးစိပ်များမှာ Oriental fruit fly (Bactrocera dorsalis)၊
 Melon fly (Bactrocera cucurbitae) နှင့် Guava fruit fly (Bactrocera correcta) တို့ဖြစ်ပါသည်။
 #crd ထွက်တိုး
      """,

      imageURL: "assets/images/post_muskmellon31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[5],
      title: "Muskmelon",
      summary: """အရွက်စားကျိုင်းကောင်များ .. """,
      body: """ ဖျက်ပိုးများမှာ အရွက်စား ကျိုင်း ကောင်များ ၊ အစက်အပြောက်နှင့် အစင်းပါ သခွါးကျိုင်း ကောင်များ၊ အစက်ပြောက်ပါသော (သို့မဟုတ်) မပါသော ဘူး၊ ဖရုံကျိုင်းဝါများ တို့ဖြစ်ပါသည်။ အဆိုပါဖျက်ပိုးများသည် ဖျက်ဆီးမှု လက္ခဏာတူညီပြီး ဖရဲပင်ကို ကိုက်ဖြတ်ဝါးစားကြပါသည်။ 
      ၎င်းပိုးများ ကျရောက်နေပါက အပင်ကြီးထွားမှုကို နှောင့်နှေးစေပါသည်။
       မျှတသောပတ်ဝန်းကျင်နှင့် မြေကောင်းတွင် ဖြစ်ထွန်း အောင်မြင်နေသော ဖရဲပင်သည် ပိုးမွှားများကို မဖိတ်ခေါ်သင့်သလို ထိုပိုးမွှားများရန်မှ ကင်းဝေး အောင်လည်း အလျင်အမြန် ကြီးထွားသင့်သည်။
       #crd greenwaymyannmar
      """,

      imageURL: "assets/images/post_muskmellon1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),


  ];
}

