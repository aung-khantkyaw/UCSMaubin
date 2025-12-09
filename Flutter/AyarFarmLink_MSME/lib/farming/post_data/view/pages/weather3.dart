import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/url_test/main.dart';
import 'package:chatapp_firebase/farming/views/cow.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../weather/weather_main.dart';

const String _url = 'http://103.47.184.69:81/post-categories/208';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class Weather3 extends StatelessWidget {
  const Weather3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  MyWeather();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("မြေငလျင်သတင်း"),

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
      name: "မိုးဇလ",
      //email: "ishfar@gmail.com",
      email: "moezala.gov.mm",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 12, 16),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မိုးဇလ",
      //email: "ishfar@gmail.com",
      email: "moezala.gov.mm",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 12, 16),
      posts: 12,
    ),
    UserModel(
      id: "3",
      name: "မိုးဇလ",
      //email: "ishfar@gmail.com",
      email: "moezala.gov.mm",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 12, 16),
      posts: 12,
    ),

    UserModel(
      id: "4",
      name: "ကိုကျော်စိုး",
      //email: "shakleen@gmail.com",
      email: "ပိတောက်ခြံ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလွင်ကို",
      //email: "shakleen@gmail.com",
      email: "ပရိုက်ကြံခင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေသူ",
      //email: "shakleen@gmail.com",
      email: "အိမ်မဲ",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "7",
      name: "ကိုသန်းနိုင်",
      //email: "shakleen@gmail.com",
      email: "ပြည်တော်သာ",
      image: "assets/images/cus1.jpg",
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
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "မြေငလျင်",
      summary: """28.12.2022 10:50 PM """,
      body: """၂၀၂၂ ခုနှစ်၊ ဒီဇင်ဘာလ (၂၈)ရက်နေ့၊ မြန်မာစံတော်ချိန် (၁၀)နာရီ၊ (၄၈)မိနစ်၊ (၀၃) စက္ကန့်အချိန်တွင် တမူးမြေငလျင်စခန်းမှ တောင်-အရှေ့တောင်ဘက် (၆၂)မိုင်ခန့်ကွာဝေးသော မြန်မာနိုင်ငံပြည်တွင်း (ကလေးဝမြို့၏ မြောက်-အရှေ့မြောက်ဘက် (၉)မိုင် ခန့်အကွာ) မြောက်လတ္တီတွဒ် (၂၃.၃၃)ဒီဂရီ၊ အရှေ့လောင်ဂျီတွဒ် (၉၄.၃၄)ဒီဂရီ၊ အနက် (၇၅)ကီလိုမီတာကို ဗဟိုပြု၍ အင်အားရစ်(ခ်)တာစကေး (၄.၁) အဆင့်ရှိ အင်အားအနည်းငယ်ရှိသော မြေငလျင်တစ်ခု လှုပ်ရှားသွားကြောင်း တိုင်းထွာရရှိပါသည်။
             """,

      imageURL: "assets/weather/w8.png",
      postTime: DateTime(2022, 12, 22),
      reacts: 183,
      views: 275,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[0],
      title: "မြေငလျင်",
      summary: """22.12.2022 12:10 PM """,
      body: """၂၀၂၂ ခုနှစ်၊ ဒီဇင်ဘာလ (၂၂) ရက်နေ့၊ မြန်မာစံတော်ချိန် (၁၂)နာရီ၊ (၀၆)မိနစ်၊ (၀၀) စက္ကန့်အချိန်တွင် မန္တလေးမြေငလျင်စခန်းမှ အနောက်တောင်ဘက် (၁၄) မိုင်ခန့် ကွာဝေးသော မြန်မာနိုင်ငံပြည်တွင်း (စစ်ကိုင်းမြို့၏ တောင်-အရှေ့တောင်ဘက် (၃) မိုင်ခန့်အကွာ) မြောက်လတ္တီတွဒ် (၂၁.၈၅) ဒီဂရီ၊ အရှေ့လောင်ဂျီတွဒ် (၉၅.၉၉)ဒီဂရီ၊ အနက် (၄) ကီလိုမီတာကို ဗဟိုပြု၍ အင်အားရစ်(ခ်)တာစကေး (၃.၃) အဆင့်ရှိ အင်အားအနည်းငယ်ရှိသော မြေငလျင်တစ်ခု လှုပ်ရှားသွားကြောင်း တိုင်းထွာရရှိပါသည်။       """,

      imageURL: "assets/weather/w8.png",
      postTime: DateTime(2022, 12, 22),
      reacts: 183,
      views: 275,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[0],
      title: "မြေငလျင်",
      summary: """21.12.2022 4:00 AM """,
      body: """၂၀၂၂ ခုနှစ်၊ ဒီဇင်ဘာလ (၂၁) ရက်နေ့၊ မြန်မာစံတော်ချိန် (၀၃)နာရီ၊ (၅၁)မိနစ်၊ (၁၆)စက္ကန့် အချိန်တွင် ကသာမြေငလျင်စခန်းမှ မြောက်-အနောက်မြောက်ဘက် မိုင်(၃၀) ခန့်အကွာ၊ မြန်မာနိုင်ငံပြည် တွင်း (မိုးညှင်းမြို့၏ အနောက်တောင် (၁၃)မိုင်ခန့်အကွာ)၊ မြောက်လတ္တီတွဒ် (၂၄.၆၀) ဒီဂရီ၊ အရှေ့ လောင်ဂျီတွဒ် (၉၆.၂၃) ဒီဂရီ၊ အနက် (၁၀)ကီလိုမီတာကို ဗဟိုပြု၍ အင်အားရစ်(ခ်)တာစကေး (၃.၈) အဆင့်ရှိ အင်အားအနည်းငယ်ရှိသော မြေငလျင်တစ်ခု လှုပ်ရှားသွားကြောင်း တိုင်းထွာရရှိပါသည်။    
       """,

      imageURL: "assets/weather/w8.png",
      postTime: DateTime(2022, 12, 21),
      reacts: 113,
      views: 245,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[1],
      title: "မြေငလျင်",
      summary: """20.12.2022 12:05 AM """,
      body: """၂၀၂၂ ခုနှစ်၊ ဒီဇင်ဘာလ (၂၀) ရက်နေ့၊ မြန်မာစံတော်ချိန် (၀၀)နာရီ၊ (၀၁)မိနစ်၊ (၁၉) စက္ကန့်အချိန်တွင် နေပြည်တော်မြေငလျင်စခန်းမှ မြောက်ဘက် (၁၅) မိုင်ခန့် ကွာဝေးသော မြန်မာနိုင်ငံပြည်တွင်း (ပုဗ္ဗသီရိမြို့၏ မြောက်-အနောက်မြောက်ဘက် (၇) မိုင်ခန့်အကွာ) မြောက်လတ္တီတွဒ် (၁၉.၉၉) ဒီဂရီ၊ အရှေ့လောင်ဂျီတွဒ် (၉၆.၁၅)ဒီဂရီ၊ အနက် (၅) ကီလိုမီတာကို ဗဟိုပြု၍ အင်အားရစ်(ခ်)တာစကေး (၄.၂) အဆင့်ရှိ အင်အားအနည်းငယ်ရှိသော မြေငလျင်တစ်ခု လှုပ်ရှားသွားကြောင်း တိုင်းထွာရရှိပါသည်။ """,

      imageURL: "assets/weather/w8.png",
      postTime: DateTime(2022, 12, 20),
      reacts: 169,
      views: 270,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[0],
      title: "မြေငလျင်",
      summary: """19.12.2022 6:40 AM """,
      body: """
       ၂၀၂၂ ခုနှစ်၊ ဒီဇင်ဘာလ (၁၉)ရက်နေ့၊ မြန်မာစံတော်ချိန် (၀၆)နာရီ၊ (၃၄)မိနစ်၊ (၁၉)စက္ကန့် အချိန်တွင် မန္တလေးမြေငလျင်စခန်းမှ တောင်-အနောက်တောင်ဘက် (၁၇)မိုင်ခန့်ကွာဝေးသော မြန်မာနိုင်ငံ ပြည်တွင်း (တံတားဦးမြို့၏ အရှေ့-အရှေ့တောင်ဘက် (၆)မိုင်ခန့်အကွာ)၊ မြောက်လတ္တီတွဒ် (၂၁.၇၈) ဒီဂရီ၊ အရှေ့လောင်ဂျီတွဒ် (၉၆.၀၆)ဒီဂရီ၊ အနက် (၁၂)ကီလိုမီတာကို ဗဟိုပြု၍ အင်အား ရစ်(ခ်)တာစကေး (၃.၁)အဆင့်ရှိ အင်အားအနည်းငယ်ရှိသော မြေငလျင်တစ်ခု လှုပ်ရှားသွားကြောင်း တိုင်းထွာရရှိပါသည်။
       """,

      imageURL: "assets/weather/w8.png",
      postTime: DateTime(2022, 12, 19),
      reacts: 158,
      views: 465,
      comments: _comments,
    ),



  ];

}

