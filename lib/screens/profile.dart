import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 150,
            title: Text('Profile'),
            backgroundColor: Colors.green,
            pinned: true,
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (bc, idx) {
                final text = 'Destination #$idx';
                final img = const [
                  'https://upload.wikimedia.org/wikipedia/commons/a/a5/Front_left_views_of_the_Arc_de_Triomphe%2C_Paris_21_October_2010.jpg',
                  'https://case.edu/assessment/sites/case.edu.assessment/files/styles/subfeature_705x528_/public/2018-01/CWRU-Aerial-View-Main-Quad-Subfeature-1.jpg?h=cd577c89&itok=E0fcKit5',
                  'https://image.cnbcfm.com/api/v1/image/106936180-1630511993739-gettyimages-1234486065-PWeaver-Milton-210804-04.jpeg?v=1630512088'
                ][idx % 3];
                return Container(
                  child: Text(text),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              childCount: 25,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
            ),
          )
        ],
      ),
    );
  }
}
