import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/167';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostSpicyPage1 extends StatelessWidget {
  const PostSpicyPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return VegePage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငရုတ်စိုက်ပျိုးနည်း"),

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
      name: "ဦးအောင်",
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
      author: users[0],
      title: "ငရုတ်စိုက်ပျိုးနည်း",
      summary: """ငရုတ်ကိုဘယ်လိုစိုက်ပျိုးသင့်.. """,
      body: """ငရုတ် သည် အရေးကြီးသော ဟင်းခတ်အမွှေးအကြိုင် သီးနှံတစ်ခုဖြစ်သည်။ ငရုတ်သည် ခြောက်သွေ့သော ရာသီအပူချိန် ၂၁-၃၃ ဒီဂရီစင်တီဂရတ်တွင် ကောင်းစွာ ဖြစ်ထွန်းသည်။ ညအပူချိန်သည် ၃၀ဒီဂရီ စင်တီဂရိတ်ထက် ရှိနေမည်ဆိုလျှင် ငရုတ်ပင်သည် အသီးတင်လိမ့်မည် မဟုတ်ပေ။ မျိုးစေ့ထုတ်လုပ် ရန်အတွက် ရွေးချယ်ထားသော ကွင်းသည်ပြီးခဲ့သော ရာသီက စိုက်ခဲ့သည့် သီးနှံသည် ပဲမျိုးရင်းဝင်အပင်များ (သို့) နှံစားမျိုးရင်းဝင် အပင်များဖြစ်ခဲ့လျှင် ပိုကောင်းသည်။ သို့မဟုတ် ယခင်စိုက်ခဲ့သော သီးနှံသည် ကန်စွန်းဥ (သို့) ခရမ်းမျိုးနွယ်ဝင် အပင်များ(ခရမ်းချဉ် ၊ငရုတ်၊ ခရမ်း စသည့်) ဖြစ်ခဲ့လျှင် ၎င်းကွင်းအား ရှောင်ရှားသင့်သည်။ ထိုစနစ်သည် ရောဂါပိုးများ တိုးပွားများပြား လာခြင်းကို ကြိုတင်ကာကွယ်ပေးသည်။
#crd
 """,
      imageURL: "assets/images/post_spicy1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "ငရုတ်စိုက်ပျိုးနည်း",
      summary: """သင့်တော်သောရာသီဥတု...""",
      body: """အပူချိန် ၁၅-၃၅ဒီဂရီ စင်တီဂရိတ် ရှိပြီးရက်၁၃၀-၁၅၀အတွင်း နှင်းခါးကျရောက်မှု ကင်းလျှင်ငရုတ်စိုက်ပျိုး ရန်သင့်တော်သည်။ မြေကြီး၏ အပူချိန်သည် ၁၀ဒီဂရီ စင်တီဂရိတ်နှင့်အောက် လျော့နည်းလျှင် အပင်၏ ကြီးထွားမှုကို တုံ့နှေးစေသည်။ အပူချိန်၄၀ ဒီဂရီစင်တီဂရိတ် အထက် ကျော်လျှင်အသီးတင်မှု ညံ့ရုံသာမက ဆိုးဆိုးဝါးဝါး အသီးကြွေကျမှု ကိုလည်းဖြစ်စေသည်။ ငရုတ်အား မြေအမျိုးအစား အတော်များများတွင် စိုက်ပျိုးနိုင်သော်လည်း ရေစီးရေလာကောင်းပြီး မြေသြဇာထက်သန် ပေါကြွယ်ဝနေသော နှုန်းမြေသည် ငရုတ်စိုက်ပျိုး ထုတ်လုပ်ရန် အကောင်းဆုံးဖြစ်သည်။ ရေဝပ်မှုဒဏ်ကို ခံနိုင်ရည်မရှိသော အပင်ဖြစ်သည်။သင့်တော်သော မြေချဉ်ငံဓါတ်မှာ ၅.၅-၆.၅ဖြစ်သည်။
#crd
""",
      imageURL:"assets/images/post_spicy2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}