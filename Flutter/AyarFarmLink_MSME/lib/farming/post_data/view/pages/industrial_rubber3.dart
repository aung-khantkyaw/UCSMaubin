import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/158';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostRubberPage3 extends StatelessWidget {
  const PostRubberPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  IndustrialPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မြေဩဇာကျွေးနည်း"),

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
      name: "မောင်ထက်မြတ်",
      //email: "ishfar@gmail.com",
      email: "အညာသား",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မခင်ခင်လေး",
      //email: "ishrak@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းထက်နိုင်",
      //email: "shakleen@gmail.com",
      email: "ဘိုကလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုငပိန်",
      //email: "shakleen@gmail.com",
      email: "ထင်းကွင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးသစ္စာ",
      //email: "shakleen@gmail.com",
      email: "လမ်းမတော်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေသူဇော်",
      //email: "shakleen@gmail.com",
      email: "ထန်းတော",
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
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Rubber",
      summary: """အပင်များ ရှင်သန်ဖွံ့ဖြိုးလာစေရန်.. """,
      body: """
       မြေသြဇာကျွေးခြင်း_
အပင်များ ရှင်သန်ဖွံ့ဖြိုးလာစေရန် ပုံမှန်မြေဩဇာ ကျွေးရပါသည်။ အပင်စိုက်ပျိုးပြီး တစ်လအကြာတွင် မြေဩဇာစတင်ကျွေးပါသည်။ ပုံမှန်အားဖြင့် မိုးဦးမိုးနှောင်း အနေဖြင့် တစ်နှစ်နှစ်ကြိမ်ကျွေးရပါသည်။ အပင် သက်တမ်းအလိုက် မြေဩဇာ ကျွေးရမည့်နှုန်း ကွာခြားပြီး စတင် စိုက်ပျိုးချိန်မှ ဒုတိယနှစ်သားအထိ NPK 12: 12: 6 ရောစပ်ထား သောမြေဩဇာအား၂၅၀ဂရမ်အား/ PH ဖြင့် ထည့်သွင်း ပေးပါသည်။ တတိယ နှစ်သားမှ ၆ နှစ်သား အထိ ၅၀ဝဂရမ်နှုန်းဖြင့်၎င်း ၇နှစ်သားတွင် 12: 12: 6: 4 မက်ဂနီဆီယမ် အပါ ၆၅၀၀ ဂရမ် နှုန်းဖြင့် လည်းကောင်း၊ ၈ နှစ် နှင့်အထက်ရောက် ရော်ဘာ ပင်များအား ၅၀ဝ ဂရမ် နှုန်းဖြင့် လည်းကောင်း ကျွေးသင့်သည်။ မြေဩဇာ ကျွေးရာတွင် အပင် ဖြစ်ထွန်းမှုအလိုက် ဆူးထိုးကျွေးခြင်း၊ ပေါက်ကျွေးခြင်း၊ စက်ဝိုင်းပတ် ဖြူး ကျွေးခြင်း၊ ကြွက်မြီးတန်း ကျွေးခြင်း နှင့် လိုင်းကြား ကြဲပတ် ကျွေးခြင်း ဖြင့် အမျိုးမျိုး ကျွေးသည်။ ထိရောက်မှု ရှိစေရန် မြေအနေအထားအလိုက် ကျွေးနည်းစနစ် ပြောင်းလဲပေးနိုင်ပါသည်။
 ဒေသတွင် ရနိုင်သော သဘာဝမြေဩဇာဖြစ်သည့် နွားချေး၊ ကြက်ချေးဆွေး၊ သစ်ဆွေးတို့ကို ထည့်သွင်းနိုင်သည်။
#crd

 """,

      imageURL: "assets/rb2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "rubber",
      summary: """မြေသြဇာနှုန်းထား...""",
      body: """မြေသြဇာနှုန်းထား
(၁)စိုက်ကျင်းအခံအဖြစ် Rock Phosphate ၄ အောင်စ/ကျင်း
(၂)ပ နှစ် မိုးဦးတွင် ၁၁:၁၈:၄:၃ အရော ၃ အောင်စ/ပင်
မိုးနှောင်းတွင် ၁၁:၁၈:၄:၃ အရော ၄ အောင်စ/ပင်
(၃)ဒု နှစ် မိုးဦးတွင် ၁၁:၁၈:၄:၃ အရော ၈ အောင်စ/ပင်
မိုးနှောင်းတွင် ၁၁:၁၈:၄:၃ အရော ၁၀ အောင်စ/ပင်  
(၄)တ+စ နှစ်တွင် ၁၁:၁၈:၄:၃ အရောကို မိုးဦးတွင် ၁၂ အောင် စ/ပင်  
နှင့်မိုးနှောင်းတွင် ၁၂ အောင်စ/ပင်
(၅)ပဉ္စမ နှစ်တွင် ၁၅:၁၅:၆:၄ အရောကို မိုးဦးတွင် ၁၂ အောင်စ/ပင်
မိုးနှောင်းတွင် ၁၂ အောင်စ/ပင်
(၆)အစေးလှီးပြီးနောက်ပိုင်းနှစ်များ ၁၅:၁၅:၆:၄ အရောကို မိုးဦးတွင် ၁၆ အောင်စ/ပင်
နှင့်မိုးနှောင်းတွင် ၁၆ အောင်စ/ပင် 
(သို့) ၁၅:၇:၁၈:၂ အရောကို မိုးဦးတွင် ၁၆ အောင်စ/ပင် နှင့် မိုးနှောင်းတွင် ၁၆ အောင်စ/ပင်
#crd

""",
      imageURL: "assets/rb1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}