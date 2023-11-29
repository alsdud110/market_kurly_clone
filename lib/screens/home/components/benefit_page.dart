import 'package:flutter/material.dart';
import 'package:flutter_kurly/models/benefit_banner.dart';
import 'package:flutter_kurly/theme.dart';

class BenefitPage extends StatefulWidget {
  const BenefitPage({super.key});

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(milliseconds: 1000));
      },
      child: ListView.builder(
        itemCount: benefitBannerList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              padding: const EdgeInsets.only(left: 22),
              height: 140,
              color: Color(0xeff4e4da * (index + 1)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        "${benefitBannerList[index].title}",
                        style: textTheme().bodyMedium,
                      ),
                      Text(
                        "${benefitBannerList[index].benefit}",
                        style: textTheme()
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 115,
                    height: 120,
                    child: Image.asset(
                      benefitBannerList[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
