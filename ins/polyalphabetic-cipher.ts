function enc(s: string, k: string): string {
    let r = "";
    let ki = 0;
    for (const c of s) {
        if (/[A-Za-z]/.test(c)) {
            const sh = k.toUpperCase().charCodeAt(ki % k.length) - 65;
            const b = c.toUpperCase().charCodeAt(0) - 65;
            const x = (b + sh) % 26;
            r += c === c.toUpperCase() 
                ? String.fromCharCode(x + 65)
                : String.fromCharCode(x + 65).toLowerCase();
            ki++;
        } else {
            r += c;
        }
    }
    return r;
}

function dec(s: string, k: string): string {
    let r = "";
    let ki = 0;
    for (const c of s) {
        if (/[A-Za-z]/.test(c)) {
            const sh = k.toUpperCase().charCodeAt(ki % k.length) - 65;
            const b = c.toUpperCase().charCodeAt(0) - 65;
            const x = (b - sh + 26) % 26;
            r += c === c.toUpperCase()
                ? String.fromCharCode(x + 65)
                : String.fromCharCode(x + 65).toLowerCase();
            ki++;
        } else {
            r += c;
        }
    }
    return r;
}

const t = "Hello World";
const k = "KEY";
console.log(`Text: ${t}`);
console.log(`Key: ${k}`);
console.log(`Encrypted: ${enc(t, k)}`);
console.log(`Decrypted: ${dec(enc(t, k), k)}`);
