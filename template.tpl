___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Lowercase spaces and symbols",
  "description": "GTM Server template to normalize text, removing spaces and non-alphabetic characters based on checkbox configurations.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "input",
    "displayName": "Value to transform",
    "simpleValueType": true
  },
  {
    "type": "CHECKBOX",
    "name": "checkbox1",
    "checkboxText": "Remove all spaces as well",
    "simpleValueType": true
  },
  {
    "type": "CHECKBOX",
    "name": "checkbox2",
    "checkboxText": "Remove all characters except for letters",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

let transformed = (data.input || '').toLowerCase(); // Convert input to lowercase

if (data.checkbox1 && !data.checkbox2) {
  // If checkbox1 is true and checkbox2 is false: remove spaces
  transformed = transformed.split(' ').join('');
}

if (data.checkbox2) {
  // If checkbox2 is true: remove everything except letters
  transformed = transformed.split('').filter(function(char) {
    return char >= 'a' && char <= 'z'; // Keep only a-z characters
  }).join('');
}

return transformed; // Return the transformed result


___TESTS___

scenarios: []


___NOTES___

Created on 9/10/2024, 17:22:01


