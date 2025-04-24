import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderRowWidget extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const SliderRowWidget({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'JustAnotherHand',
              fontSize: 0.11.sh,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.black,
              inactiveTrackColor: Colors.black26,
              thumbColor: Colors.white,
              overlayColor: Colors.white.withOpacity(0.3),
            ),
            child: Slider(value: value, min: 0, max: 100, onChanged: onChanged),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          value.toInt().toString(),
          style: TextStyle(fontSize: 15.sp, fontFamily: 'JustAnotherHand'),
        ),
      ],
    );
  }
}
