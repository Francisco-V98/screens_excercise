import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/widgets.dart';

class CirclePeopleAdd extends StatelessWidget {
  const CirclePeopleAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 228, 231, 240),
            ),
            child: Icon(
              Icons.add,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          const Text('Agregar'),
        ],
      ),
    );
  }
}

class CirclePeopleInicial extends StatelessWidget {
  final String inicial;
  final String name;
  const CirclePeopleInicial({
    super.key,
    required this.name,
    required this.inicial,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: const Alignment(0, 0),
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 119, 147, 229),
                ),
                child: Text(
                  inicial,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: FlagCircleIcon(),
              ),
            ],
          ),
          Text(name),
        ],
      ),
    );
  }
}

class CirclePeoplePhoto extends StatelessWidget {
  final String name;
  final String image;

  const CirclePeoplePhoto({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 119, 147, 229),
                ),
                child: ClipOval(
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: FlagCircleIcon(),
              ),
            ],
          ),
          Text(name),
        ],
      ),
    );
  }
}
