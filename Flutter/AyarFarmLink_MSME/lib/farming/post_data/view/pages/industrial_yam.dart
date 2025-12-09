import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/171';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostYamPage1 extends StatelessWidget {
  const PostYamPage1({Key? key}) : super(key: key);
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
        title: Text("ပီလောပီနံတင်ပို့ပုံ"),
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
      name: "အကြီးကောင်",
      //email: "ishfar@gmail.com",
      email: "ထာဝရမြန်မာပြည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ကရား",
      //email: "ishrak@gmail.com",
      email: "မင်းလှ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုသက်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ပေါက်တော",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဂွစာ",
      //email: "shakleen@gmail.com",
      email: "ငပုတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးတောက်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ကြံခင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မရွှေဘုံ",
      //email: "shakleen@gmail.com",
      email: "စစ်ချောင်း",
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
      author: users[0],
      title: "Yam",
      summary: """စိုက်ပျိုးသည့်နိုင်ငံများ...""",
      body: """မူရင်းဒေသမှာ တောင်အမေရိကတိုက်၊ ဘရာဇီးနိုင်ငံဖြစ်ပြီး ၁၅ ရာစုမတိုင်မှီကတည်းက တွေ့ရှိခဲ့ပါသည်။ ၎င်းနောက် အာဖရိကတိုက်သို့ ပျံ့နှံ့ရောက်ရှိခဲ့ပါသည်။ ၁၈ ရာစု အနှောင်းပိုင်း ပိုင် မြန်မာနိုင်ငံတောင်ပိုင်းဒေသများသို့ ပေါ်တူဂီတို့နှင့်အတူ ရောက်ရှိလာပြီး တစ်နိုင်ငံလုံးသို့ ပျံ့နှံ့ခဲ့ပါသည်။

ကမ္ဘာပေါ်တွင် ပီလောပီနံစိုက်ပျိုးသော နိုင်ငံပေါင်း (၁၀၀) ခန့်ရှိပြီး အမေရိကတိုက်၊ အာဖရိကတိုက်နှင့် အာရှတိုက်တို့တွင် အဓိကစိုက်ပျိုးပါသည်။ အာရှတိုက်တွင် တစ်ကမ္ဘာလုံး၏ (၃၀) ရာခိုင်နှုန်းစိုက်ပျိုးပြီး ထိုင်းနိုင်ငံသည် နိုင်ငံခြားတင်ပို့မှု အများဆုံးထုတ်လုပ်သော နိုင်ငံဖြစ်ပါသည်။ ဒေသမျိုးများမှာ အထွက်နှုန်း တစ်ဧကလျှင် ပိဿာ (၂၅၀၀) ခန့်မှ (၄၅၀၀) ခန့်သာ ရှိပြီး အထွက်ကောင်းမျိုးများမှာ ပိဿာ (၄၀၀၀) မှ (၁၀၀၀၀) အထိ သွင်းအားစုပေါ် မူတည်၍ အထွက် ရရှိနိုင်ပါသည်။
#crd
 """,
      imageURL: "assets/images/post_yam1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "yam",
      summary: """တန်ဖိုးမြင့်ထုတ်ကုန်ပီလော...""",
      body: """အသုံးပြုနိုင်သောအစိတ်အပိုင်းနှင့် တန်ဖိုးမြှင့်ထုတ်ကုန်များ
အရွက်နှင့်ဥတို့ကို လူတို့တိုက်ရိုက်စားသုံးနိုင်ပြီး အရွက်၊ ပင်စည်နှင့် ဥတို့အား တိရစ္ဆာန် အစာအဖြစ် တိုက်ရိုက်အသုံးပြုနိုင်ပါသည်။ တန်ဖိုးမြင့် ထုတ်ကုန်များဖြစ်သော ကော်ရည်၊ ကော်မှုန့်၊ အချိုမှုန့် အရက်နှင့် နို့မှုန့်အစားထိုးပစ္စည်းများကိုလည်းကောင်း၊ အိမ်သုံးဆေးဝါးများ အဖြစ် သွေးတိုး၊ ဆီးချို၊ ကင်ဆာနှင့် အူလမ်းကြောင်းဆိုင်ရာရောဂါ ကာကွယ်ဆေးများအဖြစ် လည်းကောင်း၊ လူသုံးကုန်ပစ္စည်းများအဖြစ်စက္ကူ၊ ချည်မျှင်၊ လေသေနတ် ကျည်ဆံနှင့် အလှကုန်ပစ္စည်းများအဖြစ်လည်းကောင်း၊ နွား၊ ၀ကျ၊ ဆိတ်၊ သိုး၊ ငါး စသည့် တိရစ္ဆာန်များအ တွက် အစာအဖြစ်လည်းကောင်း၊ ဇီ၀လောင်စာအဖြစ်လည်းကောင်း၊ လူတို့၏ နေ့စဉ်ဘ၀တွင် များစွာပါ၀င်လျှက်ရှိပါသည်။ ၎င်းအပြင် သဘာ၀ပတ်၀န်းကျင်ထိန်းသိမ်းရေး အထောက်အကူ ဖြစ်စေသော Bio-Plastic များကိုလည်း တွင်ကျယ်စွာ ထုတ်လုပ်အသုံးပြုလျှက်ရှိပါသည်။
#crd
""",
      imageURL: "assets/images/post_yam2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}