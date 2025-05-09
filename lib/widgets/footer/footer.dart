import 'package:flutter/material.dart';
import 'package:real_state/utils/responsive_builder.dart';	  
import 'package:real_state/widgets/footer/views/footer_mobile.dart';
import 'package:real_state/widgets/footer/views/footer_tablet.dart';
import 'package:real_state/widgets/footer/views/footer_desktop.dart';
	  
class Footer extends StatelessWidget {
	const Footer({super.key});
	  
	@override
	Widget build(BuildContext context) {
	  return ScreenTypeLayout.builder(
		  mobile: (context) => const FooterMobile(),
		  tablet: (context) => const FooterTablet(),
		  desktop: (context) => const FooterDesktop(),
	  );
	}
}