// Simple Caesar Cipher demo

function caesarCipher(str: string, shift: number): string {
    return str.split('').map(char => {
        if (char >= 'A' && char <= 'Z') {
            const code = char.charCodeAt(0);
            return String.fromCharCode(((code - 65 + shift) % 26 + 26) % 26 + 65);
        } else if (char >= 'a' && char <= 'z') {
            const code = char.charCodeAt(0);
            return String.fromCharCode(((code - 97 + shift) % 26 + 26) % 26 + 97);
        }
        return char;
    }).join('');
}

function caesarDecipher(str: string, shift: number): string {
    return caesarCipher(str, -shift);
}

// Example usage
const text = "Hello World";
const shift = 3;

console.log(`Text: ${text}`);
console.log(`Shift: ${shift}`);
console.log(`Encrypted: ${caesarCipher(text, shift)}`);
console.log(`Decrypted: ${caesarDecipher(caesarCipher(text, shift), shift)}`);