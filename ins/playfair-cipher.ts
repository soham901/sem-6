function buildMatrix(key: string): string[][] {
    const k = key.toUpperCase().replace(/J/g, "I").replace(/[^A-Z]/g, "");
    const seen = new Set();
    let chars = "";
    for (const c of k + "ABCDEFGHIKLMNOPQRSTUVWXYZ") {
        if (!seen.has(c)) {
            seen.add(c);
            chars += c;
        }
    }
    const m: string[][] = [];
    for (let i = 0; i < 5; i++) {
        m.push(chars.slice(i * 5, (i + 1) * 5).split(""));
    }
    return m;
}

function findPos(m: string[][], c: string): [number, number] {
    const ch = c === "J" ? "I" : c;
    for (let i = 0; i < 5; i++) {
        for (let j = 0; j < 5; j++) {
            if (m[i][j] === ch) return [i, j];
        }
    }
    return [0, 0];
}

function prep(s: string): string {
    let r = "";
    s = s.toUpperCase().replace(/J/g, "I").replace(/[^A-Z]/g, "");
    for (let i = 0; i < s.length; i += 2) {
        if (i + 1 < s.length && s[i] === s[i + 1]) {
            r += s[i] + "X";
            i--;
        } else if (i + 1 < s.length) {
            r += s[i] + s[i + 1];
        } else {
            r += s[i] + "X";
        }
    }
    return r;
}

function enc(s: string, key: string): string {
    const m = buildMatrix(key);
    const p = prep(s);
    let r = "";
    for (let i = 0; i < p.length; i += 2) {
        const [r1, c1] = findPos(m, p[i]);
        const [r2, c2] = findPos(m, p[i + 1]);
        if (r1 === r2) {
            r += m[r1][(c1 + 1) % 5] + m[r2][(c2 + 1) % 5];
        } else if (c1 === c2) {
            r += m[(r1 + 1) % 5][c1] + m[(r2 + 1) % 5][c2];
        } else {
            r += m[r1][c2] + m[r2][c1];
        }
    }
    return r;
}

function dec(s: string, key: string): string {
    const m = buildMatrix(key);
    const p = prep(s);
    let r = "";
    for (let i = 0; i < p.length; i += 2) {
        const [r1, c1] = findPos(m, p[i]);
        const [r2, c2] = findPos(m, p[i + 1]);
        if (r1 === r2) {
            r += m[r1][(c1 + 4) % 5] + m[r2][(c2 + 4) % 5];
        } else if (c1 === c2) {
            r += m[(r1 + 4) % 5][c1] + m[(r2 + 4) % 5][c2];
        } else {
            r += m[r1][c2] + m[r2][c1];
        }
    }
    return r;
}

const t = "Hello World";
const k = "KEYWORD";
console.log(`Text: ${t}`);
console.log(`Key: ${k}`);
console.log(`Encrypted: ${enc(t, k)}`);
console.log(`Decrypted: ${dec(enc(t, k), k)}`);
