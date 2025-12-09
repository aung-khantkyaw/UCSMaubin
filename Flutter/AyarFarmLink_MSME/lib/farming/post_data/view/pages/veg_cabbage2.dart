import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/198';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCabbagePage2 extends StatelessWidget {
  const PostCabbagePage2({Key? key}) : super(key: key);
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
        title: Text("ကျရောက်တတ်သောရောဂါများ‌"),
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
      name: "မောင်မင်းထွဋ်ခေါင်",
      //email: "ishfar@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မယုယုခိုင်",
      //email: "ishrak@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးချစ်ဖူး",
      //email: "shakleen@gmail.com",
      email: "ငရစ်ဆယ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုချမ်းမြေ့ကို",
      //email: "shakleen@gmail.com",
      email: "မင်းဘော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မမဂျူး",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မထက်ထက်",
      //email: "shakleen@gmail.com",
      email: "အလန်းတွတ်",
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
      title: "Cabbage",
      summary: """အနက်ပုပ်ရောဂါ..""",
      body: """ အနက်ပုပ်ရောဂါ
      
      ဒဏ်ရာများ၊ ရွက်နားရေဝင်ပေါက်များမှတစ်ဆင့် အရွက်များပေါ်တွင် ကျရောက်ဖျက်ဆီးပါတယ်။ ဘတ်တီးရီးယားဟာ ရွက်ကြောများမှတစ်ဆင့် ပင်စည်သို့ရွေ့လျားပြီး အခြားအရွက်များကို ဖျက်ဆီးပါတယ်။ ဘတ်တီးရီးယားဖျက်ဆီးထားသော အရွက်ဟာ ဝါလာပြီးနောက် အညိုရောင်ပြောင်းကာ ၎င်းအရွက်သည် လုံးဝခြောက်သွေ့သွားပါတယ်။ အရွက်တွင် ဗွီပုံစံကိုတွေ့နိုင်ပါတယ်။ 
      အစေ့၏အတွင်းအပြင်နှင့် သီးနှံအ ကြွင်းအကျန်များဟာ ဘတ်တီးရီးယားများကို သယ်ဆောင်ပေးပြီး တစ်နှစ်ပြီးတစ်နှစ် မြေကြီးထဲနှင့် ရောဂါကျအရွက်များပေါ်တွင် ရှင်သန်နိုင်ပါတယ်။ ရောဂါဖြစ်နေသော အပင်ဟောင်းများမှ အပင်ငယ်များသို့ ကူးစက်နိုင်ပါတယ်။ 
      #crd
""", imageURL:"assets/images/post_cabbage21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

    PostModel(
      id: "2",
      author: users[2],
      title: "Cabbage",
      summary: """အမြစ်တင်းပုပ်ရောဂါ...""",
      body: """ အမြစ်တင်းပုပ်ရောဂါ-အပင်ရေသောက်မြစ်ဟာ စတင်ဖောင်းကားပြီး ၎င်းမှတစ်ဆင့် အမြစ်နှင့် မြေအောက်ပင်စည်အစိတ်အပိုင်းများ ဖောင်းကားလာပါတယ်။ အမြစ်ရဲ့အလယ်ပိုင်းတွင်ထူပြီး အဖျားပိုင်းများရှူးကာ ရစ်ဘီးပုံဖြစ်လာပါတယ်။ ရောဂါကျအမြစ်များဟာ မရိတ်သိမ်းမီမှာပင် ဆွေးမြေ့ပျက်စီးသွားပါတယ်။ မြေအစိုဓာတ်များခြင်းနှင့် အချဉ်ပေါက်နေခြင်း အပူချိန် ၁၈.၅ နှင့် ၂၅.၅ ဒီဂရီစင်တီဂရိတ်အတွင်းရှိပါက ရောဂါကျရောက်စေပါ တယ်။ ၎င်းရောဂါဟာ ရောဂါကျပျိုးပင်များ၊ လေနှင့်အတူပါလာသော မြေမှုန်များ၊ မသန့်ရှင်းသော လယ်ယာသုံးစက်ကိရိယာများမှတစ်ဆင့် ပျံ့နှံ့ပါတယ်။ 
      #crd
""", imageURL:"assets/images/post_cabbage22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Cabbage",
      summary: """ရေနာရောဂါ...""",
      body: """စလာရိုတီးနီးယားရေနာရောဂါ -အညိုဖျော့ရောင် ရေနာကွက်သည် လျင်မြန်စွာပြန့်ပွားပြီး ကြီးထွားလာပါတယ်။ စိုစွတ်သောအခြေအနေတွ င်ရေနာကွက်ဟာ အဖြူရောင်မှိုမျှင်များဖုံးအုပ်ပြီး ၎င်းအတွင်း၌ အစေ့နှင့်သဏ္ဍန်တူသော ပုံမမှန်အစိတ်အပိုင်းများကို တွေ့ရပါတယ်။ ၎င်းတို့ဟာ စခရိုးရှားဟုခေါ်သော မှိုအိမ်များဖြစ်ပါတယ်။ ၎င်းဟာ မြေထဲတွင်နှစ်ပေါင်းများစွာ ရှင်သန်နိုင်ပါတယ်။ ၎င်းရောဂါဟာ ဟင်းသီးဟင်းရွက်များနှင့် အခြားပင်များကိုပါ ကျယ်ပြန့်စွာ ဖျက်ဆီးနိုင်ပါတယ်။
       #crd
""", imageURL:"assets/images/post_cabbage23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}