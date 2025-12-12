import * as readline from 'readline';

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

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function runProgram(): void {
    rl.question('Enter text: ', (text) => {
        rl.question('Enter shift value: ', (shiftStr) => {
            const shift = parseInt(shiftStr);

            if (isNaN(shift)) {
                console.log('Invalid shift value.\n');
                runProgram();
                return;
            }

            console.log(`\nOriginal:  ${text}`);
            console.log(`Encrypted: ${caesarCipher(text, shift)}`);
            console.log(`Decrypted: ${caesarDecipher(caesarCipher(text, shift), shift)}\n`);

            rl.question('Continue? (y/n): ', (ans) => {
                if (ans.toLowerCase() === 'y') {
                    runProgram();
                } else {
                    console.log('Goodbye!');
                    rl.close();
                }
            });
        });
    });
}

console.log('Caesar Cipher');
runProgram();
