# Unhandled Exception in JSON Decoding (Dart)

This repository demonstrates a common error in Dart when handling JSON responses from APIs:  failure to gracefully handle missing keys or unexpected data structures within the JSON response.  The `bug.dart` file shows the flawed code, and `bugSolution.dart` provides a corrected version with improved error handling.

## Problem

The original code assumes a consistent JSON structure.  If the server returns a JSON response where an element is missing the expected key (e.g., 'name'), the code throws an exception and crashes. 

## Solution

The solution adds checks to verify the existence of keys before accessing them.  This prevents unexpected exceptions and makes the code more robust.  Appropriate error messages are also included for better debugging.