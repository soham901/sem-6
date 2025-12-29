function encrypt(plaintext: string, key: string): string {
  let result = "";
  let keyIdx = 0;
  for (const char of plaintext) {
    if (/[A-Za-z]/.test(char)) {
      const shift = key.toUpperCase().charCodeAt(keyIdx % key.length) - 65;
      const base = char.toUpperCase().charCodeAt(0) - 65;
      result += String.fromCharCode((base + shift) % 26 + 65);
      keyIdx++;
    } else {
      result += char;
    }
  }
  return result;
}

console.log(encrypt("GROW MORE TREE", "GOOD"));
