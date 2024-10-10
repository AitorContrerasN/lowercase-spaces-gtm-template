# lowercase-spaces-gtm-template

GTM Server template to normalize text, removing spaces and non-alphabetic characters based on checkbox configurations.

## Using the Variable Template

To use this template, create a new variable using the template in GTM Server. You can configure two checkboxes:

1. **Checkbox 1**: If checked, it will remove all spaces from the input text.
2. **Checkbox 2**: If checked, it will remove all non-alphabetic characters from the input text.

### Example

If the input string is: " Hello World 123!!! "


and you want to transform it based on the checkboxes:

1. **Checkbox 1** activated (spaces removed): "helloworld123!!!"


2. **Checkbox 2** activated (remove non-alphabetic characters): "helloworld"


3. **Both Checkbox 1 and Checkbox 2 activated**: "helloworld"



4. **No checkboxes activated**: " hello world 123!!! "


## Configuration Options

| Option     | Description                                                  | Example         | Default |
|------------|--------------------------------------------------------------|-----------------|---------|
| `input`    | Input text to transform.                                      | `"Hello World!"`| `""`    |
| `checkbox1`| Remove spaces from the text if checked.                       | `true/false`    | `false` |
| `checkbox2`| Remove non-alphabetic characters from the text if checked.    | `true/false`    | `false` |

## How the Transformation Works

1. The input string is first converted to lowercase.
2. Based on the checkbox configuration:
- **Checkbox 1**: Removes all spaces from the text.
- **Checkbox 2**: Removes all characters except for lowercase alphabets (a-z).
3. The final transformed string is returned.

## Example Configuration

```json
{
"input": " Hello World 123!!! ",
"checkbox1": true,
"checkbox2": true
}

"helloworld"

