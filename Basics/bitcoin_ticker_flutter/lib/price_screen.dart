import 'dart:convert';

import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:http/http.dart' as http;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'INR';
  String cryptoCurrency = 'BTC';
  int selectedCurrencyRate= 1;
  Map<String,String> coinCryptoCurrency ={};

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          getData();
           print('Got Updated Coin');
        });
      },
    );
  }

  List<Widget> getVi(){

    List<Widget> coinTickerCards= [];

    for(String crypto in cryptoList){
      cryptoCurrency = crypto;
      coinTickerCards.add(CoinTickerCard(cryptoCurrency: crypto,selectedCurrency: selectedCurrency,selectedCurrencyRate: coinCryptoCurrency[crypto],));
    }


    return coinTickerCards;
  }


  void getData() async{
    try{
      var data = await getCurrencyRate();;
      setState(() {
        coinCryptoCurrency= data;
      });
    }catch(e){
      print(e);
    }
  }


  Future getCurrencyRate() async{

    Map<String,String> coinCurrency ={};

    for(String crypto in cryptoList){

      String coinApi = 'https://rest.coinapi.io/v1/exchangerate/$crypto/$selectedCurrency?apikey=53567A09-4575-438F-AF38-E8753C4DDEEF';
      print(coinApi);
      http.Response  response =  await http.get(coinApi);
      dynamic body = jsonDecode(response.body);
      String rateValue = body['rate'].toString();
      coinCurrency[crypto] = rateValue;
    }
    return coinCurrency;
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: pickerItems,
    );
  }

  //TODO: Create a method here called getData() to get the coin data from coin_data.dart

  @override
  void initState() {
    super.initState();
    getCurrencyRate();
    //TODO: Call getData() when the screen loads up.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //CoinTickerCard(selectedCurrencyRate: selectedCurrencyRate, selectedCurrency: selectedCurrency),
          Column(
            children: getVi(),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}

class CoinTickerCard extends StatelessWidget {

  CoinTickerCard({this.selectedCurrencyRate, this.selectedCurrency, this.cryptoCurrency});

  final String selectedCurrencyRate;
  final String selectedCurrency;
  final String cryptoCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            //TODO: Update the Text Widget with the live bitcoin data here.
            '1 $cryptoCurrency = $selectedCurrencyRate $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}