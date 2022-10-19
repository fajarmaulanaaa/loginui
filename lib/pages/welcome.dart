part of 'pages.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.all(16.16),
          children: [
            Image.asset(
              'assets/images/logo-emkay.png',
              height: 300,
              width: 150,
              //  fit: BoxFit.fill,
            ),
            SizedBox(height: 5),
            Text(
              'Welcome to Emkay Store',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff5e3a10),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'lemon'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'A good place to start yout Stop Smoking',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff000000)),
            ),
            Text(
              'Platform digital untuk mempermudah kamu untuk mendapatkan sensasi kenikmatan merokok tanpa rokok.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff000000)),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.brown)),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('aplikasi ini belum jadi :D')));
                },
                child: const Text('Sign Now')),
          ],
        ),
      ),
    );
  }
}
