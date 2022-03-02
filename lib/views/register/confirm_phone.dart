import 'package:flutter/material.dart';
import 'package:uenda/views/register/personal_data.dart';
import 'package:uenda/views/welcome/welcome_third.dart';

class ConfirmPhone extends StatelessWidget {
  const ConfirmPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, bottom: 25, right: 15, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("Digite o código enviado para o seu telemóvel",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                //color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: "Código de confirmação",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                  child: Container(
                    child: Text(
                        "Ao continuar , você poderá receber um SMS para confirmação. Pode haver cobrança de taxas de envio de mensagens e dados",
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("Pressed");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonalData()),
                  );
                },
                child: Container(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xff1a9249),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text("Confirmar",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
