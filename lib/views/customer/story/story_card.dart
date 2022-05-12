import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 1.0),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    Text(
                      "12/05/2022",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                color: Colors.green,
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Valor da viagem:",
                      style: TextStyle(
                          color: Colors.grey[700],
                          //fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    Text(
                      "AOA 1000",
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Distância:",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Text(
                      "100 km",
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Origem:",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Text(
                      "Multiperfil",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Destino:",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Text(
                      "Aeroporto 4 de Fevereiro",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Operação:",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Concluída",
                            style: TextStyle(fontSize: 18, color: Colors.green),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.check_box,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                color: Colors.green,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Dados da viatura",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Motorista",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Text(
                      "Domingos Adão da Silva Neto",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Telefone",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Text(
                      "923 456 789",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modelo do carro",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Text(
                      "Kia Soul",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Matricula",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Text(
                      "LD-45-76-HG",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Duração",
                        style: TextStyle(
                            color: Colors.grey[700],
                            //fontWeight: FontWeight.bold,
                            fontSize: 19)),
                    Text(
                      "2h:40m",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
