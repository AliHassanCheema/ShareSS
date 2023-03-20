import 'package:flutter/material.dart';
import 'package:sharess/downloader/downloader_vm.dart';
import 'package:stacked/stacked.dart';

class DownloaderView extends StackedView<DownLoaderViewModel> {
  const DownloaderView({super.key});

  @override
  Widget builder(BuildContext context, DownLoaderViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text('Youtube Download')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: viewModel.controller,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide()),
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide()),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: MediaQuery.of(context).size.height * 0.024),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  viewModel.onDownloadVideo();
                },
                child: const Text('Downlaod'))
          ],
        ),
      ),
    );
  }

  @override
  DownLoaderViewModel viewModelBuilder(BuildContext context) {
    return DownLoaderViewModel();
  }
}
