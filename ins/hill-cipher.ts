function modInv(a: number, m: number): number {
    for (let x = 1; x < m; x++) if ((a * x) % m === 1) return x;
    return 1;
}

function det(m: number[][]): number {
    return (m[0][0] * m[1][1] - m[0][1] * m[1][0]) % 26;
}

function inv(m: number[][]): number[][] {
    const d = ((det(m) % 26) + 26) % 26;
    if (d === 0) throw new Error("Matrix not invertible");
    const di = modInv(d, 26);
    return [
        [((m[1][1] * di) % 26 + 26) % 26, ((-m[0][1] * di) % 26 + 26) % 26],
        [((-m[1][0] * di) % 26 + 26) % 26, ((m[0][0] * di) % 26 + 26) % 26]
    ];
}

function toNum(s: string): number[] {
    return s.toUpperCase().replace(/[^A-Z]/g, "").split("").map(c => c.charCodeAt(0) - 65);
}

function toStr(n: number[]): string {
    return n.map(x => String.fromCharCode((x % 26) + 65)).join("");
}

function pad(s: string): string {
    s = s.toUpperCase().replace(/[^A-Z]/g, "");
    while (s.length % 2) s += "X";
    return s;
}

function encrypt(text: string, key: number[][]): string {
    const nums = toNum(pad(text));
    let res = "";
    for (let i = 0; i < nums.length; i += 2) {
        const c1 = ((key[0][0] * nums[i] + key[0][1] * nums[i + 1]) % 26 + 26) % 26;
        const c2 = ((key[1][0] * nums[i] + key[1][1] * nums[i + 1]) % 26 + 26) % 26;
        res += toStr([c1, c2]);
    }
    return res;
}

function decrypt(text: string, key: number[][]): string {
    const k = inv(key);
    const nums = toNum(text);
    let res = "";
    for (let i = 0; i < nums.length; i += 2) {
        const c1 = ((k[0][0] * nums[i] + k[0][1] * nums[i + 1]) % 26 + 26) % 26;
        const c2 = ((k[1][0] * nums[i] + k[1][1] * nums[i + 1]) % 26 + 26) % 26;
        res += toStr([c1, c2]);
    }
    return res.replace(/X+$/, "");
}

const key = [[6, 24], [1, 16]];
const text = "HELLO";
console.log(`Text:      ${text}`);
console.log(`Encrypted: ${encrypt(text, key)}`);
console.log(`Decrypted: ${decrypt(encrypt(text, key), key)}`);
