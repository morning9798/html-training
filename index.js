// 실행 전 터미널에서 npm init -y 로 프로젝트 초기화 (처음이면 npm init 후 엔터반복)
// npm i express 프레임 워크 사용

const express = require('express'); // express를 가져와서

const app = express();  // app을 만들고

app.get('/', (req,res) => { // 요청이 오면 Hello를 보여준다.
  res.send('Hello');
});

app.listen(8080,() => console.log('Sever is running'));