import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngagyin.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/33';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaGyinPage4 extends StatelessWidget {
  const PostNgaGyinPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaGyinPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးသားဖောက်နည်း"),

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
      name: "ကိုကြီးကောင်",
      //email: "mgnyan@gmail.com",
      email: "တံငါသည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်လေး",
      //email: "iskyi@gmail.com",
      email: "စိမ်းတယ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုထွန်းရွှေ",
      //email: "shakleen@gmail.com",
      email: "ဘီးကျဲ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်မြင့်",
      //email: "shakleen@gmail.com",
      email: "ကန်သူဌေး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလှစိုင်",
      //email: "shakleen@gmail.com",
      email: "အင်္ဂပူ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ပူစူး",
      //email: "shakleen@gmail.com",
      email: "ဧရာဝတီ",
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
      title: "Fish",
      summary: """အခြားငါးများကဲ့သို့ နေ့ချင်းသားဖောက်၍မရ.. """,
      body: """ငါးကြင်းကို ဆေးထိုးသားဖောက်ရာတွင် အခြားငါးများကဲ့သို့ နေ့ချင်းသားဖောက်၍မရဘဲ ဥရှိအမများကို ၁ ရက်ကြို၍ လှောင်ကန်ထဲတွင် အစာမကျွေးဘဲ လှောင်ထားရပါမည်။ 

အဘယ်ကြောင့်ဆိုသော် မြက်စားငါးကြင်းများသည် အခြားငါးများထက် အစာလွန်ကဲစွာ စားတတ်သဖြင့် ဥရင့်/မရင့် ခန့်မှန်းရန် မလွယ်ကူသောကြောင့်ဖြစ်သည်။

၁ ရက်ကြိုတင်လှောင်ထားသော မျိုးငါးအမများကို ဥ ရင့်/မရင့် ခန့်မှန်း၍ မျိုးငါးအမများကို  ရွေးချယ်ရပါမည်။

ငါးအမ ၁ ကောင်လျှင် အထီး ၃ ကောင်နှုန်းဖြင့် သားဖောက်ပါသည်။
Ref: GreenWayMyanmar
 """,

      imageURL: "assets/ngagyin2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Fish",
      summary: """ပထမအကြိမ် ဆေးထိုးသားဖောက်ပုံ... """,
      body: """ပထမအကြိမ် ဆေးထိုးသားဖောက်ပုံအဆင့်ဆင့်



ပထမအကြိမ် ဆေးထိုးခြင်းကို ညနေ ၆းဝဝ နာရီတွင် စတင်ပြုလုပ်ရပါမည်။ရွေးချယ်ပြီးသော ဥရင့်မျိုးငါးအမများအား နံပါတ်မှတ်သားထားပြီး ချိန်ခွင်(သို့) ကီလိုချိန်ခွင်တို့တွင် ဒိုင်းကွင်းထဲထည့်၍ ချိန်တွယ်သည့်အလေးချိန်ကို မှတ်သားထားပါ။ ထို့နောက် အလေးချိန်တူ မျိုးငါးအမများအား အုပ်စုခွဲ၍ ဂလင်း (သို့) ဟော်မုန်းဆေးကို ဖျော်စပ်ပါ။
Ref: GreenwayMyanmar
""",
      imageURL: "assets/images/post_ngagyin42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Fish",
      summary: """ဂလင်းဖျော်စပ်ပုံ .. """,
      body: """ဂလင်းဖျော်စပ်ပုံ

ဥပမာ - မြက်စားမျိုးငါးအမ၏ အလေးချိန်များမှာ   (1) 1.5 kg, (2) 1.6 kg, (3) 1.8 kg နဲ့  (4) 1.9 kg ဆိုပြီး အသီးသီးရှိတယ်ဆိုပါစို့။

အဲ့ဒီထဲက (1),(2) နှင့် (3),(4) ဟူ၍ အုပ်စုခွဲပြီး အလေးချိန်များကို ပေါင်းပါ။

အဲ့ဒီလိုဆိုရင် (1)+(2) = 3.1 kg ဖြစ်မည်။ (3)+(4) = 3.7 kg ဖြစ်မည်။

မျိုးငါးအမ အလေးချိန် 1 kg အတွက် အသုံးပြုရမည့် ဂလင်း = 0.75 mg ဖြစ်သည့်အတွက်..

မျိုးငါးအမ အလေးချိန် 3.1 kg အတွက် အသုံးပြုရမည့် ဂလင်းဆိုပါက..

 = 3.1 x 0.75/1= 2.325 mg ဖြစ်ပါမယ်။

ဂလင်းအလေးချိန် 1mg ရရန် ခေါင်းခွဲငါး (ခေါင်းခွဲပြီး ဂလင်းထုတ်ယူရမည့်ငါးအထီး) အလေးချိန် = 30 ကျပ်သား လိုပါမယ်။

ဆိုတော့ ဂလင်းအလေးချိန် 2.325 mg ရရန်အတွက်ဆိုပါက.. ခေါင်းခွဲငါးအလေးချိန် = ? …

 = 2.325x30/1

= 69.750 ကျပ်သား(သို့) 0.69 ပိဿာ(သို့) 0.7 ပိဿာ လိုမှာဖြစ်ပါတယ်။

ဒီတော့.. မျိုးငါးအမ ၂ ကောင်အတွက် ဂလင်း 2.325 mg ရရှိရန် လိုအပ်သော ခေါင်းခွဲငါး= 0.7 ပိဿာ (၇၀ ကျပ်သား) ဖြစ်ပါတယ်။

ကီလိုနှင့်တွက်မည်ဆိုပါက..

ခေါင်းခွဲငါးအလေးချိန် = 0.625 ပိဿာမှာ 1kg ရှိတာဖြစ်လို့.. 

ခေါင်းခွဲငါးအလေးချိန် = 0.7 ပိဿာမှာဆိုရင်... 0.7 x 1/0.625 = 1.1 kg 

ဆိုတော့ .. လိုအပ်သော ခေါင်းခွဲငါးအလေးချိန်မှာ    = 1.1 kg ဖြစ်သည်။

ဒီတော့ ဂလင်းထုတ်မည့် ခေါင်းခွဲငါးအား 1.1 kg (သို့) 0.7 ပိဿာ ချိန်တွယ်၍ ခေါင်းခွဲပြီး ဂလင်းထုတ်ယူပါ။ ရရှိသောဂလင်းအား ချေဆုံတွင် ကြိတ်ချေပြီး မိုးရေ(သို့) နော်မယ်ဆလိုင်း(Normal Saline)ကို ငါးအမ ၁ ကောင်လျှင် 1cc နှုန်းနှင့်ရော၍ ရင်ရေယက်၏ အတွင်းဖက်အခြေရှိ အဆီဖုကို ထိုးသွင်းရပါမည်။ ပထမအကြိမ်ကို ဘယ်ဖက်ထိုးလျှင် ဒုတိယအကြိမ်ကို ညာဖက်ထိုးရပါမည်။
#crd
""",
      imageURL: "assets/images/post_ngagyin41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}