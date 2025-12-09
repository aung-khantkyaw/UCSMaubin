import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngagyin.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/32';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaGyinPage3 extends StatelessWidget {
  const PostNgaGyinPage3({Key? key}) : super(key: key);

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
        title: Text("ငါးကန်တူးဖော်ခြင်း"),

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
      author: users[1],
      title: "Fish",
      summary: """မွေးမြူကန် အရွယ်အစား.. """,
      body: """မွေးမြူကန် အရွယ်အစား

မြက်စားငါးကြင်းမွေးမြူရန်ကန်ကို အလျား ၂၀၀ ပေ၊ အနံ ၁၀၀ ပေရှိ ဧကဝက်ခန့် အကျယ်ဖြစ်အောင်တူးပါ။ တစ်နှစ်ပတ်လုံး ရေအနက် ၄ပေ ရှိနေစေရန် ၆ပေခန့် နက်အောင် ကန်ကိုတူးထားရပါမည်။ ကန်ဘောင်ဖို့လျှင်လည်း ကန်နှုတ်ခမ်းမှနေ၍ ၅ပေ နောက်ဆုတ်ပြီး ဖို့ထားပေးပါ။ 
ကန်ဘောင် ထိပ်မှနေ၍ အောက်တည့်တည့် ၁တောင် (သို့မဟုတ်) ၁၈ လက်မအကွာတွင် ရေလျှံပေါက်တစ်ခုတပ်ထားပြီး ကန်ဘောင်မပြိုရန် ကန်ဘောင်တွင် မြက်များအပြည့်ကပ်၍ စိုက်ထားပေးပါ။ 
Ref: GreenWayMyanmar
 """,

      imageURL: "assets/images/post_ngagyin1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Fish",
      summary: """သြဇာဓါတ်ထည့်သွင်းခြင်း.. """,
      body: """သြဇာဓါတ်ထည့်သွင်းခြင်း

ကန်ကို ရေမထည့်မီ ထုံးမှုန့် ၁၅၀ ပိဿာကို ဖြန့်ပြီး ဖြူးပေးပါ။ ထုံးမှုန့်ထည့်ပြီးလျှင် ရေထည့်ပါ။ရေထည့်ပြီး တစ်ပါတ်ကြာလျှင် နွားချေး၊ ဝက်ချေး၊ ကြက်ချေး၊ ဘဲချေး စသော မည်သည့် တိရစ္ဆာန်ချေးများကို ဖြစ်စေ ၄ဂါလံဝင်ပုံး ဖြင့် ပုံး ၁၅၀ ထည့်ပေးပါ။

ထို့နောက် ပကန်၊ ဘဲစာ၊ ခွေးမြီးဖုတ် စသော ရေမှော်ပင်များကို တင်းတောင်းဖြင့် ၅တောင်း ထည့်ပေးပါ။ တစ်ပတ်ကြာလျှင် ကန်တစ်ခုလုံး ရေမှော်ပင်များဖြင့် ပြည့်လာပါလိမ့်မည်။ ရေမှော်ပင်များ ပြည့်လာလျှင် မြက်စားငါးကြင်းသားပေါက်များကို ကန်အတွင်းသို့ ထည့်နိုင်ပါသည်။
Ref: GreenwayMyanmar
""",
      imageURL: "assets/images/post_ngagyin31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Fish",
      summary: """ကန်ရေလဲလှယ်ခြင်း.. """,
      body: """ ကန်ရေလဲလှယ်ခြင်း
*ကန်ရေလဲလှယ်ခြင်းသည် ကန်ရေ၏ အပူချိန်ကို ထိန်းချုပ်နိုင်သည်။
*ကန်ရေကိုလှုပ်ရှားစေသည့်အတွက်လည်း အောက်ဆီဂျင်ကို ပေါကြွယ်၀စေသည်။
*နိုက်ထရိတ်နှင့် နိုက်ထရိုက်ကဲ့သိုသောအန္တရာယ်ရှိသောအ‌ခြေအနေများအားကြိုတင်ကာကွယ်ပြီးသား ဖြစ်စေသည်။


Ref: GreenwayMyanmar
""",
      imageURL: "assets/ngagyin3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}