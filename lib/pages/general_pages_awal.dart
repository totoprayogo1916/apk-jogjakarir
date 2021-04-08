part of "pages.dart";

class GeneralPageAwal extends StatelessWidget {
  final String title;
  final String teks1;
  final String teks2;
  final Function onBackButtonPressed;
  final Widget child;

  final Color backColor;

  GeneralPageAwal(
      {this.onBackButtonPressed,
      this.title = "title",
      this.child,
      this.backColor,
      this.teks1,
      this.teks2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
          child: ListView(
            // shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: [
              Column(
                children: [
                  Container(
                    // height: MediaQuery.of(context).size.height * 9,
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          title,
                          style: blackFontStyle.copyWith(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          child: Container(
                            width: 25,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/plus.png"))),
                          ),
                        )
                      ],
                    ),
                  ),
                  child ?? Container(),
                ],
              ),
              Container(
                      height: MediaQuery.of(context).size.height * 0.119,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            teks1,
                            style: TextStyle(fontSize: 12),
                          ),
                          // Text("Belum memiliki akun ? "),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                teks2,
                                // Text(
                                //   "Daftar sekarang",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: greyColor3,
                                    fontSize: 12),
                              ))
                        ],
                      )) ??
                  Container(),
            ],
          ),
        ),
      ],
    ));
  }
}