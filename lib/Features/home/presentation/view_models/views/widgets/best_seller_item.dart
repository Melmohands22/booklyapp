import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:booklyapp/constans.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.height * .030,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height * .010,
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AssetsDataa.testImage,
                      ),
                    )),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .060,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                        'Harry Poter Poter Poter Poter Harry Poter Poter Poter Poter',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .0016,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .0020,
                  ),
                  Row(
                    children: [
                      Text('19.99 \ €',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold)),
                      const Spacer(),
                      const BookRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
