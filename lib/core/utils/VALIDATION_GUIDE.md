# Validation System Documentation

## Overview
نظام الـ Validation في المشروع منظم ومنفصل عن UI لسهولة الصيانة وإعادة الاستخدام.

---

## Structure

### 📁 Files:
1. **`validators.dart`** - يحتوي على كل الـ validation logic
2. **`validation_strings.dart`** - يحتوي على كل رسائل الخطأ
3. **`login_constants.dart`** - يحتوي على Regex patterns والـ constants

---

## Available Validators

### 1️⃣ Email Validator
```dart
validator: Validators.email
```
**Checks:**
- ✅ Field is not empty
- ✅ Email format is valid (example@domain.com)

**Example:**
```dart
CustomTextFormField(
  controller: _emailController,
  validator: Validators.email,
)
```

---

### 2️⃣ Password Validator
```dart
validator: Validators.password
```
**Checks:**
- ✅ Field is not empty
- ✅ Password is at least 6 characters

**Example:**
```dart
CustomTextFormField(
  controller: _passwordController,
  validator: Validators.password,
  obscureText: true,
)
```

---

### 3️⃣ Phone Validator
```dart
validator: Validators.phone
```
**Checks:**
- ✅ Field is not empty
- ✅ Phone matches Egyptian phone format

**Accepts:**
- `01234567890` ✅
- `+201234567890` ✅
- `0123-456-7890` ✅ (spaces and dashes are auto-removed)

**Example:**
```dart
CustomTextFormField(
  controller: _phoneController,
  validator: Validators.phone,
  keyboardType: TextInputType.phone,
)
```

---

### 4️⃣ Name Validator
```dart
validator: Validators.name
```
**Checks:**
- ✅ Field is not empty
- ✅ Name is at least 2 characters
- ✅ Name contains only letters (Arabic/English) and spaces

**Accepts:**
- `Mohamed Ali` ✅
- `محمد علي` ✅
- `Ahmed` ✅

**Rejects:**
- `Ahmed123` ❌ (contains numbers)
- `A` ❌ (too short)

**Example:**
```dart
CustomTextFormField(
  controller: _nameController,
  validator: Validators.name,
)
```

---

### 5️⃣ Confirm Password Validator
```dart
validator: (value) => Validators.confirmPassword(value, originalPassword)
```
**Checks:**
- ✅ Field is not empty
- ✅ Matches the original password

**Note:** This validator requires TWO parameters!

**Example:**
```dart
CustomTextFormField(
  controller: _confirmPasswordController,
  validator: (value) => Validators.confirmPassword(
    value, 
    _passwordController.text
  ),
  obscureText: true,
)
```

---

### 6️⃣ Required Field Validator
```dart
validator: Validators.required
```
**Checks:**
- ✅ Field is not empty

**Use when:** You need a field to be required but no specific format validation

**Example:**
```dart
CustomTextFormField(
  controller: _addressController,
  validator: Validators.required,
)
```

---

## How to Add New Validator

### Step 1: Add error messages to `validation_strings.dart`
```dart
static const String myFieldEmpty = 'Please enter your field';
static const String myFieldInvalid = 'Invalid field format';
```

### Step 2: (Optional) Add regex pattern to `login_constants.dart`
```dart
static const String myFieldPattern = r'^[a-zA-Z]+$';
```

### Step 3: Add validator method to `validators.dart`
```dart
/// My Field Validator
/// Description of what it validates
static String? myField(String? value) {
  if (value == null || value.isEmpty) {
    return ValidationStrings.myFieldEmpty;
  }
  if (!RegExp(LoginConstants.myFieldPattern).hasMatch(value)) {
    return ValidationStrings.myFieldInvalid;
  }
  return null;
}
```

### Step 4: Use it in your screen
```dart
CustomTextFormField(
  validator: Validators.myField,
)
```

---

## Best Practices

### ✅ DO:
- Always use validators from `Validators` class
- Keep error messages in `ValidationStrings`
- Keep regex patterns in `LoginConstants`
- Add documentation comments for new validators

### ❌ DON'T:
- Don't hard-code error messages in validators
- Don't hard-code regex patterns in validators
- Don't write validation logic directly in UI
- Don't forget to add validator to required fields

---

## Testing Validators

You can easily test validators in unit tests:

```dart
test('email validator returns error for empty input', () {
  final result = Validators.email('');
  expect(result, ValidationStrings.emailEmpty);
});

test('email validator returns null for valid email', () {
  final result = Validators.email('test@example.com');
  expect(result, null);
});
```

---

## Summary

| Validator | Usage | Parameters |
|-----------|-------|------------|
| `email` | Email validation | `value` |
| `password` | Password validation | `value` |
| `phone` | Egyptian phone validation | `value` |
| `name` | Name validation (Arabic/English) | `value` |
| `confirmPassword` | Password confirmation | `value`, `originalPassword` |
| `required` | Required field | `value` |

---

**Last Updated:** 2026-02-01
**Author:** App Team
