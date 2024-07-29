// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String SearchEventValueKey = 'searchEvent';

final Map<String, TextEditingController> _EventViewTextEditingControllers = {};

final Map<String, FocusNode> _EventViewFocusNodes = {};

final Map<String, String? Function(String?)?> _EventViewTextValidations = {
  SearchEventValueKey: null,
};

mixin $EventView {
  TextEditingController get searchEventController =>
      _getFormTextEditingController(SearchEventValueKey);

  FocusNode get searchEventFocusNode => _getFormFocusNode(SearchEventValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_EventViewTextEditingControllers.containsKey(key)) {
      return _EventViewTextEditingControllers[key]!;
    }

    _EventViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _EventViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_EventViewFocusNodes.containsKey(key)) {
      return _EventViewFocusNodes[key]!;
    }
    _EventViewFocusNodes[key] = FocusNode();
    return _EventViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    searchEventController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    searchEventController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          SearchEventValueKey: searchEventController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _EventViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _EventViewFocusNodes.values) {
      focusNode.dispose();
    }

    _EventViewTextEditingControllers.clear();
    _EventViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get searchEventValue =>
      this.formValueMap[SearchEventValueKey] as String?;

  set searchEventValue(String? value) {
    this.setData(
      this.formValueMap..addAll({SearchEventValueKey: value}),
    );

    if (_EventViewTextEditingControllers.containsKey(SearchEventValueKey)) {
      _EventViewTextEditingControllers[SearchEventValueKey]?.text = value ?? '';
    }
  }

  bool get hasSearchEvent =>
      this.formValueMap.containsKey(SearchEventValueKey) &&
      (searchEventValue?.isNotEmpty ?? false);

  bool get hasSearchEventValidationMessage =>
      this.fieldsValidationMessages[SearchEventValueKey]?.isNotEmpty ?? false;

  String? get searchEventValidationMessage =>
      this.fieldsValidationMessages[SearchEventValueKey];
}

extension Methods on FormStateHelper {
  setSearchEventValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SearchEventValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    searchEventValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      SearchEventValueKey: getValidationMessage(SearchEventValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _EventViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _EventViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      SearchEventValueKey: getValidationMessage(SearchEventValueKey),
    });
