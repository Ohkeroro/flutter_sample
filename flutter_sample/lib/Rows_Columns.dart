import 'package:flutter/material.dart';

class RowsColumns extends StatelessWidget {
  const RowsColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
          ],
        ),
      ),
      
    );
  }
}

class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
          ],
        ),
      ),
      
    );
  }
}

class centerRow extends StatelessWidget {
  const centerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
          ],
        ),
      ),
      
    );
  }
}

class centercolumn extends StatelessWidget {
  const centercolumn(Icon icon, Icon icon1, Icon icon2, Icon icon3, Icon icon4, Text text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
          ],
        ),
      ),
      
    );
  }
}

class RowRight extends StatelessWidget {
  const RowRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
          ],
        ),
      ),
      
    );
  }
}

class downcolumn extends StatelessWidget {
  const downcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
            Icon(Icons.motorcycle, size: 48,),
          ],
        ),
      ),
      
    );
  }
}

