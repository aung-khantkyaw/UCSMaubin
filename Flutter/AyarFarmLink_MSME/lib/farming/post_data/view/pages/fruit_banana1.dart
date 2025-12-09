import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/78';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostBananaPage1 extends StatelessWidget {
  const PostBananaPage1({Key? key}) : super(key: key);

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
        title: Text("ငှက်ပျောစိုက်ပျိုးနည်း"),

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
      name: "ဦးရွှေကြီး",
      //email: "ishfar@gmail.com",
      email: "ရေကြည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ရင်ရင်ဌေး",
      //email: "ishrak@gmail.com",
      email: "သမိန်ထော",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်သူရိယ",
      //email: "shakleen@gmail.com",
      email: "စက်မှုဇုန်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမင်းလူ",
      //email: "shakleen@gmail.com",
      email: "ကြက်သောက်စမ်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးသန့်ဇင်",
      //email: "shakleen@gmail.com",
      email: "တောင်ပေါ်သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနှင်းဆီ",
      //email: "shakleen@gmail.com",
      email: "ခြောက်ပင်ကွေ့",
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
      title: "Banana",
      summary: """စိုက်ပျိုးနည်း.. """,
      body: """မြေသား ကျစ်လစ်မာကျောလျှင် ရေစိမ့်ဝင်မှုနှင့် လေဝင်လေထွက် ကောင်းစေရန် ထယ်နက် နက် ထိုးပေးရသည်။ 
      ငှက်ပျောသည် စိုက်သည်မှ မရိတ်သိမ်းမီထိ ၁၀ - ၁၂လ ကြာမြင့်တတ်ပြီး အပူချိန် နိမ့်ပါက ပိုမိုကြာရှည်တတ်ပါသည်။
စီးပွားဖြစ် စိုက်ပျိုးခြင်းအတွက် နည်းလမ်း (၂)မျိုး ရှိပါ သည်။ 
ပင်ပိုင်းစိုက်ပျိုးခြင်း (သားတက်များ သို့မဟုတ် မြေအောက်ပင်စည်များ)တစ်ရှူးမျိုးပွား ရရှိ သော အပင်ငယ်များ စိုက်ပျိုးခြင်းကို အပင်မြုံသည့် အခြေအနေတွင် စိုက်ခြင်းဖြစ်သည်။
ငှက်ပျောကို တစ်ဟက်တာလျှင် အပင် ၁၅၀ဝ မှ ၃၀ဝဝ ပင်( တစ်ဧက အပင်ဦးရေ ၆၀၀ - ၁၂၀၀)ထိ သတ်မှတ်လျှက် တစ်တန်းချင်းဖြစ်စေ၊ နှစ်တန်းပူး ဖြစ်စေ စိုက်ပျိုးနိုင်သည်။ 
စိုက်ပြီး ငှက်ပျောပင်များကို လေပြင်းတိုက်ခတ်မှုမှ ကာကွယ်ရန် လေကာ ပင်များ လိုအပ်ပါသည်။

#crd

      """,

      imageURL: "assets/images/post_banana1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Banana",
      summary: """စိုက်ပျိူးသင့်သည့်မြေအမျိုးအစား...""",
      body: """ငှက်ပျောသည် သင့်တော်သော အပူချိန်ဖြစ်သည့် နေ့အပူချိန် ၂၇ ဒီဂရီစင်တီဂရိတ်နှင့် အပူချိန် ၁၃ ဒီဂရီစင်တီဂရိတ်အောက် မနိမ့်သော ပူအိုက်စွတ်စိုသည့် ပတ်ဝန်းကျင်တွင် ကောင်းစွာ ပေါက်ရောက်နိုင်ပါသည်။ 
သွင်းရေပြတ်သည့် အချိန်အတွင်း တစ်နှစ်လျှင် သုံးလထက် မနည်း မိုးရေ လုံလောက်စွာ ရရှိသင့်ပါသည်။ 
ငှက်ပျောသည် မြေမျိုး အတော်များများတွင် စိုက်ပျိုးနိုင်ပါသည်။ 
သို့ရာတွင် မြေသား ထူခြင်း၊ ရေသွင်းရေထုတ်ကောင်းခြင်းနှင့် အသင့်အတင့် မြေအချဉ်ဓာတ်ရှိခြင်း များ မရှိလျှင် စီးပွားရေး တွက်ချေကိုက်သော သီးနှံဖြစ်လိမ့်မည် မဟုတ်ပါ။ 
မြေသားသည်လည်း မြေဆွေးဓာတ် ပါဝင်မှု မြင့်မားသင့်ပါသည်။

#crd

""",
      imageURL: "assets/images/post_banana.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

