import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/164';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCanePage2 extends StatelessWidget {
  const PostCanePage2({Key? key}) : super(key: key);
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
        title: Text("ကြံ၏ကျန်းမာရေးအကျိုးကျေးဇူးများ"),
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
      name: "ဦးကျော်မင်းခိုင်",
      //email: "ishfar@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်အေးအေးရီ",
      //email: "ishrak@gmail.com",
      email: "စစ်တွေ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုကောင်းကောင်း",
      //email: "shakleen@gmail.com",
      email: "သမက်ပြေ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်ထက်နိုင်",
      //email: "shakleen@gmail.com",
      email: "ငါးသိုင်းချောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးမိုးဒီ",
      //email: "shakleen@gmail.com",
      email: "ပုသိမ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မခိုင်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ရုံးဒေါင့်",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
  ];
  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
      "အသုံးဝင်လို့ကျေးဇူးပါ",
      user: users[0],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ခုလိုတွေများများတင်ပေးပါနော် ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "တကယ်လားခုမှသိတယ်ဟီး",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးအထူးတင်ပါတယ်ဗျ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[5],
      title: "Cane",
      summary: """ဂုဏ်သတ္တိများ..""",
      body: """ဘရောင်းသို့မဟုတ်ကြံသကြား - အလွန်ရေပန်းစားမဟုတ်ထုတ်ကုန်, ယခုမူကားများစွာသောလူရှားပါးအစားအစာများကိုစိတ်ဝင်စားနေကြသည်။ ကျွန်တော်တို့နိုင်ငံမှာ, နောက်ဆုံးရာစုအလယ်နောက်ပိုင်းလူသိများခဲ့တာဖြစ်ပါတယ်။ ကျွန်တော်တို့ကိုကြံသကြား၏ပထမဦးဆုံးပေးသွင်းကျူးဘားဖြစ်လာခဲ့သည်။ ကြံသကြားအများအပြားအမျိုးအစားဖြစ်ပါတယ်။ သူတို့ရဲ့ခြားနားချက်သကြား၏တစ်စိတ်တစ်ဒေသဖြစ်သော, အရည်များ၏ content တည်ရှိသည်။ ရည်၏နံပါတ် သာ. , အမဲမှောင်အရောင်နှင့်အရသာဟာအကောင်းဆုံးထုတ်ကုန်ဖြစ်ပါတယ်။ ကြံ၏အသုံးဝင်သောဂုဏ်သတ္တိများင်း၏ထူးခြားတဲ့အစားအသောက်အစိတ်အပိုင်းများဖြစ်ကြသည်။ လူ့ခန္ဓာကိုယ်ဗီတာမင်များကလိုအပ်မယ့်ရိုးရှင်းတဲ့ beet သကြားစားသုံးခြင်းအားဖြင့်, သတ္တုဓာတ်နဲ့အမျှင်ဓာတ်ခန္ဓာကိုယ်အဆီသို့လှည့်နိုင်ပါသည်။ အစားအစာကြံသကြားရာတွင်အသုံးပြုသည့်အခါဤအဖြစ်ပျက်လိမ့်မည်မဟုတ်ပါ။ သင်သည်သင်၏ခန္ဓာကိုယ်ခွန်အားနှင့်တက်ကြွနေဖြင့်ကြွယ်ဝပြည့်စုံလိမ့်မည်ဟုသေချာစေနိုင်ပါတယ်။
grade အညိုရောင်သကြား။

"Demerara" ။
ဒါဟာသကြားအမျိုးမျိုးကြောင့်ထုတ်လုပ်သည်အဘယ်မှာရှိချိုင့်, အဆိုအရ၎င်း၏အမည်ကိုရရှိခဲ့သည်။ ဒါဟာအညိုရောင်သကြားအများဆုံးကျယ်ပြန့်လူသိများပုံစံဖြစ်ပါတယ်။ grade "Demerara" အညိုရောင်-ရွှေက hue တစ်ဦးအထူးသဖြင့်အကြီးစား crystals ဖြင့်သွင်ပြင်လက္ခဏာဖြစ်ပါတယ်။ ဒါဟာသကြားသန့်စင်ပြီးနှင့် unrefined ဖြစ်ပါတယ်။ အသုံးဝင်သောဂုဏ်သတ္တိများ unrefined form မှာပိုပြီးမွေးရာပါဖြစ်ကြသည်။ ရုရှား၌, သင်သကြားမျိုးပေါင်းနှစ်ဦးစလုံးအမျိုးအစားများကိုရှာတွေ့နိုင်ပါသည်။

"Muskovado" ။
caramel ၏ဆင်တူသကြားမျိုးပေါင်းအရသာ။ တစ်ခုတည်းသောအနှုတ်လက္ခဏာ "Muskovado" - သိုလှောင်မှုနည်း။ ထိုသို့သောသကြားအလွန်လျင်မြန်စွာအစိုဓာတ်ကိုစုပ်ယူ။ ရည်၏မြင့်မားသောအကြောင်းအရာဆိုလိုတာကအလွန်မှောင်မိုက်သောအရောင်, ဒီလိုမျိုးဖြင့်သွင်ပြင်လက္ခဏာ။

"Turbinado ။ "
ဒီအမြင်အပြောင်းအလဲနဲ့နည်းလမ်းနှင့်အညီ၎င်း၏အမည်ကိုဟုတထစ်ချ - ရေနွေးငွေ့ (တာဘိုင်) ကိုသုံးနိုင်သည်။ အဆိုပါအမျိုးမျိုးရည်တစ်အတော်လေးနိမ့်အကြောင်းအရာအားဖြင့်သွင်ပြင်လက္ခဏာဖြစ်ပါတယ်။
ဘာဘေးဒိုးစအနက်ရောင်သကြား။
ဒီမျိုးစိတ်ရည်တစ်ဦးအလွန်မြင့်မားသောအကြောင်းအရာများကိုရှိပါတယ်, ထို့ကြောင့်ကွက်တိကမ္ဘာပေါ်မှာသကြားရဲ့တန်ဖိုးအရှိဆုံးမျိုးအဖြစ်အသိအမှတ်ပြုခဲ့ကြသည်။
Crd#
 """,
      imageURL: "assets/cane2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Cane",
      summary: "ဆေးဖက်ဝင်အသုံးပြုပုံ..",
      body: """
သည်းခြေပျက်ရောဂါ၊ မူးဝေရင်တုန်မောသောရောဂါများအတွက် ကြံရည်ကိုသံပရာရည်အနည်းငယ်ညှစ်၍ တိုက်ကျွေးပေးပါ။

အစာအိမ် ပူသောရောဂါရှိသူကိုကြံရည်တွင် ပျားရည်တစ်ဇွန်းထည့်၍ တိုက်ကျွေးပေးလျှင် အစာအိမ်ပူလောင်သောရောဂါ၊ ရင်ညွန့်ပူ သောရောဂါ၊ အစာအိမ်ရောင်ရောဂါသက်သာပျောက်ကင်းစေနိုင်သည်။

ဆီးပူရောဂါ၊ ဆီးအောင့်ရောဂါဖြစ်လျှင် ကြံရည်ကို တစ်နေ့သုံးကြိမ်တိုက်ကျွေးပေးခြင်းဖြင့် သက်သာပျောက်ကင်းစေနိုင်သည်။

သွေးဝမ်းသွားရောဂါဖြစ်လျှင် ကြံရည်ကို အနည်းငယ်ပူအောင် မီးဖြင့်နွှေးပြီး တိုက်ကျွေးပေးလျှင် သက်သာစေနိုင်သည်။

ဝမ်းကိုက်ရောဂါဖြစ်သူကို လက်ထုတ်ကြီးခေါက်သွေးပြီး ပျားရည်နှင့် ရောစပ်တိုက်ပေးလျှင် ဝမ်းကိုက်ရောဂါ၊ သွေးဝမ်းကိုက် ရောဂါများပါ သက်သာပျောက်ကင်းစေနိုင်သည်။
Crd#
""",
      imageURL: "assets/images/post_cane22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Cane",
      summary: "အရသာနှင့်အကျိုးကျေးဇူး...",
      body: """ ကြံရည်သည်ခွန်အားကိုဖြစ်စေ၏။ သလိပ်ကိုဖြစ်စေ၏။ ပြေပြစ်၏။ ကြေကျက်ခဲ၏။ ဆီးပူ၊ ဆီးအောင့်   စသောဆီးရောဂါများကိုပျောက်ကင်းစေတတ်သည်။ (ကြံရည်သည် ဆီးချိုသွေးချိုရောဂါရှိသူများနှင့်မူ မသင့်ပါ။)
ကြံနီ၏အရသာနှင့်အကျိုးကျေးဇူးမှာ ကြံနီသည် ချို၏။ ဖန်၏။ အေး၏။ ကြေကျက်ပြီး အရသာဝိပါက၌ ချို၏။ ခွန်အားကိုဖြစ်စေ၏။ အရောင်အဆင်းကိုဖြစ်စေ၏။ ဓာတ်တို့ကိုပွားစေ၏။  ကြေကျက်ခဲ၏။  လေ၊ သည်းခြေကိုငြိမ်းစေ၏။ အပူနာ၊ အနာမီးလျှံနာ၊ ဆီးအောင့်၊ ဆီးချုပ်၊ သွေးဖောက်ပြန်ခြင်းတို့ကို ပျောက်ကင်းစေနိုင်သည်။
ကြံဖြူ၏ အရသာနှင့်အကျိုးသွားမှာကြံဖြူသည် ချို၏။ ပြေပြစ်၏။ ၎င်းင်း၏ ဂုဏ်နှင့်စွမ်းရည်မှာ ဝဖြိုးစေ၏။ အသက်ကိုရှည်စေ၏။ သလိပ်ကိုပြုတတ်၏။ ပင်ပန်းခြင်း၊ သွေးအန်သွေးကျ ကိုယ်တွင်းရှိ အပူကိုငြိမ်းစေတတ်၏။
ကြံညို၏ အရသာနှင့် အကျိုးကျေးဇူးမှာကြံညိုသည် ချို၏။ ပြေပြစ်၏။  အပူကိုတားမြစ်တတ်၏။ သလိပ်ကို ဖြစ်စေ၏။ မြစ်ခြောက်နာ၊ အနာပေါက်ရောဂါတို့ကို ပျောက်ကင်းစေတတ်၏။
Crd#
""",
      imageURL: "assets/images/post_cane23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}