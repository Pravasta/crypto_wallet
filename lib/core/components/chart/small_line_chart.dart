import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SmallLineChart extends StatefulWidget {
  const SmallLineChart({super.key});

  @override
  State<SmallLineChart> createState() => _SmallLineChartState();
}

class _SmallLineChartState extends State<SmallLineChart> {
  @override
  Widget build(BuildContext context) {
    final List<_ChartData> chartData = [
      _ChartData(1, 50),
      _ChartData(2, -80),
      _ChartData(3, 120),
      _ChartData(4, -150),
      _ChartData(5, 200),
      _ChartData(6, -180),
      _ChartData(7, 160),
      _ChartData(8, -140),
      _ChartData(9, 130),
      _ChartData(10, -200),
      _ChartData(11, 180),
      _ChartData(12, -170),
      _ChartData(13, 140),
      _ChartData(14, -120),
      _ChartData(15, 100),
      _ChartData(16, -90),
      _ChartData(17, 80),
      _ChartData(18, -60),
      _ChartData(19, 600),
      _ChartData(20, -30),
    ];

    return Center(
      child: SizedBox(
        height: 40,
        child: SfCartesianChart(
          margin: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          primaryXAxis: NumericAxis(
            isVisible: false, // Sembunyikan sumbu X
            borderWidth: 0, // Hapus border X
            majorGridLines: MajorGridLines(width: 0), // Hapus garis grid X
            minorGridLines: MinorGridLines(width: 0),
            majorTickLines: MajorTickLines(size: 0), // Hapus tick X
            minorTickLines: MinorTickLines(size: 0),
          ),
          primaryYAxis: NumericAxis(
            isVisible: false, // Sembunyikan sumbu Y
            borderWidth: 0, // Hapus border Y
            majorGridLines: MajorGridLines(width: 0), // Hapus garis grid Y
            minorGridLines: MinorGridLines(width: 0),
            majorTickLines: MajorTickLines(size: 0), // Hapus tick Y
            minorTickLines: MinorTickLines(size: 0),
          ),
          plotAreaBorderWidth: 0,
          series: <CartesianSeries>[
            // Renders line chart
            LineSeries<_ChartData, int>(
              dataSource: chartData,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
            )
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);
  final int x;
  final double y;
}
