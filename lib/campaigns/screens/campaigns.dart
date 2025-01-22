import 'package:flutter/material.dart';
import 'package:sales_app/campaigns/components/campaign_card.dart';
import 'package:sales_app/campaigns/models/campaign.dart';

class CampaignsScreen extends StatelessWidget {
  const CampaignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampaniyalar'),
      ),
      body: ListView.builder(
        itemCount: campaigns.length,
        itemBuilder: (ctx, index) {
          return CampaignCard(campaign: campaigns[index]);
        },
      ),
    );
  }
}

final campaigns = [
  Campaign(
    id: '1',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/4e9ed69bd186473896dab372cbeacd82_04086434-2ec0-49fc-897a-74c6b9e1369b_1000x.jpg?v=1693473206',
    price: '18.80',
    date: '2025.01.29',
    name: 'SELPAK MƏTBƏX KAĞIZI 8 LI DELUXE',
  ),
  Campaign(
      id: '2',
      imageUrl:
          'https://bazarstore.az/cdn/shop/files/f66a2dbf06a124880424f6e5e872c45d_1000x.jpg?v=1725524981',
      price: '18.80',
      date: '2025.03.15',
      name: 'SUN BAKERY BÖRƏK QİYMƏLİ'),
  Campaign(
    id: '3',
    name: 'SUN BAKERY AÇMA D/Q',
    price: '0.79',
    date: '2025.12.31',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30157304_ed06b656-9ebf-4d81-bf97-528980f633cd_1000x.png?v=1693772767',
  ),
  Campaign(
    id: '4',
    name: 'SUN BAKERY TƏNDİR ÇÖRƏYİ',
    price: '0.85',
    date: '2025.12.01',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30157273_eb1123b2-20bb-4f3d-94b8-4387406f06dd_1000x.png?v=1693402219',
  ),
  Campaign(
    id: '5',
    name: 'YEDOY SAC LAVAŞI',
    price: '0.80',
    date: '2025.12.01',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30073469_3f60b8d4-01fc-49b4-b4f8-bd108d555480_1000x.jpg?v=1693562880',
  ),
  Campaign(
    id: '6',
    name: 'SUN BAKERY BATON ÇÖRƏYİ KÜNCÜTLÜ',
    price: '0.99',
    date: '2025.12.01',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30157259_1000x.jpg?v=1693731417',
  ),
  Campaign(
    id: '7',
    name: 'SUN BAKERY BULKA CEMLİ D/Q',
    price: '0.65',
    date: '2025.12.01',
    imageUrl:
        'https://bazarstore.az/cdn/shop/products/30157319_e6bbee66-e369-409f-ab40-ad925a2986c9_1000x.jpg?v=1693590304',
  ),
];
