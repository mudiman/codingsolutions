
//https://www.w3schools.com/js/js_string_templates.asp
let text =
`The quick
brown fox
jumps over
the lazy dog`;

let firstName = "John";
let lastName = "Doe";

let text = `Welcome ${firstName}, ${lastName}!`;

let price = 10;
let VAT = 0.25;

let total = `Total: ${(price * (1 + VAT)).toFixed(2)}`;