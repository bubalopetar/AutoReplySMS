// ignore_for_file: use_build_context_synchronously, must_be_immutable

import 'package:app/generated/locale_keys.g.dart';
import 'package:app/providers/providers.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';

class AddAutoResponse extends ConsumerStatefulWidget {
  const AddAutoResponse({super.key});

  static const routeName = 'add';

  @override
  ConsumerState<AddAutoResponse> createState() => _AddAutoResponseState();
}

class _AddAutoResponseState extends ConsumerState<AddAutoResponse> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController senderNumber = TextEditingController();
  TextEditingController senderName = TextEditingController();
  TextEditingController senderMessage = TextEditingController();
  TextEditingController receiverNumber = TextEditingController();
  TextEditingController receiverName = TextEditingController();
  TextEditingController receiverMessage = TextEditingController();

  String? checkIfEmpty(value) {
    if (value!.trim().isEmpty) {
      return LocaleKeys.emptyError.tr();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(LocaleKeys.title).tr(),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: LayoutBuilder(
              builder: (p0, p1) => SizedBox(
                height: p1.maxHeight,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: p1.maxHeight,
                    child: Column(
                      children: [
                        _buildSenderSection(),
                        _buildReceiverSection(),
                        const Spacer(),
                        _buildSaveButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  SizedBox _buildSaveButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
        child: const Text(LocaleKeys.save).tr(),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            await ref
                .read(autoResponsesProvider)
                .createAutoResponseAndSaveToPrefs(
                    senderName: senderName.text,
                    senderMessage: senderMessage.text,
                    senderNumber: senderNumber.text,
                    receiverName: receiverName.text,
                    receiverMessage: receiverMessage.text,
                    receiverNumber: receiverNumber.text);
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(LocaleKeys.saveSuccess.tr())));
          }
        },
      ),
    );
  }

  Card _buildReceiverSection() {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(children: [
          TextFormField(
            controller:
                receiverName.text.isNotEmpty ? receiverName : receiverNumber,
            onSaved: (String? newValue) {
              if (receiverName.text.isEmpty) {
                receiverNumber.text = newValue!;
              }
            },
            validator: checkIfEmpty,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () async {
                    final PhoneContact contact =
                        await FlutterContactPicker.pickPhoneContact();
                    receiverName.text = contact.fullName!;
                    receiverNumber.text =
                        contact.phoneNumber!.number!.replaceAll(' ', '');
                    setState(() {});
                  },
                  icon: const Icon(Icons.contact_phone)),
              labelText: LocaleKeys.receiver.tr(),
              hintText: LocaleKeys.receiverHint.tr(),
            ),
          ),
          TextFormField(
            controller: receiverMessage,
            onSaved: (String? newValue) {
              receiverMessage.text = newValue!;
            },
            validator: checkIfEmpty,
            maxLines: 2,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: LocaleKeys.receiverMessage.tr(),
            ),
          ),
        ]),
      ),
    );
  }

  Card _buildSenderSection() {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(children: [
          TextFormField(
            controller: senderName.text.isNotEmpty ? senderName : senderNumber,
            onSaved: (String? newValue) {
              if (senderName.text.isEmpty) {
                senderNumber.text = newValue!;
              }
            },
            validator: checkIfEmpty,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () async {
                    final PhoneContact contact =
                        await FlutterContactPicker.pickPhoneContact();
                    senderName.text = contact.fullName!;
                    senderNumber.text =
                        contact.phoneNumber!.number!.replaceAll(' ', '');
                    setState(() {});
                  },
                  icon: const Icon(Icons.contact_phone)),
              labelText: LocaleKeys.sender.tr(),
              hintText: LocaleKeys.senderHint.tr(),
            ),
          ),
          TextFormField(
            controller: senderMessage,
            onSaved: (String? newValue) {
              senderMessage.text = newValue!;
            },
            maxLines: 2,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                labelText: LocaleKeys.senderMessage.tr(),
                hintText: LocaleKeys.senderMessageHint.tr()),
          ),
        ]),
      ),
    );
  }
}
