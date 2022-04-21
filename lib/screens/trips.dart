import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/screens/timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/center_frame.dart';

class TripsPage extends ConsumerWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(userTrips);
    return data.map(
      data: (data) {
        return Scaffold(
          body: CenterFrame(
            CustomScrollView(
              slivers: [
                const SliverAppBar(
                  expandedHeight: 150,
                  title: Text('Trips'),
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (bc, idx) {
                      if (data.value.isEmpty) {
                        return const Center(child: Text('Trips you add will show up here.'));
                      }
                      final text = 'Destination #$idx';
                      final img = const [
                        'https://upload.wikimedia.org/wikipedia/commons/a/a5/Front_left_views_of_the_Arc_de_Triomphe%2C_Paris_21_October_2010.jpg',
                        'https://case.edu/assessment/sites/case.edu.assessment/files/styles/subfeature_705x528_/public/2018-01/CWRU-Aerial-View-Main-Quad-Subfeature-1.jpg?h=cd577c89&itok=E0fcKit5',
                        'https://image.cnbcfm.com/api/v1/image/106936180-1630511993739-gettyimages-1234486065-PWeaver-Milton-210804-04.jpeg?v=1630512088'
                      ][idx % 3];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                            return TimelinePage(data.value[idx]);
                          }));
                        },
                        child: Card(
                          child: Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 3,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(img),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Text(
                                    text,
                                    style: const TextStyle(
                                      backgroundColor: Color(0x8d000000),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: data.value.isEmpty ? 1 : data.value.length,
                  ),
                )
              ],
            ),
          ),
        );
      },
      error: (_) => const Text('Error'),
      loading: (_) => const CircularProgressIndicator(),
    );
  }
}
