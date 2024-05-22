let a = 1;  // 지역 변수는 let, 전역 변수는 var, 상수는 const 로 변수 선언

function add(x,y){    // 함수 선언
  let temp = x + y;
  return temp;
}

minus = (x,y) => {    // 이런 식으로도 함수 선언 가능
  let temp = x - y;
  return temp;
}

document.write(add(1,2))  // 화면에 출력하기


if(a == 1){   // 조건문
  document.write("a는 1이다 \n <br>")   // JS 에서도 <br>로 줄바꿈 가능
}

for(let i = 1; i <= 5; i++){    // 반복문
  document.write(i + " ");
}

document.write("<br></br>");

let array = [1,2,3,4,5]   // 배열에 .forEach 함수를 사용하여 하나씩 넣어줄 수도 있음
array.forEach(element => {
  document.write(element + " ");
})