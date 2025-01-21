import 'package:flutter/material.dart';
import 'package:sales_app/discountItems/models/discount_item.dart';
import 'package:sales_app/discounts/models/discount.dart';

import '../components/discount_item_card.dart';

class DiscountItemsScreen extends StatelessWidget {
  const DiscountItemsScreen({
    super.key,
    required this.discount,
  });

  final Discount discount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          discount.categoryName,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 4),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(discountItems.length, (index) {
            return DiscountItemCard(
              discountItem: discountItems[index],
            );
          }),
        ),
      ),
    );
  }
}

final discountItems = [
  DiscountItem(
    id: '1',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/10001516_72e5fb04-cca4-40ee-b39a-2ad6dc367cdd_1000x.jpg?v=1693549971',
    itemName: 'AZERCAY BUKET ÇAY 50 Q 25 TB',
    price: '2.10', //₼
  ),
  DiscountItem(
    id: '2',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30089787_1000x.jpg?v=1693623473',
    itemName: 'SANTA BREMOR DƏNİZ KƏLƏMİ 140 Q TURŞU',
    price: '2.19', //₼
  ),
  DiscountItem(
    id: '3',
    imageUrl:
        'https://bazarstore.az/cdn/shop/files/c7637f8afa9f70ca0422f500de111384_8e348a3a-7778-4472-af1b-976a19c188f3_1000x.webp?v=1734672800',
    itemName: 'BELIY VOLK ARAQ 1 L',
    price: '16.50', //₼
  ),
  DiscountItem(
    id: '4',
    imageUrl:
        'https://bazarstore.az/cdn/shop/files/0ccaad1f464e0e79dbf2ba501939c1c8_1000x.jpg?v=1725520221',
    itemName: 'MANDARİN TÜRKİYƏ KQ',
    price: '4.25', //₼
  ),
  DiscountItem(
    id: '5',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30071558_35bf5f82-bcb3-46a2-b6f7-542d20fa317d_1000x.jpg?v=1693621923',
    itemName: 'ARMUD MEŞƏ GÖZƏLİ KQ',
    price: '3.29', //₼
  ),
  DiscountItem(
    id: '6',
    itemName: 'GÖZƏL TƏBİƏT CHERRY POMİDOR KQ',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30049527_1000x.jpg?v=1693807622',
    price: '14.60',
  ),
  DiscountItem(
    id: '7',
    itemName: 'AZƏRSÜD QAYMAQ 200 Q 26%',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/10001896_99031494-3b4d-467c-be37-16342be4ff5e_1000x.jpg?v=1693375893',
    price: '2.49',
  ),
  DiscountItem(
    id: '8',
    itemName: 'ROMAŞKA XAMA 180 Q 25%',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30013261_1000x.jpg?v=1693553189',
    price: '2.99',
  ),
  DiscountItem(
    id: '9',
    itemName: 'ZOLOTOE SOLNISKO GÜNƏBAXAN YAĞI 2 L',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/10001533_1000x.jpg?v=1693549978',
    price: '8.75',
  ),
  DiscountItem(
    id: '10',
    itemName: 'BOL ƏT QUZU BEL ƏTİ KQ',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30036724_da0b31b2-991d-477e-8822-aa4a8733aea6_1000x.jpg?v=1693738724',
    price: '19.48',
  ),
];
