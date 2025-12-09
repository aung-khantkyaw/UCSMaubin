import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/pig.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/88';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostPigPage4 extends StatelessWidget {
  const PostPigPage4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PigPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဝက်များတွင်ဖြစ်တတ်သောရောဂါများ"),
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
      name: "တိုးအောင်",
      //email: "ishfar@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ပပ",
      //email: "ishrak@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုပေါ",
      //email: "shakleen@gmail.com",
      email: "တောသား",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "နောင်ကြီး",
      //email: "shakleen@gmail.com",
      email: "ဘောစိ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ချစ်ဖူး",
      //email: "shakleen@gmail.com",
      email: "မြို့သစ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမြ၀င်း",
      //email: "shakleen@gmail.com",
      email: "မြစ်သား",
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
      user: users[3],
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
      title: "Pig",
      summary: """ဝက်ဝမ်းကျရောဂါ. ..""",
      body: """ဝက်ဝမ်းကျရောဂါသည် မြန်မာနိုင်ငံဒေသအနှံ့အပြားတွင် ဝက်မွေးမြူသူအားလုံး နှစ်စဉ်နှစ်တိုင်းလိုလို အများဆုံး ရင်ဆိုင်နေရသော ရောဂါတစ်ခုဖြစ်သည်။ ၎င်းရောဂါသည် တော်တာဆူးပတ်စ် (ခေါ်) ဗိုင်းရပ်စ်ပိုးကြောင့် ဖြစ်ပွားသော ရောဂါဖြစ်သည်။ ၎င်းဗိုင်းရပ်စ်ပိုးသည် နေရောင်ခြည်၊ အပူပေးခြင်းနှင့် ပိုးသတ်ဆေးရည်များ၏ ဒဏ်ကို မခံနိုင်သော်လည်း အလွန်အေးသော ပတ်ဝန်းကျင်တွင် ရှင်သန်နိုင်၏။ ဝက်များ အသက်ကြီးငယ်မရွေး ရောဂါဖြစ်ပွားနိုင်သည်။ ယင်းရောဂါသည် ကူးစက်ပြန့်ပွားလွယ်သည်။ ရောဂါစဖြစ်ချိန်တွင် သေဆုံးမှုနှုန်းများပြားပြီးနောက်ပိုင်းမှ တဖြည်းဖြည်း သေဆုံးနှုန်း လျော့နည်းသွားသည်။ 

ရောဂါဖြစ်ပွားသော ဗိုင်းရပ်စ်ပိုးသည် ရောဂါဖြစ်ပွားနေသော ဝက်၏သွေး၊ ကိုယ်တွင်းအင်္ဂါများ၊ မျက်စိနှင့်နှာရည်များအတွင်း၌ တည်ရှိသည်။ ရောဂါဖြစ်ပွားမှုတစ်လျှောက်လုံးတွင် ဝက်၏ကိုယ်ခန္ဓာမှ ထွက်သော မျက်ရည်၊ နှာရည်၊ တံတွေး၊ မစင်၊ ကျင်ငယ်တို့တွငသ် ဝက်ဝမ်းကျရောဂါဗိုင်းရပ်စ်ပိုးများ ပါဝင်သည်။ သို့ဖြစ်၍ ကူးစက်ပြန့်ပွားမှု လျင်မြန်ခြင်းဖြစ်သည်။
  """,
      imageURL: "assets/images/post_pig13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Pig",
      summary: """ ဝက်နားရွက်ပြာရောဂါ..""",
      body: """ဝက်နားရွက်ပြာရောဂါသည် ဖြစ်ပွားပါက ကူးစက်မြန်သည်။ ပြင်းထန်သည်။ အသက်ရှူလမ်းကြောင်းများ၌ ဖြစ်ပွားတတ်ပြီး နှာရည်၊ တံတွေး၊ ဆီး၊ ကျင်ကြီးနှင့် သုတ်ပိုးတို့မှတဆင့်ကူးစက်ပျံ့နှံ့စေနိုင်သည်။ ဝက်အသက်အရွယ်မရွေး ဖြစ်ပွားနိုင်ပြီး ရောဂါကူးစက်မှုနှုန်း၅၀%မှ ၁၀၀ % အထိ ရှိသည်။ နို့စို့ ဝက်ငယ်နှင့် ဝက်ငယ်ကလေးများတွင် သေပျောက်နှုန်းပိုမိုများပြားသည်။ မျိုးဝက်မကြီးများတွင် ကူးစက်ဖြစ်ပွားပါကသားလျှောခြင်း၊ အသေမွေးခြင်းများ ဖြစ်ပွားစေသဖြင့် ဆုံးရှုံးမှု များပြားစေပြီး ဂရုစိုက်သင့်သော ရောဂါတစ်ခုဖြစ်သည်။ ဝက်နားရွက်ပြာရောဂါကို PRRS (Porcine Reproductive and Respiratory Symdrome) ဟု ခေါ်သည်။ ရောဂါဖြစ်စေသော ဗိုင်းရပ်စ်မှာ RNA ဗိုင်းရပ်စ်အမျိုးအစား ဖြစ်ပြီး ဥရောပမျိုးကွဲနှင့် မြောက်အမေရိကမျိုးကွဲဟူ၍ နှစ်မျိုးရှိသည်။ အာရှနိုင်ငံအများစုတွင် မြောက်အမေရိက မျိုးကွဲ၌ ပါဝင်သည့် တရုတ်မျိုးစိတ်ကြောင့် ဖြစ်ပွားကြောင်း တွေ့ရှိရသည်။
      #crd
""", imageURL:"assets/images/post_pig12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Pig",
      summary: """ အာဖရိကဝက်အပြင်းဖျားရောဂါ..""",
      body: """အာဖရိကဝက်အပြင်းဖျားရောဂါသည် ဝက်များတွင် ဗိုင်းရပ်စ်ပိုးကြောင့်ဖြစ်ပွားတတ်သော ကူးစက်မြန်ရောဂါတစ်ခုဖြစ်ပြီး မိမိတို့မွေးမြူထားသော ဝက်များ ကို အဆိုပါရောဂါဖြစ်ပွားကျရောက်ခြင်းမှ ကြိုတင်ကာကွယ်နိုင်ရေးအတွက် အောက်ပါအတိုင်း လိုက်နာဆောင်ရွက်နိုင်ပါရန် အသိပေးနှိုးဆော်အပ်ပါ သည်-

( ၁ )     အာဖရိကဝက်အပြင်းဖျားရောဂါသည် လူသို့ လုံးဝ(လုံးဝ)ကူးစက်ခြင်းမရှိပါ၊

( ၂ )     ဝက်မွေးမြူရေးခြံများ၏ ဇီဝလုံခြုံမှုကို အထူးဂရုပြုမြှင့်တင်ရန်၊

( ၃ )     ဝက်ခြံများနှင့် သားငါးဈေးများတွင် စနစ်တကျ ပိုးသတ်ဆေးဖျန်းခြင်း ပုံမှန်ပြု လုပ်ဆောင်ရွက်ရန်၊

( ၄ )     ဝက်များကို စားသောက်ဆိုင်နှင့် အိမ်များမှ စားကြွင်းစားကျန်များ ကျွေးမည်ဆိုပါက အပူပြင်းပြင်းဖြင့် ချက်ပြုတ်ပြီးမှ ကျွေးမွေးရန်၊

( ၅ )     အခြားခြံမှ အသုံးအဆောင်ပစ္စည်းများ ငှားရမ်းသုံးစွဲခြင်းမပြုရန်နှင့် လူအဝင်အထွက်ထိန်းချုပ်ရန်၊

( ၆ )     အသက်အရွယ်တူဝက်များကိုသာ အတူတူမွေးမြူရန်၊

( ၇ )     ဝက်ခြံများ အပူချိန်၊ စိုထိုင်းဆ၊ လေဝင်လေထွက်ကောင်းမွန်စေရေး ဆောင်ရွက်ရန်၊

( ၈ )     ရောဂါကင်းရှင်းကြောင်း စိတ်ချရသောခြံမှ ဝက်များကို ဝယ်ယူမွေးမြူရန်၊

( ၉ )     ဝယ်ယူသည့် ဝက်များကို မိမိခြံရှိဝက်များနှင့်အတူ ထည့်သွင်းမွေးမြူခြင်းမပြုမီ သီးသန့်ခွဲခြား ထား၍ ရောဂါကင်းရှင်းမှ မွေးမြူရန်၊

(၁၀) ပြည်ပမှတရားမဝင် တင်သွင်းလာသော ဝက်အရှင်နှင့် ဝက်ထွက်ပစ္စည်းများဖြစ် သည့် ဝက်သား၊ အေးခဲဝက်သား၊ ဝက်ပေါင်ခြောက်၊ ဝက်အူချောင်းနှင့် အခြားဝက်ထွက်ပစ္စည်းများ တင်သွင်းခြင်း၊ ရောင်းချခြင်း၊ စားသုံးခြင်းမပြုရန်၊

(၁၁)    တောဝက်နှင့် အိမ်မွေးဝက်များ ရောနှောထိတွေ့ခြင်းမှ ကာကွယ်ရန်၊

(၁၂) တောဝက်နှင့် အိမ်မွေးဝက်များ ပုံမှန်မဟုတ်ဘဲ ရုတ်တရက်သေဆုံးပါက နီးစပ်ရာအုပ်ချုပ်ရေးအဖွဲ့၊ မွေးမြူရေးနှင့်ကုသရေးဦးစီးဌာန၊ မြန်မာနိုင်ငံမွေးမြူရေး လုပ်ငန်းအဖွဲ့ချုပ်ထံသို့ ချက်ချင်း သတင်းပို့ရန်၊

(၁၃)  ရောဂါကြိုတင်ကာကွယ်ရေးနှင့် ရောဂါစူးစမ်းရှာဖွေခြင်းလုပ်ငန်းများတွင် သက်ဆိုင်ရာဌာန၊ အဖွဲ့အစည်းများနှင့် ပူးပေါင်းပါဝင်ဆောင်ရွက်ရန်နှင့် ညွှန်ကြားချက်များ အားလိုက်နာဆောင်ရွက်ရန်။

မွေးမြူရေးနှင့်ကုသရေးဦးစီးဌာန
     
      #crd
""", imageURL:"assets/images/post_pig11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}