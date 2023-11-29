<?php
//rege/ string formatter/ loops/ functiona map reduce filter / match exp/ date manupalte

//php -r "phpinfo();" | grep php.ini 
/**
 * Regex
 *  search
 *  return match
 *  replace
 *  split
 *  extract
 */

$str = "We are  test. This test Coder  ?";
// var_dump(preg_match("/test/", $str));  //matches with 1 or 0
//var_dump(preg_match_all("/test/i", $str));  //returns no of match

// preg_match_all("/test/", $str, $matches,PREG_OFFSET_CAPTURE);  // return matches
// print_r($matches);

// var_dump(preg_replace("/test/", "W3Schools", $str));

// var_dump(preg_split("/test/", $str));

// $date = '02/01/22';
// $values = sscanf($date, '%d/%d/%d', $m, $d, $y); //extra pattern into variables  DOEST NOT SUPPORT REGEX
// var_dump("Month: $m; Day: $d; Year: $y.");

//--------------string formatter
// https://brainbell.com/php/formatting-strings.html
// var_dump(sprintf("There are %10.4f million bicycles in %s.", 123.123 , "TEST")); //%10.4  10 is width with empty space padding .4 is decimal places
// var_dump(sprintf("AAA %'09s", 12312)); //padding
// var_dump(sprintf("BBB %9s", 12312));  //width
// var_dump(sprintf("BBB %-9s", 12312));  //width of right side


//------------loops
// for ($i = 0; $i < 10; $i++){}

// foreach($array_variable  as $array_values){}

// $persons = array("Mary" => "Female", "John" => "Male", "Mirriam" => "Female");

// foreach($persons as $key => $value){
// echo "$key is $value"."<br>";
//}

//------------fitler map reduce/ functiional porgramming

// $input = [1, 2, 3, 4, 5, 6];
// print_r(array_filter($input, function($item) {
//     return $item % 2;
// }));

// print_r(array_map(function($item) {
//     return pow($item, 2);
// }, $input));

// print_r(array_reduce($input, function($carry, $item) {
//     return $carry + $item;
// },  0));

//------------match switch

// $statusCode = '900';
// $message = match ($statusCode) {
//     200, 300 => null,
//     400 => 'not found',
//     500 => 'server error',
//     500 => throw new Exception(),
//     default => 'unknown status code',
// };
// print_r($message);

//-------------Date parsing

// $input = '06/06/1985 19:00:02';
// $date = new DateTime($input);
// $date->add(new DateInterval('P7D'));
// print_r($date);

// print_r(date_parse("2006-12-12 23:00"));
// print_r(date_parse("June 2nd, 2022, 10:28:17 Europe/London"));
// print_r(date_parse("2006-12-12 10:00:00.5 +1 week +1 hour"));


// sorting
$numbers = array(4,6,2,22,11);
sort($numbers);
print_r($numbers);

?>