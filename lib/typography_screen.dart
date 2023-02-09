import 'package:flutter/material.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[

            TextStyleExample(
                name: "Display Large", style: textTheme.displayLarge!.copyWith(fontFamily: "Royale")),
            TextStyleExample(
                name: "Display Medium", style: textTheme.displayMedium!.copyWith(fontFamily: "Royale")),
            TextStyleExample(
                name: "Display Small", style: textTheme.displaySmall!),

            TextStyleExample(
                name: "Headline Large", style: textTheme.headlineLarge!),
            TextStyleExample(
                name: "Headline Medium", style: textTheme.headlineMedium!),
            TextStyleExample(
                name: "Headline Small", style: textTheme.headlineSmall!),

            TextStyleExample(name: "Title Large", style: textTheme.titleLarge!),
            TextStyleExample(name: "Title Medium", style: textTheme.titleMedium!),
            TextStyleExample(name: "Title Small", style: textTheme.titleSmall!),

            TextStyleExample(name: "Label Large", style: textTheme.labelLarge!),
            TextStyleExample(name: "Label Medium", style: textTheme.labelMedium!),
            TextStyleExample(name: "Label Small", style: textTheme.labelSmall!),

            TextStyleExample(name: "Body Large", style: textTheme.bodyLarge!),
            TextStyleExample(name: "Body Medium", style: textTheme.bodyMedium!),
            TextStyleExample(name: "Body Small", style: textTheme.bodySmall!),


            /* Gradient sample */
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [Color(0xFF8E2DE2), Color(0xFF4A00E0)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: const Text("Gradient text", style: TextStyle(fontSize: 40, color: Colors.white),textAlign: TextAlign.center,),
            ),
            //https://www.boltuix.com/2022/07/gradient-colors.html


          ],
        ),
      ),
    );
  }
}

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name, style: style.copyWith(letterSpacing: 1.0)),
    );
  }
}
