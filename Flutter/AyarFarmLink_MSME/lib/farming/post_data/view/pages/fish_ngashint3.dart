import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngashint.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/44';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgashintPage3 extends StatelessWidget {
  const PostNgashintPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaShintPage();
            }));


          },
          icon: Icon (Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးသားဖောက်ခြင်း"),

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
      name: "မောင်ဟိန်းသူ",
      //email: "mgnyan@gmail.com",
      email: "ကျိုက်ပိ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "အာကာကျော်",
      //email: "iskyi@gmail.com",
      email: "တက်လူငယ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ငြိမ်းအိဖြူ",
      //email: "shakleen@gmail.com",
      email: "မင်းလှ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသူတော်",
      //email: "shakleen@gmail.com",
      email: "ဓနုဖြူ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ပြည့်စုံကျော်",
      //email: "shakleen@gmail.com",
      email: "၀◌ါးခယ်မ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မအိ",
      //email: "shakleen@gmail.com",
      email: "ငပုတော",
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
      summary: """သားဖောက်ခြင်း...""",
      body: """ငါးရှဥ့်သားဖောက်ရန်အတွက် ၅၀ စတုရန်းမီတာအရွယ်ရှိ ကွန်ကရစ်ကန် ၈ကန်တွင် ရေအနက် ၃၀ စင်တီမီတာ ထည့်၍ အထီး ၁ ကောင်၊ အမ ၃ ကောင်နှုန်းဖြင့် ငါးရှဥ့်အကောင် ၂၀ လွှတ်ပေးထားရပါမည်။
ငါးရှဥ့်၏အစာအဖြစ် ငါးနုတ်၊ ငါးဖွဲများကို နုတ်နုတ်စင်း၍ ငါးရှဥ့်၏ကိုယ်အလေးချိန် ၁၀% ခန့်ကို နေ့စဥ်ကျွေးရပါမည်။ တစ်ပတ်လျှင်တစ်ကြိမ် ရေလဲလှယ်ပေးသင့်ပါသည်။
Ref: GreenWayMyanmar
 """,

      imageURL: "assets/images/post_ngashint1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Fish",
      summary: """မျိုးပွားရာသီနှင့်မိတ်လိုက်ရာသီ..""",
      body: """မျိုးပွားရာသီမှာ မတ်လမှ စက်တင်ဘာလဖြစ်၍ တစ်နှစ်ပတ်လုံး ဥချနိုင်ပါသည်။မိတ်လိုက်ရာသီ၏ အမြင့်ဆုံးလမှာ မေလမှ ဇွန်လဖြစ်၍ အနည်းဆုံးအချိန်မှာ ဒီဇင်ဘာလမှ ဇန်နဝါရီလ ဖြစ်ပါသည်။ 
- အထီးများသည် ဥချနိုင်ရန် ရေမြုပ်အသိုက်ဆောက်ပြီး (၂-၃)ရက်ကျော်လျှင် အမများသည် ၄င်းအသိုက်ထဲ၌ဥချကာ ဥများကိုတွယ်ကပ်စေပါသည်။ ငါးရှဥ့်အမ၏ ဥအိမ်သည် အစာအိမ်မှ ၄င်း၏ဝမ်းဗိုက်အောက်ခြေထိရှည်လျား၍ အသိုက်တစ်သိုက်တွင် ဥပေါင်း(၅၀၀-၁၀၀၀)အထိ ဥချနိုင်ပါသည်။
ဥချပြီးပါက ဥများတွယ်ကပ်လျှက်ရှိသော အသိုက်များကို ဥဖောက်ကန်သို့ပြောင်းရွှေ့၍ သားဖောက်ပေးနိုင်ပါသည်။ဥဖောက်ကန်သည် ၉၀ စင်တီမီတာအချင်းရှိ၍ ရေအနက် ၃၀ စင်တီမီတာ ထည့်ပေးထားရပါမည်။ ဥမှပေါက်ခါစ ငါးသားပေါက်များ တွယ်ကပ်နိုင်စေရန် ရေနေအပင်များအား ဆေးကြောသန့်စင်ပြီး ထည့်ပေးရပါမည်။ ရေအပူချိန်(၂၅-၃၀)ဒီဂရီစင်တီဂရိတ်တွင် (၅-၇) ရက်အတွင်း အကောင်ပေါက် လာကြပါမည်။
ဥမှပေါက်ပြီးသား သားပေါက်များသည် ရေအောက်ခြေတွင် (၂-၃)ရက်ကြာနေထိုင်ကာ နောက်ပိုင်းတွင် သဘာဝအစာများကို စတင်စားသောက်နိုင်ပြီ ဖြစ်သဖြင့် သက်ရှိအစာများကို စတင်ကျွေးနိုင်ပြီ ဖြစ်ပါသည်။

Ref: GreenwayMyanmar
""",
      imageURL: "assets/images/post_ngashint21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[5],
      title: "Fish",
      summary: """ သားပေါက်ပြုစုခြင်း..""",
      body: """အချင်း ၉၀ စင်တီမီတာရှိသော ကွန်ကရစ်ကန်တွင် ၁စတုရန်းမီတာလျှင် ငါးရှဥ့်သားပေါက်ကောင်ရေ ၃၀၀ ခန့် ထည့်သွင်း၍ မွေးမြူသင့်ပါသည်။ ကန်ရေ၏ ၅၀ %ကို ရေနေ့တိုင်းလဲလှယ်ရန် လိုပါသည်။ငါးကြေမှုန့်၊ငါးနုတ်၊ငါးဖွဲ များကို ဖွဲနုနှင့် (၉၅း၅)အချိုးဖြင့် ရောစပ်၍ ကိုယ်အလေးချိန်၏ ၃% တွက်ချက်၍ ကျွေးရပါမည်။
ထိုအချိန်တွင် ပြုစုကန်ထဲရှိငါးသန်များသည် ၁ပါတ် လျှင်အနည်းဆုံး ၁စင်တီမီတာခန့် အရွယ်အစားကြီးလာပါမည်။အလျှား ၅စင်တီမီတာ ရှိလာသောအရွယ်တွင် အချင်း ၉၀ စင်တီမီတာရှိသောကန်၌ ကောင်ရေ ၁၀၀ ခန့်သာ မွေးမြူသင့်ပါသည်။
ထိုအချိန်တွင် ၂ ပတ်လျှင်တစ်ကြိမ် ငါးရှဥ့် များကို အရွယ်အစားခွဲခြားပေးရပါမည်။ ၆ ပတ်ကြာလျှင် ငါးရှဥ့်များ၏ ပျှမ်းမျှအရွယ်အစားမှာ ၁၀ စင်တီမီတာခန့် ရှိလာ၍ ရှင်သန်နှုန်းမှာ ၉၅% အထိ ရှိနိုင်ပါသည်။ပြုစုကန်ထဲ တွင် ငါးသန်များကို ၁၀ စင်တီမီတာ ရှိလာသည်အထိ စုစုပေါင်း ၂လခန့် ပြုစုရပါမည်။

      Ref: GreenWayMyanmar
 """,

      imageURL: "assets/images/post_ngashint1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

  ];
}