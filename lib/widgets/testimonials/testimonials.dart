import 'package:flutter/material.dart';	  
import 'package:responsive_builder/responsive_builder.dart';
import 'package:real_state/widgets/testimonials/views/testimonials_mobile.dart';
import 'package:real_state/widgets/testimonials/views/testimonials_tablet.dart';
import 'package:real_state/widgets/testimonials/views/testimonials_desktop.dart';
	  
class Testimonials extends StatelessWidget {
	const Testimonials({super.key});
	  
	@override
	Widget build(BuildContext context) {
	  return ScreenTypeLayout.builder(
		  mobile: (context) => const TestimonialsMobile(),
		  tablet: (context) => const TestimonialsTablet(),
		  desktop: (context) => const TestimonialsDesktop(),
	  );
	}
}