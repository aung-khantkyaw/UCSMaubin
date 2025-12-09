import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/192';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostOkraPage3 extends StatelessWidget {
  const PostOkraPage3({Key? key}) : super(key: key);
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
        title: Text("ကျရောက်တတ်သောပိုးမွှားများနှင့်နှိမ်နင်းကာကွယ်နည်း"),
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
      name: "မောင်သစ်မင်း",
      //email: "ishfar@gmail.com",
      email: "ရုံးဒေါင့်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မတင်မိုးလွင်",
      //email: "ishrak@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဖိုးဆိတ်",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကုလား",
      //email: "shakleen@gmail.com",
      email: "လပ္ပတ္တာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မောင်ထက်အာကာ",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဒေါ်မြပုလဲ",
      //email: "shakleen@gmail.com",
      email: "ကျိုက္ကစံ",
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
      comment: "ကျေးဇူးပါ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါဗျ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါနော် ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[0],
      title: "Okra",
      summary: """အဝါရောင်မိုစေ့ဗိုင်းရပ်... """,
      body: """အဝါရောင်မိုစေ့ဗိုင်းရပ်_
      
      ရုံးပတီပင်တွင်  ၈၀ မှ ၁၀၀ ရာနှုန်းအထိ စီးပွားရေးအရ ထိခိုက်ပျက်ဆီးစေနိုင်သည်။ ယင်ဖြူသည် အရွက်အောက်မျက်နှာပြင်တွင်နေကာ အဆိုနေရာတွင်သာ ဥဥကာ မျိုးဆက်ပြန့်ပွားစေသည်။ အညစ်အကြေးစွန့်ရာမှတစ်ဆင့် ကြပ်ခိုးမှိုများကို ဖြစ်ပေါ်စေပြီး ယင်ဖြူစုပ်စားသည်ဒဏ်ကြောင့် အပင်၏ အပင်ပိုင်းဆိုင်ရာကြီးထွားမှုကို ရပ်တန့်စေသည်။

    အဝါရောင်မိုစေ့ဗိုင်းရပ်ကျရောက်ပါက အသီးများ ပုံသဏ္ဍန်မမှန် ဝါ၍ ရောင်ပန်းမလှခြင်းကြောင့် ကုန်သည်၊ ပွဲစား၊ စားသုံးသူမကြိုက်ခြင်းသည် စျေးနှိမ်ခံရခြင်းအကြောင်းအရာကို အဓိကဖြစ်စေသော အချက်ဖြစ်သည်။ ရောဂါရ ပင်ကြွင်းပင်ကျန်များ နှင့် သက်ဆိုင်သော အစိတ်အပိုင်းများကို မွေးမြူထိန်းသိမ်းစောင့်ရှောက်ခြင်းသည် ရောဂါ ပြန့်ပွားမှုကို မထိန်းချုပ်နိုင်ခြင်း၊ အခြားအပင်များကို ရောဂါပျံ့နှံ ကူးစက်လွယ်ခြင်းနှင့် ရောဂါစဥ်ဆင်မပြတ် ကူးစက်ပျံ့နှံ့စေရန် အခြေအနေပေးနေခြင်းတို့ကို ဖြစ်စေသောကြောင့် အဆိုပါရောဂါကို ထိန်းသိမ်းရခက်ခဲစေနိုင်သည်။
    #crd
      """,
      imageURL: "assets/images/post_okra21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Okra",
      summary: """ဓာတုဆေးဝါးများဖြင့်...""",
      body: """ဓာတုဆေးဝါးများဖြင့် ကာကွယ်နှိမ်နှင်းခြင်း_

    အပင်တွင် ယင်ဖြူကျရောက်မှုကို တားဆီးကာကွယ်ခြင်းသည် ရောဂါဖြစ်ပေါ်မှုကို ရပ်တန့်စေနိုင်သည်။ ဓာတုဆေးဝါးတစ်မျိုးတည်းကို အားကိုးခြင်းသည် ရေရှည်ဖြေရှင်းသော နည်းလမ်းမဟုတ်ကြောင်းကိုလည်း သတိအထူးပြုစေချင်သည်။

Imidachloprid အင်မီဒါကလိုပရစ်

Buprofefezin 

Dinotefuran ဒိုင်နိုတီဖျူရန်

Emamectin Benzoate အီမာမက်တင် ဘန်ဇိုအိတ်

Fipronil ဖစ်ပရိုနေး 

Thiamethoxam သိုင်ရာမီသိုဇမ်

Lambda -Cyhalothrin + Chlorantraniliprole လန်ဒါ - ဆိုင်ဟေလိုသရင် + ကလိုရန်ထရန်နီလီပရိုး

Lambda Cyhalothrin + Thiamethoxam  လန်ဒါ - ဆိုင်ဟေလိုသရင် + သိုင်ရာမီသိုဇမ်

Prethroid ပရီသရွိုက်နှင့်အတူ organophosphate အော်ဂန်နိုဖော့စဖိတ် . Carbamate ကာဘာမိတ် အုပ်စုများဖြင့် တွဲဖက်အသုံးပြုခြင်းသည် အာနိသင်ပိုမိုထိရောက်စေသည်။

ပိုးသတ်ဆေးများကို မှတ်ပုံတင်ထားခြင်းရှိမရှိစစ်ဆေးပါ.

ညွှန်းဆိုနှုန်းထားအတိုင်း အသုံးပြုပါ။
 #crd
""", imageURL:"assets/ypt3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Okra",
      summary: """ကြိုတင်ကာကွယ်ဖို့ ..""",
      body: """ရောဂါမဖြစ်ပေါ်စေရန် ကြိုတင်ကာကွယ်ဖို့ သိရှိရမည့်အချက်များ-

***ဆေးဝါးသုံးစွဲမှုတစ်ခုတည်းကို အားကိုး၍မရဘဲ အောက်ပါအချက်များကို သတိပြုလိုက်နာပါ***

၁. အပင်ငယ်စဥ်မှစ၍ အပင်သက်တမ်းတလျှောက် စုပ်စားပိုး အထူးဂရုစိုက်ကာကွယ်ပါ။

၂. ရောဂါရ ပင်ကြွင်းပင်ကျန်များ၊ စိုက်ခင်းအဟောင်းများအား မွေးမြူထိန်းသိမ်းစောင့်ရှောက်ခြင်းအား ရှောင်ကျဥ်၍ သုတ်သင်ရှင်းလင်း ဖျက်ဆီးပစ်ပါ။

၃. ပုလဲအပါအဝင် အခြားရွက်ဖျန်းမြေသြဇာများ အလွန်အကျွံအသုံးပြုခြင်းကို ရှောင်ပါ။

၄. သဘာဝမြေသြဇာ များများသုံးပါ။

၅. မြေ၏ PH level (မြေချဉ်ငံကိန်း) ကို သိရှိအောင်လုပ်၍ မြေပြင်ပါ။

၆. ဆေးဖျန်းစနစ် မှန်ကန်ပါစေ။

၇. ဆေးတစ်မျိုးတည်းကို ရေရည်အသုံးပြုခြင်း၊ မလိုအပ်ဘဲ ဆေးပြင်းများ အလွန်အကျွံ ဖျန်းခြင်းသည် ဆေးဝါးယဥ်ပါးမှုပြသနာကို ပိုမိုကြီးထွားစေသည်။

၈. အဝါရောင်မိုစေ့ဗိုင်းရပ်ရောဂါဒဏ် ခံနိုင်ရည်ရှိသောမျိုးများကို ရွေးချယ်အသုံးပြုပါ။

၉. ကနဦးကျရောက်သည့် လက္ခဏာပြ လက်ခံပင်များအား ဖယ်ရှားရှင်းလင်း ဖျက်ဆီးပစ်ပါ။

၁၀. ရောင်ပြန်ပါသည့် ပလပ်စတစ်များ ဖုံးအုပ်စိုက်ပျိုးပါ။

၁၁. စိုက်ခင်းအတွင်း ပိုမွှားကျရောက်မှုကို ပိုမိုမြန်ဆန်စွာ သိရှိနိုင်ရန် အရောင်ပါသော စတစ်ကာ ကပ်ခွာပါ ထောင်ခြောက်များ အသုံးပြုပါ။

၁၂. စိုက်ခင်းပြီးဆုံးသည်နှင့်တစ်ပြိုင်နက် မူရင်းလက်ခံပင်များ၊ ရောဂါသယ်ဆောင်ပျံ့နှံ့စေသော မူရင်းဇစ်မြစ်များအားဖယ်ရှားသုတ်သင်ရှင်းလင်းပစ်ပါ။

၁၃. ယင်ဖြူခိုအောင်းစေနိုင်သော နေရာများအား ဖျက်ဆီး ဖယ်ရှား ရှင်းလင်းပစ်ပါ။
#crd
""", imageURL:"assets/images/post_okra31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}