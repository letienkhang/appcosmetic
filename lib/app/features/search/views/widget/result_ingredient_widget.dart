import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../../../data/share/colors.dart';
import '../../../../../data/share/dimes.dart';
import '../../../../../data/share/text_theme.dart';

class ResultIngredient extends StatelessWidget {
  const ResultIngredient({Key? key, this.total, this.totalResult, required this.dataMap})
      : super(key: key);
  final int? total;
  final int? totalResult;
  final Map<String, double> dataMap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: Dimens.spacing8,
          left: Dimens.spacing8,
          right: Dimens.spacing8,
          bottom: Dimens.spacing8),
      decoration: BoxDecoration(
        border:
            Border.all(color: KanColors.primaryColor, width: Dimens.spacing1),
        borderRadius: const BorderRadius.all(Radius.circular(Dimens.spacing10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Tổng các chất:",
                  style: textTheme(context).text14Bold.colorPrimaryBlack,
                ),
                TextSpan(
                  text: " $total",
                  style: textTheme(context).text14Bold.colorPrimary,
                ),
                TextSpan(
                  text: "  Kết quả tìm được: ",
                  style: textTheme(context).text14Bold.colorPrimaryBlack,
                ),
                TextSpan(
                  text: " $totalResult",
                  style: textTheme(context).text14Bold.colorPrimary,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.spacing7,
          ),
          Text(
            "Nhìn chung trong sản phẩm: ",
            style: textTheme(context).text14Bold.colorPrimaryBlack,
          ),
          pieChart(context),
        ],
      ),
    );
  }

  pieChart(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      chartRadius: MediaQuery.of(context).size.width / 6.0,
      colorList: KanColors.colorList,
      chartType: ChartType.disc,
      animationDuration: const Duration(milliseconds: 800),
      legendOptions: const LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: true,
        decimalPlaces: 1,
      ),
    );
  }
}
