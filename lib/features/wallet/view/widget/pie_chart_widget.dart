import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:crypto_wallet/features/wallet/model/wallet_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  late List<_ChartData> data;
  late TooltipBehavior tooltip;
  bool isObsecure = false;

  @override
  void initState() {
    data = WalletModel.listAssets
        .map(
          (e) => _ChartData(e['name'], e['percentage'], e['color']),
        )
        .toList();
    tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceWidth,
      height: context.deviceHeight * 1 / 3,
      child: Stack(
        children: [
          SfCircularChart(
            series: <CircularSeries>[
              DoughnutSeries<_ChartData, String>(
                enableTooltip: true,
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                pointColorMapper: (_ChartData data, index) => data.color,
                innerRadius: '80%',
                cornerStyle: CornerStyle.bothFlat,
                legendIconType: LegendIconType.diamond,
              ),
            ],
          ),
          StatefulBuilder(
            builder: (context, setState) {
              return Center(
                child: Column(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(
                          () => isObsecure = !isObsecure,
                        );
                      },
                      child: Icon(
                        isObsecure
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColors.greyColor,
                      ),
                    ),
                    Text(
                      'My Balance',
                      style:
                          AppText.text16.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      isObsecure ? '********' : '\$2,760.23',
                      style:
                          AppText.text16.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      isObsecure ? '********' : '+2.60%',
                      style: AppText.text16.copyWith(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
