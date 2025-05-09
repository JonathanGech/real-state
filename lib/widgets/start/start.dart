import 'package:flutter/material.dart';
import 'package:real_state/utils/responsive_builder.dart';	  
import 'package:real_state/widgets/start/views/start_mobile.dart';
import 'package:real_state/widgets/start/views/start_tablet.dart';
import 'package:real_state/widgets/start/views/start_desktop.dart';
	  
class Start extends StatelessWidget {
	const Start({super.key});
	  
	@override
	Widget build(BuildContext context) {
	  return ScreenTypeLayout.builder(
		  mobile: (context) => const StartMobile(),
		  tablet: (context) => const StartTablet(),
		  desktop: (context) => const StartDesktop(),
	  );
	}
}