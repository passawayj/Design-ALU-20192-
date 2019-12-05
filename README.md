# 목표  
#### input이 16비트이며 2개를 받는다. sel에 따라 어떠한 연산을 한 후 16비트의 output을 하나 출력한다. 단, 핸디캡으로 add모듈을 만들 때에 게이트 수준만 사용한다. 


# add (adder)

#### 1bit full adder를 4개를 만들어 하나의 4bit full adder로 만든다. 또 이것을 4개 붙혀 add를 만든다. 


```verilog
module add(input [15:0] a, b, input cin, output [15:0] s, output cout);
	
	wire c1, c2, c3;
	
	bit4fulladder b1 (a[3:0], b[3:0], cin, s[3:0], c1);
	bit4fulladder b2 (a[7:4], b[7:4], c1, s[7:4], c2);
	bit4fulladder b3 (a[11:8], b[11:8], c2, s[11:8], c3);
	bit4fulladder b4 (a[15:12], b[15:12], c3, s[15:12], cout);
	
	


endmodule

```
#### 이렇게 모듈을 단순하게 붙히는 작업만 하면됨.


# sub(subtractor)  
#### cin이 adder의 보수라는 것을 이용하고, 뺄셈은 보수취한 값을 더하는 것과 같다는 것에 유의하며 다음과 같이 설계함.

``` verilog 
module sub(input [15:0] a, b, input cin, output [15:0] s, output cout);
	
	
	add a1 (a, ~b, cin, s, cout);
	
	


endmodule


```


# mul(multiplexer)  
#### 피연산자의 한 비트를 나머지 피연산자의 모든 비트와 곱한 16비트의 값을 mux_sp로 두고 이 mux_sp들을 차례차례 왼쪽으로 bit shift를 하여 전부 더해주었다.


# div(divider)  
 
> https://blastic.tistory.com/136
#### 위의 링크를 참고하여 디바이더를 만들었다. 링크의 내용 고대로 이해하고 고대로 코딩해주면됨.


# ALU  
#### 최종적으로 ALU로 만든 4가지의 계산기들을 합쳐준다.
