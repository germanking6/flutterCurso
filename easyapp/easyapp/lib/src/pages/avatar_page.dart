import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.black,
              )),
          Container(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fbjx1-1.fna.fbcdn.net/v/t1.6435-9/84321040_3277866672242832_7507033694406705152_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHIvbcrKriFxJ4kc4UN0-r7PPL7ST_8mVE88vtJP_yZUQ_GSbXqWt1uOrX3-jx7ygKRHtC4bs743izuOBycUnAd&_nc_ohc=BG-pVn5YQrkAX9LctN_&_nc_ht=scontent.fbjx1-1.fna&oh=9fc32cc15d91a5000cf71c25c1c05741&oe=60E64099'),
                radius: 20,
              )),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://scontent.fbjx1-1.fna.fbcdn.net/v/t1.6435-9/84321040_3277866672242832_7507033694406705152_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHIvbcrKriFxJ4kc4UN0-r7PPL7ST_8mVE88vtJP_yZUQ_GSbXqWt1uOrX3-jx7ygKRHtC4bs743izuOBycUnAd&_nc_ohc=BG-pVn5YQrkAX9LctN_&_nc_ht=scontent.fbjx1-1.fna&oh=9fc32cc15d91a5000cf71c25c1c05741&oe=60E64099'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
