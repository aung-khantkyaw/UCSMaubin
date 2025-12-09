import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/url_test/main.dart';
import 'package:chatapp_firebase/farming/views/cow.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../weather/weather_main.dart';

const String _url = 'https://www.ucsy.edu.mm/page103.do';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class Weather5 extends StatelessWidget {
  const Weather5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  MyWeather();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("နေ့စဉ် မိုးလေဝသသတင်း"),

      ),
      body: ListView.builder(
        itemCount: DemoValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: DemoValues.posts[index]);
        },
      ),
      floatingActionButton: const FloatingActionButton.extended(
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
      name: "မောင်သက်ဝေ",
      //email: "ishfar@gmail.com",
      email: "ငပိချောင်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "စိုးစိုးမူ",
      //email: "ishrak@gmail.com",
      email: "တံပိုးကုန်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးလက်ရာ",
      //email: "shakleen@gmail.com",
      email: "ဝသုန်မိုး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကျော်စိုး",
      //email: "shakleen@gmail.com",
      email: "ပိတောက်ခြံ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလွင်ကို",
      //email: "shakleen@gmail.com",
      email: "ပရိုက်ကြံခင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေသူ",
      //email: "shakleen@gmail.com",
      email: "အိမ်မဲ",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "7",
      name: "ကိုသန်းနိုင်",
      //email: "shakleen@gmail.com",
      email: "ပြည်တော်သာ",
      image: "assets/images/cus1.jpg",
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
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[4],
      title: "Disease",
      summary: """နွားခါနာလျှာနာရောဂါများ... """,
      body: """ဗိုင်းရပ်ပိုးကြောင့် ဖြစ်ပွားပြီး လျှင်မြန်စွာကူးစက်သော ရောဂါတစ်မျိုး ဖြစ်ပါသည်။
နွား၊ ၀က် တို့တွင် အဖြစ်များပြီး သိုး ၊ ဆိတ် စတဲ့ ခွာကွဲသတ္တဝါတွေမှာလည်း ဖြစ်ပွားပါသည်။ 
အရွယ်‌ရောက်ပြီး အကောင်များတွင် သေဆုံးမှုနှုန်း မရှိသလောက် နည်းသော်လည်း အငယ်များတွင် နှလုံးကြွက်သားယောင်ပြီး သေဆုံးနိုင်ပါသည်။
နို့စားနွားများ တွင် နို့ထွက်နှုန်းကို သိသိသာသာကျ စေနိုင်တဲ့ ရောဂါဖြစ်သောကြောင့် စီးပွားရေးအရ အ‌ရေးကြီးသော ရောဂါတစ်မျိုးလည်း ဖြစ်ပါသည်။
ခွာနာလျှာနာ‌ရောဂါကို ဖြစ်ပွားစေသော ဗိုင်းရပ်တွင် မျိုးခွဲ‌အနေဖြင့် ၇မျိုး ခွဲနိုင်ပြီး မျိုးခွဲတစ်မျိုးရဲ့ ခုခံအားသည် တစ်ခြား တစ်မျိုးကို ကာကွယ်နိုင်စွမ်း မရှိပါ။
 မြန်မာနိုင်ငံတွင်တွေ့ရှိ‌ရသော strain အမျိုးအစားမှာ O , Asia 1 နှင့် A တို့ ဖြစ်ပြီး O သည် အဖြစ်အများဆုံး ဖြစ်သည်။ 
ကူးဆက်ပြန့်နှံ့နိုင်သော နည်းလမ်းများ
ရောဂါရှိနေသော တိရစ္ဆာန်၏ အသက်ရှုထုတ်မှု ၊တံတွေး၊ မစင်၊ ဆီး ၊နို့ ၊ သုတ်ရည် တို့မှ ကူးဆက်နိုင်ပါသည်။ 
-ရောဂါကူးစက် ခံထား‌ရသော တိရစ္ဆာန်နှင့် တိုက်ရိုက် ထိတွေ့မှုရှိခြင်း
-ရောဂါပိုး ရှိနေသော တိရစ္ဆာန်ကို ခြံအတွင်း သယ်လာမိခြင်း၊ သီးခြား ခွဲမထားခြင်း
-ရောဂါပိုး ပါရှိနေသာ ပစ္စည်းများမှ ကူးဆက်ခြင်း (ခြံ ၊ အဆောက်အဦး ၊ ဖိနပ်၊ စက်ပစ္စည်း စသည်)
-ရောဂါပိုး ပါနေသော အစာကျန် ၊ ရေ စသည်တို့မှ ကူးဆက်ခြင်း
-ရောဂါဖြစ်နေသော တိရစ္ဆာန်မှ နို့ကို သောက်ခြင်း (နွားငယ်လေးများတွင်)
-ရောဂါဖြစ်နေသော တိရစ္ဆာန်၏ သုတ်ရည်ကို သားစပ်ရာတွင် အသုံးပြုမိခြင်း
-ရောဂါပိုးပါနေသော လေကို ရှုမိခြင်း (အပူပိုင်း ဇုန်များ၌ မြေပြင်တွင် ၃၀၀ကီလိုမီတာ အထိပြန့်နှံ့နိုင်ပါသည်)
ရောဂါလက္ခဏာများ
အဖျားရှိခြင်း၊ ပါးစပ်၊နှာခေါင်း၊ နှုတ်ခမ်း နှင့် ‌ခွာကြား၊ ခွာပန်းကုန်း၊ နို့တံတို့တွင် အရည်ကြည်ဖုများ တွေ့ရခြင်း၊ နို့ထွက်နှုန်းကျခြင်း၊ အစာစားနှုန်းကျခြင်း၊ သွားရည်ကျခြင်း၊ ခြေ‌ထောက်နာခြင်း၊ အရည်ကြည်ဖုများပေါက်ပြီး သွေးထွက်နေပြီး အနာများဖြစ်နေခြင်း တို့တွေ့ရမည် ဖြစ်သည်။
အနာများကို သန့်ရှင်းရေး လုပ်ပေးပြီး နောက်‌ဆက်တွဲရောဂါများ မဖြစ်အောင် လိုအပ်သော ကုသမှုများပေးရန်လိုအပ်သည်။
#crd
      """,

      imageURL: "assets/images/post_cow1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Disease",
      summary: """နွားဒေါင့်တန်းရောဂါ...""",
      body: """ ဒေါင့်တန်းရောဂါသည် Bacillus anthracis ဟု‌ခေါ်သော ဘတ်တီးရီးယားတစ်မျိုးကြောင့် ဖြစ်ပွားရပြီး၊ ထိုပိုးသည် လေနှင့် ထိတွေ့ပါက ထူထဲပြီး ပတ်၀န်းကျင်ဒဏ် ခံနိုင်သော အကာပါ၀င်‌သော(Spore form) အဖြစ်သို့ပြောင်းသွားပြီးမြေ၊ဖုန်၊ရွံ့နွံများထဲတွင်နှစ်ကာလကြာရှည်စွာရှင်သန်နိုင်ပါသည်။
       နွား အပါအ၀င် သွေးနွေး သတ္တဝါအားလုံးတွင် သာမက လူမှာပါ ရောဂါပြင်းထန်စွာ ဖြစ်ပွားပြီး သေဆုံးသည် အထိ ဖြစ်နိုင်ပါသည်။ 
ရောဂါကူးဆက်ပုံ
Sporeများသည် အသက်ရှုရာမှ ၀င်ရောက်နိုင်သလို၊ Sporeများပါ‌နေသော စားကျက်မြေ၊ ရေ နှင့် အပင်များကို စားမိ သောက်မိခြင်းနှင့် ခန္ဓာကိုယ်ရှိ အနာတရများမှလည်း ၀င်ရောက်‌နိုင်ပါသည်။ 
ရောဂါလက္ခဏာများ
ရောဂါပိုး၀င်ရောက်ပြီး ၃ရက်မှ ၇ရက်အတွင်း ရောဂါလက္ခဏာများတွေ့ရတတ်ပြီး ၊ ရောဂါလက္ခဏာပြပြီး ၂ရက်အတွင်းသေဆုံးနိုင်ပါသည်။ ရောဂါဖြစ်ပွားနေသော တိရစ္ဆာန်များတွင် အဖျားရှိခြင်း၊ ဒယိမ်းဒယိုင်ဖြစ်ခြင်း၊ ခန္ဓာကိုယ်တောင့်တင်းခြင်း၊ အသက်ရှုခက်ခြင်း၊ တုန်ခြင်းများ တွေ့ ရတတ်ပြီး၊
နောက်တွင် လဲကျပြီး နာရီပိုင်းအတွင်း သေဆုံးနိုင်ပါသည်။ 
ရောဂါလက္ခဏာ သိသိသာသာမပြဘဲ အကောင်းအတိုင်းမှလည်း ‌ရုတ်တရက် သေဆုံးနိုင်ပါသည်။
 သေဆုံးပြီးနောက် ပါးစပ်၊ နှာခေါင်းနှင့် စအိုတို့မှ သွေးများ ထွက်သည်ကို တွေ့ရတတ်သည်။ 
 ရောဂါလက္ခဏာပြနေပြီဖြစ်သော တိရစ္ဆာန်များတွင် ကုသမှု မထိရောက်နိုင်ပါ။ စောစီးစွာသိရှိလျှင် သိကျွမ်းနားလည်သောသူနှင့် ကုသမှုပေးပြီး ဂရုစိုက်ပေးရန်လိုအပ်ပါသည်။
ဒေါင့်တန်းရောဂါဟုတ်မဟုတ်ကို သံသယရှိသော တိရစ္ဆာန်၏ သွေးကို ဓာတ်ခွဲခန်းသို့ ပို့ပြီး စစ်ဆေးနိုင်ပါသည်။
 အပေါ်ယံသွေးပြန်ကြောမှ သွေးကို အဏုကြည့်မှန်ပြောင်းဖြင့် ကြည့်ပါက အချောင်းပုံစံ Spore များတွေ့ရနိုင်ပါသည်။
သတိထားရန် အချက်မှာ သေဆုံးသော နွားကို ဒေါင့်တန်းရောဂါဟု သံသရရှိပါက ရင်ခွဲစစ်ဆေးခြင်း ၊ စားသုံးခြင်းများ မလုပ်ရပါ။ အတော်တဆ ဖွင့်မိပါက သွေးများ မခဲခြင်း၊ သရက်ရွက် အဆမတန်ကြီးခြင်းများ တွေ့ရမည်ဖြစ်ပြီး၊ Spore များ ပတ်၀န်းကျင်တွင် ပြန့်နှံ့သွားမည်ဖြစ်ပါသည်။ခန္ဓာကိုယ်ကို မီးရှို့ဖျက်စီးခြင်း ၊ ခြောက်ပေအနက် မြေ‌ကျင်းတွင် မြုတ်ခြင်းများ ပြလုပ်ရမည်ဖြစ်ပြီး အသေကောင်နှင့် ထိတွေ့ထားသော အသုံးအဆောင်များကိုလည်း မီးရှို့ဖျက်စီးရမည်။
ထိရောက်စွာ ကာကွယ်ရန် ကာကွယ်ဆေးကို တစ်နှစ် တစ်ကြိမ် အချိန်မှန် စနစ်တကျ ထိုးရန်လိုအပ်ပါသည်။
#crd
""",
      imageURL: "assets/images/post_cow2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[6],
      title: "Disease",
      summary: """ပေါင်ပုပ်လက်ပုပ်ရောဂါ...""",
      body: """ ရောဂါဖြစ်တိရစ္ဆာန်တွင် ကြွက်သားများပေါများသည့် ပေါင် ၊ တင်ပါး ၊ လက်ပြင် ၊ ရင်အုပ် ၊ လည်ပင်း စသည့်နေရာများတွင် ရောင်ရမ်းပြီး လက်ဖြင့်ဖိကြည့်လျှင် လေခိုသည့်အသံကြားရမည်။ နွားငယ်များတွင်ထိုင်းမှိုင်းလာပြီး တုန်ယင်လဲကျ သေဆုံးတတ်သည်။
     
#crd
""",
      imageURL: "assets/images/post_cow18.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),


  ];

}

