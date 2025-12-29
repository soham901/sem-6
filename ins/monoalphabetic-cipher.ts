const A = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const B = "ZYXWVUTSRQPONMLKJIHGFEDCBA";

function enc(s: string): string {
    return s.split('').map(c => {
        const i = A.indexOf(c.toUpperCase());
        return i !== -1 
            ? (c === c.toUpperCase() ? B[i] : B[i].toLowerCase())
            : c;
    }).join('');
}

function dec(s: string): string {
    return enc(s);
}

const t = "Hello World";
console.log(`Text: ${t}`);
console.log(`Encrypted: ${enc(t)}`);
console.log(`Decrypted: ${dec(enc(t))}`);
