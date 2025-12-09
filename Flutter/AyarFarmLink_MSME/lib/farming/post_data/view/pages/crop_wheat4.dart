import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/64';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostWheatPage4 extends StatelessWidget {
  const PostWheatPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  HomePage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဂျုံနှင့်အာဟာရ"),

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
      name: "တင်မောင်သိန်း",
      //email: "ishfar@gmail.com",
      email: "ကားဆရာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်သီတာ",
      //email: "ishrak@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ထက်မြက်",
      //email: "shakleen@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုထင်ထက်",
      //email: "shakleen@gmail.com",
      email: "ဘုရားလမ်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးစိုးနိုင်",
      //email: "shakleen@gmail.com",
      email: "ပုတီးကုန်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "အိသဲ",
      //email: "shakleen@gmail.com",
      email: "ရန်ကုန်",
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[1],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "6",
      author: users[0],
      title: "Wheat",
      summary: """ဂျုံကြမ်းတွင်ပါ၀င်သော.. """,
      body: """ဂျုံကြမ်းမှာ အာဟာရဓာတ် အမျိုးမျိုး ပါဝင်တာကြောင့် လူကြိုက်အများဆုံး အစေ့အဆန်တွေပါ။ ၎င်းတို့တွင် အပင်အခြေခံ ပရိုတင်းဓာတ်နှင့် အမျှင်ဓာတ်များ ပါဝင်သည်။
       ဆီလီနီယမ်၊ မဂ္ဂနီဆီယမ်နှင့် ဖော့စဖရပ်စသည့် အာဟာရဓာတ်များ ကြွယ်ဝစွာပါဝင်သည့်အပြင် အဆိုပါအစေ့အဆန်များတွင် ပျော်ဝင်နိုင်သော အမျှင်ဓာတ်များလည်း ပါဝင်သည်။ 
       ၎င်းသည် ကြေညက်သောအခါတွင် ဂျယ်လ်ကဲ့သို့ ဒြပ်ပေါင်းများ ဖြစ်ပေါ်လာသည့် မရှိမဖြစ်လိုအပ်သော အမျှင်ဓာတ်တစ်ခုဖြစ်သည်။ 
      ဂျုံကြမ်း (81g) တစ်ခွက်မှာ 55g carbs၊ ပရိုတင်း11g၊ 8g fiber၊ 5gm fat၊နေ့စဉ်တန်ဖိုး DV selenium 27%၊ DV 6%၊ DV oat flakes 27% တို့ ပါဝင်ပါတယ်။
ဂျုံကြမ်းတွင် ပျော်ဝင်နိုင်သော အမျှင်ဓာတ်၏ အဓိကဒြပ်ပေါင်းမှာ beta-glucan ဖြစ်ပြီး အစေ့အဆန်အများစု၏ ကျန်းမာရေးအကျိုးကျေးဇူးများကို ပံ့ပိုးပေးသည်။ ဂျုံကြမ်းမှာ ပရိုတင်းဓာတ်ပါဝင်မှုဟာ အာဟာရဓာတ်ကြွယ်ဝတဲ့ ပဲစေ့တွေမှာပါတဲ့ ပဲမျိုးတွေနဲ့ ဆင်တူပါတယ်။ 
ဤအစေ့အဆန်များသည် စုပ်ယူနိုင်သော အပင်ပရိုတိန်းတွင် အာဟာရဓာတ်မြင့်မားပြီး အခြားအစေ့အဆန်များထက် ဤအာဟာရကို ပိုမိုထောက်ပံ့ပေးသည်။ 
       #crd https://shopgiejo.com/
      """,

      imageURL: "assets/images/post_wheat41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Wheat",
      summary: """ဂျုံနဲ့ လုပ်ထားတဲ့ အစားအစာ...""",
      body: """ ဂျုံနဲ့ လုပ်ထားတဲ့ အစားအစာတော်တော်များများကို မနက်စာအဖြစ် ပိုပြီး အစားများကြပါတယ်။ လက်ဖက်ရည်ဆိုင်မှာ မနက်ခင်းရတဲ့ အဆာပြေ မုန့်တော်တော်များများဟာ ဂျုံနဲ့ လုပ်ထားကြတာပါ။ အီကြာကွေး၊ ပလာတာ၊ အုန်းနို့ခေါက်ဆွဲ ခေါက်ဆွဲကြော်၊ ပေါင်မုန့်တွေဟာ ဂျုံရဲ့ အရင်းအမြစ်တွေပါပဲ။ ဒီတော့ ကိုယ်ရဲ့ နေ့စဉ်စားသုံးမှုထဲမှာ ပါဝင်တဲ့ ဂျုံက ကိုယ့်ကျန်းမာရေးကို ဘယ်လောက်အထိ အကျိုးပြုသလဲဆိုတာ သိထားဖို့ လိုပါတယ်။ ဒါမှလည်း အစားလည်းဆေး ဆေးလည်းအစာ ဖြစ်ပြီး ကျန်းမာနုပျိုလှပစေမှာပါ။
အကျိုးကျေးဇူးတွေကတော့…
အဝလွန်ခြင်းကို ထိန်းချုပ်ပေးခြင်း၊အစာခြေစနစ်ကောင်းမွန်စေခြင်း၊ နှလုံးရောဂါဖြစ်ခြင်းကို ကာကွယ်ပေးခြင်း၊ ကယ်လ်စီယမ်ဓါတ် ရရှိခြင်း
#crd https://hellosayarwon.com/
""",
      imageURL: "assets/images/post_wheat42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

