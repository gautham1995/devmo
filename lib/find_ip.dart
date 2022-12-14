// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:r_get_ip/r_get_ip.dart';

class MobileIp extends StatefulWidget {
  const MobileIp({Key? key}) : super(key: key);

  @override
  State<MobileIp> createState() => _MobileIpState();
}

class _MobileIpState extends State<MobileIp> {


  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IP Example app'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('External IP Address'),
                FutureBuilder(
                  builder: _buildIpWidget,
                  future: RGetIp.externalIP,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('internal IP Address'),
                FutureBuilder(
                  builder: _buildIpWidget,
                  future: RGetIp.internalIP,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Network Type'),
                FutureBuilder(
                  builder: _buildIpWidget,
                  future: RGetIp.networkType,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }

  Widget _buildIpWidget(BuildContext context, AsyncSnapshot<String?> snapshot) {
    print("OBJECT ${snapshot.hasData ? snapshot.data : "0.0.0.0"}");
    return Text(
      '${snapshot.hasData ? snapshot.data : "0.0.0.0"}',
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
