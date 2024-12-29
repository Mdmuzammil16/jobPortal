import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final double? maxHeight;
  final Color? color;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.fill,
    this.width,
    this.height,
    this.color,
    this.maxHeight
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: fit,
          width: width,
          height: height,
          color: color,
          cacheKey: imageUrl,
          // progressIndicatorBuilder: (context,url,loadingProgress) => Center(child:  FadeShimmer(
          //   height:height??0,
          //   width: width??0,
          //   radius: 400,
          //   millisecondsDelay: 300,
          //   highlightColor: Colors.grey.shade200,
          //   baseColor: Colors.white,
          // ),),

          // progressIndicatorBuilder: (context, url, loadingProgress) => Center(
          //     child: CircularProgressIndicator(
          //       color: CustomColors.secondary,
          //       backgroundColor: CustomColors.primary,
          //       value: loadingProgress.progress,
          //     )),
          errorWidget: (context, url, error) => Image.asset('assets/images/example.png')
      ),
    );
  }
}