import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipesapp/models/recipe.dart';

class PopularRecipeList extends StatefulWidget {
  const PopularRecipeList({Key? key}) : super(key: key);

  @override
  State<PopularRecipeList> createState() => _PopularRecipeListState();
}

class _PopularRecipeListState extends State<PopularRecipeList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recipes.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 98,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.transparent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 53.43,
                        width: 73,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/${recipes[index].recipeImage}',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18.56,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              recipes[index].recipeName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF0E0E2D),
                              ),
                            ),
                            Text(
                              '${recipes[index].recipeMaker}\'s recipe',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF9A9DB0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Text(
                        recipes[index].recipeMaker[0],
                        style: TextStyle(color: recipes[index].startColor),
                      ),
                      backgroundColor: recipes[index].endColor,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/icon-share-grey.svg'),
                        const SizedBox(
                          width: 7.65,
                        ),
                        SvgPicture.asset('assets/svg/icon-bookmark-grey.svg'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
