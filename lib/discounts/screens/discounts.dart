import 'package:flutter/material.dart';
import 'package:sales_app/discounts/components/discount_card.dart';
import 'package:sales_app/discounts/models/discount.dart';

class DiscountsScreen extends StatelessWidget {
  const DiscountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Endirimler'),
      ),
      body: ListView.builder(
        itemCount: discounts.length,
        itemBuilder: (ctx, index) {
          return DiscountCard(discount: discounts[index]);
        },
      ),
    );
  }
}

final discounts = [
  Discount(
    id: '1',
    imageUrl:
        'https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Baked-seabass-ec17e28.jpg',
    categoryName: 'Deniz mehsullari',
    price: '12.75',
  ),
  Discount(
    id: '2',
    imageUrl:
        'https://c8.alamy.com/comp/2E320GH/homemade-and-freshly-made-pasta-maltagliati-traditional-italian-food-cooking-concept-top-view-2E320GH.jpg',
    categoryName: 'Un mehsullari',
    price: '56.00',
  ),
  Discount(
    id: '3',
    imageUrl:
        'https://ceylongreenroots.com/wp-content/uploads/2021/08/black_tea.png',
    categoryName: 'Cay mehsullari',
    price: '8.96',
  ),
  Discount(
    id: '4',
    imageUrl:
        'https://www.theauric.com/cdn/shop/articles/front-view-fresh-fruit-cocktails-with-fresh-fruit-slices-ice-cooling-blue-drink-juice-cocktail-fruit-color_1500x.jpg?v=1648460284',
    categoryName: 'Ickiler',
    price: '16.5',
  ),
];
