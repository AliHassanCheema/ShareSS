import 'package:flutter/material.dart';
import 'package:sharess/sharess/sharess_vm.dart';
import 'package:stacked/stacked.dart';

class ShareSSScreen extends StackedView<ShareSSViewModel> {
  const ShareSSScreen({super.key});

  @override
  Widget builder(BuildContext context, ShareSSViewModel viewModel, Widget? child) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text('Share ScreenShot')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            child: Card(
              color: Colors.blue[400],
              child: const Center(child: Text('Dummy, Not for pdf')),
            ),
          ),
          RepaintBoundary(
              key: viewModel.scr,
              child: Center(
                child: SizedBox(
                  height: 80,
                  child: Card(
                    elevation: 5,
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
                      child: Column(
                        children: const [
                          Text('For SS/PDF'),
                          Text('Name : Ali Hassan'),
                          Text('Address: H13,Islamabad, Islamabad')
                        ],
                      ),
                    ),
                  ),
                ),
              )
              // ListView.builder(
              //   itemCount: 16,
              //   itemBuilder: (context, index) {
              //     return Card(
              //       child: Center(
              //           child: Padding(
              //         padding: const EdgeInsets.symmetric(vertical: 12.0),
              //         child: Text('Ali >>>>>>> $index'),
              //       )),
              //     );
              //   },
              // ),
              ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.takescrshot();
        },
        child: const Icon(Icons.camera_alt_outlined),
      ),
    ));
  }

  @override
  ShareSSViewModel viewModelBuilder(BuildContext context) {
    return ShareSSViewModel();
  }
}
