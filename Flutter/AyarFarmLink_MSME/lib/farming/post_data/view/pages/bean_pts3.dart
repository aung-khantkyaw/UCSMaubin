import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/152';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostPtsPage3 extends StatelessWidget {
  const PostPtsPage3({Key? key}) : super(key: key);

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
        title: Text("ပဲတီစိမ်းအမျိုးအစားများ"),

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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[0],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "5",
      author: users[4],
      title: "Green gram",
      summary: """မိုးကြိုပဲတီစိမ်း ... """,
      body: """
မန္တလေး၊ မကွေး၊ စစ်ကိုင်းတိုင်းများတွင် နှမ်းကိုရေသွင်းစိုက်သကဲ့သို့ ပဲတီစိမ်းကိုလည်း ရေသွင်းစိုက်ကြပါသည်။ နှမ်းလျှင်နှင့် ပဲတီစိမ်းကို သီးညှပ်စိုက်နိုင်ပါသည်။  

သတိပြုရန်အချက်များ…… 

မြေမာလွန်းက စိုက်ထယ်ရေးပြင်ရန် ရေတစ်ကြိမ် သွင်းရပါသည်။ 
နုန်းစနယ်နှင့် နုန်းမြေစေးဖြစ်ပါက ရေသွင်းနာ၍ ထိထိမိမိရှိလျှင် ပန်းဖြိုင်ချိန်အထိ ရေလုံလောက်နိုင်သည်။  
အပင်ဖြစ်ထွန်းချိန် အစိုဓာတ်မလုံလောက်ခြင်းသည် အထွက်ကိုထိခိုက်မှု အများဆုံးဖြစ်သည်။ သို့ဖြစ်၍ ပန်းပွင့်ချိန်မတိုင်မီ အစိုဓာတ်လုံလောက်ရပါမည်။ 
ပန်းစချိန် ရေလိုအပ်မည်ဖြစ်၍ မိုးမရွာပါက ရေထပ်သွင်းရမည်။ သို့သော် ရေပိုရေလျှံကျန်ပြီး ရေဝပ်မနေစေရန် သတိပြုရမည်။ မိုးကြိုပဲတီစိမ်း ပွင့်ချိန်၊ သီးကင်းဝင်ချိန် မိုးကြီးမိပါက အပွင့်၊ အသီးနုများ ကြွေနိုင်သည်။ 
အချိန်ရှိသေးက ရေထုတ်ပေးပြီး မြေမာသွားလျှင် ကြားထွန်ဝင်၍ မြေသြဇာထည့်ပေးလျှင် အပွင့်ထပ်မံပွင့်လာနိုင်သည်။  
#crd ဝိစာရ
 """,

      imageURL: "assets/images/post_pts11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[3],
      title: "Green gram",
      summary: """မိုးစိုက်ပဲတီစိမ်း...""",
      body: """ပဲတီစိမ်းကို မိုးရာသီတွင် သီးထပ်စိုက်သည့် အလေ့အထကို စစ်ကိုင်းတိုင်း ဆားလင်းကြီး၊ ပုလဲ၊ ယင်းမာပင်၊ ကနီ၊ ဘုတလင်၊ မုံရွာ၊ အရာတော်တို့တွင် နှစ်အတော်ကြာကပင် ကျင့်သုံးခဲ့ပါသည်။ ယခုအခါ မန္တလေးတိုင်း၊ စစ်ကိုင်းတိုင်းအရှေ့ဘက်ခြမ်းနှင့် မကွေးတိုင်းတို့တွင်ပါ မိုးစိုက်ပဲတီစိမ်းကို တိုးချဲ့စိုက်ပျိုးလျက်ရှိသည်။  
ဧရာဝတီတိုင်း၌လည်း အင်္ဂပူ၊ ကြံခင်း၊ မြန်အောင်တို့တွင် စိုက်ပျိုးကြသည်။ သီးညှပ်အဖြစ် မိုးပြောင်းဖူး၊ နှမ်းလျှင်၊ ပဲစဉ်းငုံ၊ မိုးနေကြာတို့နှင့် သီးညှပ်စိုက်ကြပါသည်။ မိုးကြို၊ မိုးစိုက်ပဲတီစိမ်းများသည် ဇူလိုင်လ မိုးပြတ်ချိန်တွင် ကောက်သိမ်းရပါက အရည်အသွေးကောင်းပါသည်။  

သတိပြုရန် အချက်များ…… 
ရေဝပ်မခံရန် အရေးကြီးပါသည်။ လယ်မြေဖြစ်ပါက ပတ်မြောင်းနှင့် စိုက်ကွက်အလယ်တွင် ရေထုတ်မြောင်း လုပ်ထားရမည်။ 
 ရင့်မှည့်ချိန်တွင် မိုးကြီးမိပါက သီးတောင့်များ ရေစွတ်စို၍ စိမ့်ဝင်နူးအိသွားကာ အစေ့ကပ်၍ ပုပ်သွားနိုင်သည်။ 
ပဲတီစိမ်းရင့်မှည့်သောအခါ အခွံအနက်ရောင် ပြောင်းသွားသောမျိုး၊ အခွံတွင် အမွှေးအမျှင် ထူထူရှည်ရှည်ပါသော မျိုးများမှာ ရေထိခံနိုင်သည်။ အတွင်းကို ရေဝင်ရန် ခဲယဉ်းသည်။ 
ပဲတီရွှေဝါမှာ မိုးကြီးမိခြင်းကို မခံနိုင်ပါ။ 
ပဲတီစိမ်းတွင် အဆုံးမရှိပန်းပွင့်နေတတ်သည့် မျိုးများကများပါသည်။ အစသတ်သောမျိုး၊ တစ်ကြိမ်တည်းနှင့် ပန်းပွင့်တုံးသွားသောမျိုးများ ရှာဖွေစိုက်ရပါမည်။ လက်ရှိမျိုးများမှာ အစိုဓာတ်ရှိနေသ၍ ဆက်ပွင့်နေပြီး အခြေအနေပေးပါက အသီးဆက်ကောက်သင့်သည်။  
#crd ဝိစာရ

""",
      imageURL: "assets/images/post_pts31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[2],
      title: "Green gram",
      summary: """မိုးလယ်စိုက် ပဲတီစိမ်း ...""",
      body: """မကွေးတိုင်း၊ မန္တလေးတိုင်း၊ စစ်ကိုင်းတိုင်းအောက်ပိုင်းနှင့် ရှမ်းပြည်နယ်အနောက်ပိုင်းတို့တွင် မေလ၊ ဇွန်လတွင် မိုးသည်းထန်စွာ ရွာတတ်ပြီး ဇူလိုင်လနှင့် သြဂုတ်လတွင် မိုးကွက်ကြားရွာပြီး မိုးပြတ်မိုးခေါင်နေတတ်ပါသည်။ သြဂုတ်လနှင့် စက်တင်ဘာလဆန်းတွင် ရွာသောမိုးနှင့်စိုက်သော ပဲတီစိမ်းသည် အစိုဓာတ်လုံလောက်စွာ ရရုံတင်မက ရိတ်သိမ်းချိန်ဖြစ်သော နိုဝင်ဘာလ၊ ဒီဇင်ဘာလတွင် မိုးလွတ်သဖြင့် အထွက်နှုန်းကောင်းပြီး အရည်အသွေးလည်း ကောင်းတတ်ပါသည်။ 
မိုးလယ်စိုက် ပဲတီစိမ်းကို စိုက်ချိန်နောက်ကျသွား၍ ပန်းပွင့်ပြီး သီးတောင့်ဖြစ်ထွန်းချိန်တွင် မိုးပြတ်နေပါက ရေသွင်းပေးရန် လိုအပ်ပါသည်။ သို့ဖြစ်၍ သြဂုတ်လအတွင်း မစိုက်နိုင်ပါက စက်တင်ဘာလဆန်းတွင် စိုက်ဖြစ်အောင် စိုက်သင့်သည်။ 
မိုးလယ်ရာသီတွင် မြန်မာနိုင်ငံတစ်ဝှမ်းလုံး (ကချင်၊ ချင်း၊ ရှမ်းနှင့် စစ်ကိုင်းတိုင်း အထက်ပိုင်းမှလွဲ၍) အပူချိန်မြင့်ပြီး စိုထိုင်းဆလည်းများတတ်ရာ ပင်ပိုင်းဖြစ်ထွန်းမှု များလွန်းအားကြီး၍ မျိုးစေ့နှုန်း လျှော့စိုက်သင့်သည်။ ပျဉ်းမနားကဲ့သို့ မြေသြဇာထက်သန်သောဒေသတွင် တန်းကြား(၂)ပေခန့် ထားပြီးစိုက်သင့်သည်။ သို့မဟုတ် လက်ကြဲကြဲပါက ထွန်ကြောင်းခံပြီး မျိုး(၄-၆)ပြီခန့်ထိ ကြဲသင့်ပါသည်။
မိုးလယ်စိုက်တွင် စိုက်ချိန်၌သော်လည်းကောင်း၊ စိုက်ပြီးမကြာမီသော်လည်းကောင်း အစိုဓာတ်လုံလောက်စွာ ရရှိနိုင်ပါက ပဲမြစ်ဖုဇီဝမြေသြဇာနှင့် လူးနယ်စိုက်သင့်ပါသည်။ မျိုးစေ့များ မစိုက်မီ တိုက်ရိုက်နေရောင်နှင့် မထိအောင် ဖုံးအုပ်ထားရမည်။  
#crd ဝိစာရ

""",
      imageURL: "assets/images/post_pts32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}