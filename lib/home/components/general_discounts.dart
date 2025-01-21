import 'package:flutter/material.dart';
import 'package:sales_app/discounts/models/discount.dart';

import '../../discountItems/screens/discount_items.dart';

class GeneralDiscounts extends StatelessWidget {
  const GeneralDiscounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: generalDiscounts,
        ),
      ),
    );
  }
}

class GeneralDiscountsCard extends StatelessWidget {
  const GeneralDiscountsCard({
    super.key,
    required this.discount,
  });

  final Discount discount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => DiscountItemsScreen(discount: discount),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: SizedBox(
          width: 150,
          height: 150,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      discount.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 3),
                        child: Text(
                          discount.categoryName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '${discount.price} ₼',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final generalDiscounts = [
  GeneralDiscountsCard(
    discount: Discount(
      id: '1',
      categoryName: 'Deniz mehsullari',
      price: '22.75',
      imageUrl:
          'https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Baked-seabass-ec17e28.jpg',
    ),
  ),
  GeneralDiscountsCard(
    discount: Discount(
      id: '2',
      categoryName: 'Un memulatlari',
      price: '8.29',
      imageUrl:
          'https://c8.alamy.com/comp/2E320GH/homemade-and-freshly-made-pasta-maltagliati-traditional-italian-food-cooking-concept-top-view-2E320GH.jpg',
    ),
  ),
  GeneralDiscountsCard(
    discount: Discount(
      id: '3',
      categoryName: 'Cay mehsullari',
      price: '16.00',
      imageUrl:
          'https://ceylongreenroots.com/wp-content/uploads/2021/08/black_tea.png',
    ),
  ),
];
