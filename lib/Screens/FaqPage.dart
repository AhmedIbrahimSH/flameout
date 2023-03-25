import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  final List<Map<String, String>> _faqs = [
    {
      'question': 'What is the cost for the order',
      'answer':
      'It is 100 Egyptian pound per fire extinguisher plus 30 ep for delivery'
    },

    {
      'question': 'Can I use the application in the us',
      'answer':
      'Unfortuntly for now the app only works in Egypt , but don\'t worry we are planning to expnad all around the world as recycling the fireExtinguishers is global issue ',
    },
    {
      'question': 'What types of fire extinguishers can be recycled?',
      'answer':
      'We can recycle all types of fire extinguishers, including ABC, BC, CO2, and water-based extinguishers.'
    },
    {
      'question': 'Where can I drop off my used fire extinguishers?',
      'answer':
      'You can drop off your used fire extinguishers at any of our designated recycling centers in Cairo. Please visit our website for a list of locations.'
    },
    {
      'question': 'Is there a fee to recycle fire extinguishers?',
      'answer':
      'No, there is no fee to recycle fire extinguishers. Our recycling program is free of charge to promote sustainable waste management in Cairo.'
    },
    {
      'question': 'How are recycled fire extinguishers used?',
      'answer':
      'Recycled fire extinguishers are used to make new products, such as metal products and components. The materials from the extinguishers are also used to create energy through a waste-to-energy process.'
    },
    {
      'question': 'What are the benefits of recycling fire extinguishers?',
      'answer':
      'Recycling fire extinguishers helps to conserve natural resources, reduce landfill waste, and promote sustainable waste management. It also helps to reduce the risk of hazardous chemicals and materials contaminating the environment.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('FAQ'),

      ),
      body: ListView.builder(
        itemCount: _faqs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ExpansionTile(
              title: Text(_faqs[index]['question']!),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(_faqs[index]['answer']!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
