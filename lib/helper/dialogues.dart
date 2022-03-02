import 'package:flutter/material.dart';
import 'package:uenda/helper/constants.dart';

Future<dynamic> registerErrorDialogue({
  hasError = false,
  isProcessing = false,
  isWarning: false,
  message,
  @required context,
}) {
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
          child: Container(
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0, left: 5.0, right: 5.0),
                child: ListBody(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            child: Icon(
                          Icons.error,
                          size: 60,
                          color: (isWarning) ? Colors.grey : Colors.red,
                        )),
                        SizedBox(height: 20),
                        Container(
                          child: Text("$message"),
                        ),
                        SizedBox(height: 30)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

Future<dynamic> registerProcessingDialog(context) {
  return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      pageBuilder: (context, animation1, animation2) {
        return Container();
      },
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
          child: Center(
            child: Opacity(
              opacity: a1.value,
              child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: simpleBackgroundContainerColor,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(8),
                    color: simpleBackgroundContainerColor,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            width: 60,
                            height: 60,
                            child: CircularProgressIndicator(
                              backgroundColor: mainColorGreen,
                              strokeWidth: 6,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        );
      });
}

Future<dynamic> _showDialogSellStatus(context) {
  return showGeneralDialog(
      context: context,
      barrierDismissible: false,
      pageBuilder: (context, animation1, animation2) {
        return Container();
      },
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
          child: Center(
            child: Opacity(
              opacity: a1.value,
              child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Center(
                            child: SingleChildScrollView(
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.check_circle_outline,
                                      color: mainColorGreen,
                                      size: 70,
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      child: Text(
                                          "Sua compra foi efectuada com sucesso!"),
                                    ),
                                    Container(
                                      child: Text(
                                        "Seu código para recepção é:",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(child: Text("....")),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        );
      });
}
