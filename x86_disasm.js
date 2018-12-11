const fs = require('fs');


function disassemble(buffer){
  console.log(buffer);
}

function readBuffer(err, data) {
  if(err) throw err;

  const buf = Buffer.from(data);
  disassemble(buf);

}

fs.readFile('./3_3_hello_world_isr.bin', 'base64', readBuffer);
