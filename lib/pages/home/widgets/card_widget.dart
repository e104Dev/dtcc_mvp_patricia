import 'package:flutter/material.dart';

class MvpCard extends StatelessWidget {
  const MvpCard({
    Key? key,
    this.numero,
    this.banda,
  }) : super(key: key);

  final int? numero;
  final String? banda;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 300,
          // height: MediaQuery.of(context).size.height / 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(banda ?? ''),
                  ),
                ),
              ),
              ListTile(
                title: Text('Banda $numero'),
                subtitle: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'São Paulo,  ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '22/12/2022 - '),
                      TextSpan(
                        text: '18hs',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque diam ligula, sodales vitae lorem vitae, feugiat blandit eros. Suspendisse viverra, massa efficitur eleifend consequat, tellus libero molestie est, in pharetra erat diam eget est. ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.info),
                  label: const Text('INFO'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
