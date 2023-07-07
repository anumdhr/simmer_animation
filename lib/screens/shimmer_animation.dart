import 'package:flutter/material.dart';

import '../models/sunscreen_model.dart';
import '../widgets/shimmer_widgets.dart';

class ShimmerAnimation extends StatefulWidget {
  const ShimmerAnimation({super.key});

  @override
  State<ShimmerAnimation> createState() => _ShimmerAnimationState();
}

class _ShimmerAnimationState extends State<ShimmerAnimation> {
 bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  Future loadData() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 2),() {

    },);
    sunScreen.toList();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildShimmerEffect() {
      return ListTile(
        leading: ShimmerWidget.circular(
          height: 64,
          width: 64,
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: ShimmerWidget.rectangular(height: 16,
            width: MediaQuery.of(context).size.width * 0.3,
          ),
        ),
        subtitle: ShimmerWidget.rectangular(height: 14),
      );
    }
    Widget buildSunscreen(SunScreen cream){
      return ListTile(
        leading: CircleAvatar(
          radius: 32,
            backgroundImage: AssetImage(cream.urlImage),

        ),
        title: Text(cream.title,
          style: TextStyle(fontSize: 16),
        ),
        subtitle: Text(cream.description,
          style: TextStyle(fontSize: 14),
          maxLines: 1,
        ),

      );

    }


    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer Effects"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: loadData, icon: Icon(Icons.refresh))
        ],
      ),
      body: ListView.builder(
        itemCount: isLoading ? 5 : sunScreen.length,
        itemBuilder: (context, index) {
          if (isLoading) {
            return buildShimmerEffect();
          }
          else {
            final cream = sunScreen[index];
            return buildSunscreen(cream);
          }
        })
    );
  }
}
