import 'package:flutter/material.dart';
import 'package:otex_app_task/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_card.dart';

class ProductsGridView extends StatelessWidget {
  final HomeCubit homeCubit;
  const ProductsGridView({super.key, required this.homeCubit});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 48) / 2;
    final cardHeight = cardWidth * 2.25; // Adjusted to fit new image height
    final aspectRatio = cardWidth / cardHeight;
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) => ProductCard(
        image: homeCubit.products[index].imageUrl!,
        productName: homeCubit.products[index].name,
        currentPrice: homeCubit.products[index].price.toString(),
        previousPrice: homeCubit.products[index].oldPrice.toString(),
        salesNumber: homeCubit.products[index].salesNumber.toString(),
        isFavourite: homeCubit.products[index].isFavorite,

      ),
      itemCount: homeCubit.products.length,
    );
  }
}
