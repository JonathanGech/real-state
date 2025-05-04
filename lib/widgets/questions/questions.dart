import 'package:flutter/material.dart';	  
import 'package:responsive_builder/responsive_builder.dart';
import 'package:real_state/widgets/questions/views/questions_mobile.dart';
import 'package:real_state/widgets/questions/views/questions_tablet.dart';
import 'package:real_state/widgets/questions/views/questions_desktop.dart';
	  
class Questions extends StatelessWidget {
	const Questions({super.key});
	  
	@override
	Widget build(BuildContext context) {
	  return ScreenTypeLayout.builder(
		  mobile: (context) => const QuestionsMobile(),
		  tablet: (context) => const QuestionsTablet(),
		  desktop: (context) => const QuestionsDesktop(),
	  );
	}
}