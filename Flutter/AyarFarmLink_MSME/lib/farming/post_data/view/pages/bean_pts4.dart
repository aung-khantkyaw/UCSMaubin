import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/155';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostPtsPage4 extends StatelessWidget {
  const PostPtsPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  BeanPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မြေဩဇာကျွေးခြင်း"),

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
      name: "အောင်ကို",
      //email: "ishfar@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 22),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "သီရိ",
      //email: "ishrak@gmail.com",
      email: "ကျုံစုတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 12, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဇော်ကြီး",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဝင်းကို",
      //email: "shakleen@gmail.com",
      email: "ကျောင်းရွာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးကြူ",
      //email: "shakleen@gmail.com",
      email: "အမေ့သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနွဲ့ဝင်း",
      //email: "shakleen@gmail.com",
      email: "ကျေးလက်သူ",
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
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "5",
      author: users[4],
      title: "Green gram",
      summary: """ပဲမြစ်ဖုဇီဝမြေသြဇာ ... """,
      body: """ပဲမြစ်ဖုဇီဝမြေသြဇာတွင်ပါသော နိုက်ထရိုဂျင်ဖမ်းယူပေးသည့် ဘက်တီးရီးယားသည် ယင်း၏လိုအပ်ချက်နှင့် ပြည့်စုံမှ (သို့မဟုတ်) အနီးစပ်ဆုံးရရှိမှသာ အကျိုးသက်ရောက်အောင် ဖြည့်စွမ်းနိုင်သည်။ 
ပဲမျိုးစုံသည် မြေအချဉ်အငံဓာတ် (၄.၅)တွင် ကောင်းစွာပေါက်ရောက် ရှင်သန်နိုင်သော်လည်း မြေအချဉ်အငံဓာတ် (၅.၅)ကိုမကျော်မချင်း ပဲပင်မှ မြစ်ဖုဖြစ်ပေါ်လာမှု အလွန်နည်းမည်။ 
နိုက်ထရိုဂျင်ကို လေထုမှဖမ်းယူပေးသော ဘက်တီးရီးယားအားလုံးသည် မိုလစ်ဘ်ဒီနမ် (Mo)ဓာတ် အနည်းငယ် လိုအပ်ကြသည်။  
စိမ့်မြေ၊ စမ်းပေါက်မြေ၊ အချဉ်ဓာတ်များသောမြေ၊ အနည်ကျကျောက်မှ ဖြစ်လာသောမြေနှင့် နှမ်းဖတ်ကျောက်မှ ဖြစ်လာသောမြေများတွင် မိုလစ်ဘ်ဒီနမ်ဓာတ် နည်းတတ်ပါသည်။ ယင်းမြေများတွင် ပဲစိုက်ပျိုးပါက အပင်များဝါယော်ပြီး အစေ့အတင်နည်း၍ အောင်မြင်မှုမရှိပါ။ 
မြစ်ဖုများ အတော်အသင့် ဖြစ်ပါလျက် မြစ်ဖုအတွင်း နိုက်ထရိုဂျင်စုဆောင်းထားခြင်း မရှိသည့်အခြေအနေမျိုးလည်း ဖြစ်တတ်သည်။ ပဲပင်များသည် ဝါယော်ယော်ဖြစ်ပြီး နိုက်ထရိုဂျင်လိုအပ်သည့် လက္ခဏာပြနေလျှင် နိုက်ထရိုဂျင်မြေသြဇာ ထည့်ပေးလျှင် ပျောက်ကင်းနိုင်သကဲ့သို့ မိုလစ်ဘ်ဒီနမ် ထည့်ပေးလျှင်လည်း ပျောက်ကင်းနိုင်ပါသည်။  
ပဲမြစ်ဖုကောင်းစွာ ဖြစ်ထွန်းနေသော်လည်း ပဲပင်များဝါနေသေးလျှင် ကန့်(S)ဓာတ် ချို့ယွင်းနေ၍ ဖြစ်တတ်ပါသည်။ ဤကဲ့သို့ ဖြစ်ပါက မော်နီတာဂျစ်ပ်ဆမ် မြေသြဇာကို မြေကြီးအတွင်း ထည့်သွင်းပေး၍ဖြစ်စေ၊ ဆာဗိတ် မှိုသတ်ဆေးနှင့်အားဆေးကို အပင်အားပက်ဖျန်းပေး၍ဖြစ်စေ ပျောက်ကင်းစေနိုင်ပါသည်။  
#crd ဝိစာရ
 """,

      imageURL: "assets/images/post_pts13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[5],
      title: "Green gram",
      summary: """မြေပြင်ခြင်းနှင့် မြေသြဇာကျွေးခြင်း...""",
      body: """မစိုက်ပျိုးခင် မြေပြင်ရာ၌ ထယ် ၁ စပ်မှ ၂ စပ်ထိုးပြီး ဓားကြမ်းတုံးဖြင့် ထွန်နှစ်စပ် မောင်းပေးရန် လိုအပ်ပါသည်။ မြေပြင်ရာတွင် ၁ ဧကလျှင် နွားချေး တင်း ၁၀၀ မှ တင်း ၁၅၀ အထိ ထည့်ပေးရန်လိုအပ်ပါသည်။ 
ယူရီးယား မြေသြဇာ ၈ ပြည်၊ တီစူပါ ၂၄ ပြည်၊ ပိုတက် ၁၂ ပြည်နှင့် ကျောက်မှုန့် ပြည် ၂၀ ထည့်ပေးရန် လိုအပ်ပါသည်။
#crd greenwaymyanmar
""",
      imageURL: "assets/images/post_pts31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[5],
      title: "Green gram",
      summary: """ပိုးများကို နှိမ်နင်းရန်အတွက် ...""",
      body: """အဝါရောင် မိုစိတ်ရောဂါ၊ သံချေးရောဂါ၊ မှည့်ပြောက်စွန်း ရောဂါ၊ ဆာကိုစပိုးရား ရွက်ခြောက် ရောဂါ စသည်တို့ ကျရောက် လေ့ရှိပါသည်။ 
      ၎င်းပိုး ရောဂါများကို ကာကွယ်ရန်အတွက် စိုက်ခင်း ပတ်ဝန်းကျင်ရှိ ပေါင်းမြက်များ ရှင်းလင်းခြင်း၊ ပိုး ရောဂါ ဒဏ်ခံနိုင်ရည်ရှိသော မျိုးများဖြင့် အစားထိုးခြင်း စသည်တို့ကို ပြုလုပ်သင့်ပါသည်။
       ပိုးများကို နှိမ်နင်းရန်အတွက် ကလိုပိုင်ရီဖော့၊ ဆိုက်ပါ မီသရင် စသည့် ဆေးများ အသုံးပြုနိုင်ပါသည်။ ရောဂါများ နှိမ်နင်းရန်အတွက် ကာဘင်ဒါဇင်၊ မန်ကိုဇက် စသော ဆေးများ အသုံးပြုနိုင်ပါသည်။
      #crd greeenwaymyanmar
""",
      imageURL: "assets/pts3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}