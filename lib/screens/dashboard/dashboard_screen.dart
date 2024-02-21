import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            GradientBackground(),
            _AppBarDashboard(),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 80, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Amount(),
                  _GroupBoxContainers(),
                  _GroupCirclePeople(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottonNavBar(),
    );
  }
}

class _AppBarDashboard extends StatelessWidget {
  const _AppBarDashboard();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        'Hola Francisco,',
        style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
          color: Colors.black.withOpacity(0.5),
        ),
      ],
    );
  }
}

class _Amount extends StatelessWidget {
  const _Amount();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bs 1,234.00',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
            ),
          ),
          _SelectCountry(),
        ],
      ),
    );
  }
}

class _SelectCountry extends StatelessWidget {
  const _SelectCountry();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const FlagCircleIcon(),
          // const DropdownPrueba(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'VZLA',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.black.withOpacity(0.5),
            size: 20,
          ),
        ],
      ),
    );
  }
}

// class DropdownPrueba extends StatelessWidget {
//   const DropdownPrueba({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton(
//       // underline: 0,
//       hint: const Row(
//         children: [
//           FlagCircleIcon(),
//           SizedBox(width: 12),
//           Text('VZLA'),
//         ],
//       ),
//       icon: const Icon(Icons.arrow_drop_down),
//       items: const [],
//       onChanged: (value) => value,
//     );
//   }
// }

class _GroupBoxContainers extends StatelessWidget {
  const _GroupBoxContainers();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubtitleSection(
            text: 'Aqui hay algunas cosas que puedes hacer',
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              BoxContainer(
                color: Color.fromARGB(255, 246, 244, 255),
                icon: Icons.north_east,
                title: 'pagarle a alguien',
                description: 'A billetera, banco o número de móvil',
              ),
              SizedBox(width: 16),
              BoxContainer(
                color: Color.fromARGB(255, 217, 233, 220),
                icon: Icons.south_west,
                title: 'Pedir dinero',
                description: 'Solicitar dinero a los usuarios de Fabtory',
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              BoxContainer(
                color: Color.fromARGB(255, 255, 248, 243),
                icon: Icons.account_balance_wallet_outlined,
                title: 'Comprar USDT',
                description: 'Cambia tus bolivares a dolares',
              ),
              SizedBox(width: 16),
              BoxContainer(
                color: Color.fromARGB(255, 244, 244, 244),
                icon: Icons.receipt_long_rounded,
                title: 'Pagar la factura',
                description: 'Cero porcentaje de comisiones',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _GroupCirclePeople extends StatelessWidget {
  const _GroupCirclePeople();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubtitleSection(text: 'Tus Personas Favoritas'),
          SizedBox(height: 16),
          Row(
            children: [
              CirclePeopleAdd(),
              CirclePeoplePhoto(
                name: 'Ernesto C.',
                image: 'assets/image/ernesto.jpg',
              ),
              CirclePeopleInicial(
                name: 'Victor R.',
                inicial: 'VR',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
