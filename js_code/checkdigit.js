// function createCheckDigit(membershipId) {
//   let sum = 0;
//   membershipId= parseInt(membershipId)
//   while (membershipId > 9) {
//     sum += membershipId % 10;
//     membershipId = parseInt(membershipId / 10)
//   }
//   sum += membershipId
//   if (sum > 9) {
//     return createCheckDigit(sum)
//   }
//   return sum;
// }

function createCheckDigit(membershipId) {
  let sum = 9999;
  while (parseInt(sum) > 9) {
  sum = membershipId.split("").reduce((a,b) => parseInt(a)+parseInt(b) ).toString();
}

  return sum;
}

console.log(createCheckDigit("55555"));