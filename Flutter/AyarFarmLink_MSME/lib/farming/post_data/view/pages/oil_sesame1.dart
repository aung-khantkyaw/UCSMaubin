import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/130';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostSesamePage1 extends StatelessWidget {
  const PostSesamePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  OilPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("နှမ်းဆီနှင့် ကျန်းမာရေး"),

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
      name: "ဦးမိုးသူ",
      //email: "ishfar@gmail.com",
      email: "ကြံခင်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဖြူဖြူ၀◌င်း",
      //email: "ishrak@gmail.com",
      email: "ပရိုက်၀",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးတင့်ဆွေ",
      //email: "shakleen@gmail.com",
      email: "ဘုရားကုန်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးထူး",
      //email: "shakleen@gmail.com",
      email: "တဖြိုက်မိုး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစိုးတင့်",
      //email: "shakleen@gmail.com",
      email: "လှိုင်သာယာ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မပိုးဉ",
      //email: "shakleen@gmail.com",
      email: "မြို့ကြီးသူ",
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "2",
      author: users[4],
      title: "Sesame",
      summary: """နှမ်းဆီကပေးတဲ့ကျန်းမာ... """,
      body: """နှမ်းဆီ က အခြားသော ဟင်းဆီတွေထက် ပြည့်ဝဆီ ပါဝင်မှု နည်းပါတယ်။ 
      နှမ်းဆီ ၁၀၀ ဂရမ်မှာ monounsaturated fats ၄၀ ဂရမ်၊ polyunsaturated fats ၄၂ ဂရမ် နဲ့ ပြည့်ဝဆီက ၁၄ ဂရမ်သာ ပါဝင်နေပါတယ်။
ဒီလို ပြည့်ဝဆီ ပါဝင်မှု နည်းတာက ကျန်းမာရေးကို အထောက်အကူ ပြုပေးနိုင်ပါတယ်။ 
အကြောင်းကတော့ ပြည့်ဝဆီ များတဲ့ အစားအစာတွေ၊ စားသုံးဆီတွေက နှလုံးကျန်းမာရေးကို ထိခိုက်စေသလို ကျန်းမာရေးအတွက် ဘေးထွက် ဆိုးကျိုး များလို့ပါ။ မပြည့်ဝဆီ အထူးသဖြင့် polyunsaturated fatty acids (PUFAs) က နှလုံးသွေးကြော ဆိုင်ရာ ရောဂါတွေ ခံစားရနိုင်ခြေကို သိသိသာသာ လျှော့ချပေးနိုင်ပါတယ်။
နှမ်းဆီမှာ ဒီလို polyunsaturated fatty acids (PUFAs) ကြွယ်ဝမှုက သွေးတွင်းအဆီနည်းစေပြီး နှလုံး ကျန်းမာစေဖို့ အကောင်းဆုံး အထောက်အပံ့ပေး နိုင်မှာပါ။
နှမ်းစေ့လေးက သေးသေးလေး ဆိုပေမယ့် ဗီတာမင် နဲ့ သတ္တုဓာတ်တွေ အများကြီး ပါဝင်နေနိုင်ပါတယ်။ နှမ်းမှာ copper၊ ဇင့်၊ မဂ္ဂနီဆီယမ်၊ သံဓာတ် နဲ့ ကယ်လ်ဆီယမ်တို့ ပါဝင်နေပါတယ်။
နှမ်းမှာပါတဲ့ ဇင့် နဲ့ copper တွေက သွေးနီဥဆဲလ်တွေ ဖြစ်ပေါ်စေဖို့ အထောက်အကူ ပြုပေးပါတယ်။ သွေးလည်ပတ်မှု ကောင်းစေပြီး ဇီဝတွင်းဖြစ်စဉ်ကို ကောင်းစေပါတယ်။ 
copper ကအရောင်ကျစေနိုင်တဲ့ အာနိသင် ရှိတာကြောင့် အဆစ်တွေ ရောင်ရမ်းတာ နဲ့ လေးဖက်နာ ပြဿနာကို သက်သာစေနိုင်ပါတယ်။ အရိုးတွေ သန်မာစေဖို့လည်း အားဖြည့်ပေးပါတယ်။
ဓာတ်တိုးဆန့်ကျင် အာနိသင် ကြွယ်ဝတဲ့ နှမ်းဆိကို ပုံမှန် စားသုံးပေးမယ်ဆိုရင် သွေးတိုး သက်သာစေနိုင်သလို သွေးတိုးရောဂါ မရှိသူတွေမှာလည်း ရောဂါ မဖြစ်အောင် ကာကွယ်ပေးပါတယ်။ 
သွေးပေါင်ချိန်ကို ထိန်းညှိပေးပြီး သွေးတိုးကြောင့် နောက်ဆက်တွဲ ကျန်းမာရေး ပြဿနာတွေ မဖြစ်စေဖို့ အကောင်းဆုံး ကာကွယ်ပေးနိုင်ပါတယ်။

#crd

 """,

      imageURL: "assets/images/post_sesame1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[2],
      title: "Sesame",
      summary: """ဝက်ခြံအတွက်ကောင်းမွန်...""",
      body: """နှမ်းဆီတွင် ရောင်ရမ်းမှုကို ဆန့်ကျင်သည့် ဂုဏ်သတ္တိ (၂) ပါရှိသော ဆီဆာမင် ပါဝင်သည်။
       ဤဒြပ်ပေါင်းသည် ဝက်ခြံပေါက်ခြင်းနှင့် ဆက်စပ်နေသော ရောင်ရမ်းမှုကို သက်သာစေနိုင်သည်။
သန့်စင်ထားသောနှမ်းဆီသည်ချွေးပေါက်များပိတ်ဆို့ခြင်းမရှိဘဲအလုပ်လုပ်နိုင်ကြောင်း သက်သေအထောက်အထားများကအကြံပြုထားသည်။
ပိတ်ဆို့နေသောချွေးပေါက်များသည် ဝက်ခြံဖြစ်စေနိုင်သောကြောင့်နှမ်းဆီ၏ဖော်မြူလာမဟုတ်သောအစွမ်းသတ္တိသည်ဝက်ခြံများကို လျော့ပါးစေနိုင်သည်။
နှမ်းဆီတွင် ရောင်ရမ်းမှုကို ဆန့်ကျင်ခြင်းနှင့် ဓာတ်တိုးဆန့်ကျင်ဂုဏ်သတ္တိများ ပါဝင်သည်။ 
လေ့လာမှုတစ်ခုတွင် အဆီသည် အပူလောင်ခြင်းကို သက်သာပျောက်ကင်းစေသည် (၃)။ 
နှမ်းဆီသည် အနာအမျိုးအစားအားလုံးတွင် အလားတူအကျိုးသက်ရောက်မှုရှိမရှိ နားလည်ရန် နောက်ထပ်သုတေသနပြုရန် လိုအပ်ပါသည်။
နှမ်းဆီသည်အိုမင်းရင့်ရော်မှုကိုဆန့်ကျင်ဂုဏ်သတ္တိ (၄)မျိုးဖြင့် လူသိများသည်။
 နှမ်းဆီသည် ခရမ်းလွန်ရောင်ခြည် 4% ကို ခံနိုင်ရည်ရှိကြောင်း သုတေသနအချို့က ဖော်ပြသည်။ ဒါက သင့်မျက်နှာပေါ်မှာ အရေးအကြောင်းတွေနဲ့ တခြား အိုမင်းရင့်ရော်မှုဖြစ်စဉ်တွေကိုတားဆီးပေးနိုင်ပါတယ်။ 



#crd

""",
      imageURL: "assets/images/post_sesame2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}