import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  const InternetExceptionWidget({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .15,
        ),
        const Icon(
          Icons.cloud_off,
          color: Colors.red,
          size: 50,
        ),
        Text(
          "We're unable to show results.\nPlease check your data\nconnection",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 20,
              ),
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(
            'Retry',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
