clear;

%——————————载入需求点坐标
x1=[9885155,3553604.4];
x2=[1114797.2,3560441.9];
x3=[803117,3916743.6];
x4=[1065352.5,3594744.7];
x5=[1165783.5,3507786.7];
x6=[1193796.0,3565520.6];
x7=[987120.7,3887685.2];
x8=[978507.8,3757270.6];
x9=[1087853,3744807.3];
x10=[1031923.7,3630068.6];
x11=[1033898.7,3593025.9];
x12=[1063260,3631796.6];
x13=[913440.4,3828397.4];


x=[x1;x2;x3;x4;x5;x6;x7;x8;x9;x10;x11;x12;x13]; 
[x_max,~] = max(x(:,1));
[x_min,~] = min(x(:,1));
[y_max,~] = max(x(:,2));
[y_min,~] = min(x(:,2));
%——————初始化权重
w1=0.142; 
w2=0.099; 
w3=0.095; 
w4=0.068; 
w5=0.141; 
w6=0.082; 
w7=0.053; 
w8=0.046; 
w9=0.068; 
w10=0.056; 
w11=0.048; 
w12=0.066; 
w13=0.035; 
w=[w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13];

%——————确定初始生长点————
A1=[1/3 1/3]; 
A2=[2*1/3 1/3]; 
A3=[2*1/3 2*1/3]; 
A4=[1/3 2*1/3]; 
A5=[1/9 1/9]; 
A6=[2*1/9 1/9]; 
A7=[2*1/9 2*1/9]; 
A8=[1/9 2*1/9]; 
A9=[4*1/9 1/9]; 
A10=[5*1/9 1/9]; 
A11=[5*1/9 2*1/9]; 
A12=[4*1/9 2*1/9]; 
A13=[7*1/9 1/9]; 
A=[A1;A2;A3;A4;A5;A6;A7;A8;A9;A10;A11;A12;A13]; 
A(:,1) =A(:,1)*max(x_max-x_min,y_max-y_min)+ x_min;
A(:,2) =A(:,2)*max(x_max-x_min,y_max-y_min)+ y_min;
L =max(x_max-x_min,y_max-y_min);
buchangs = L/1000;% 搜索步长
% A=x;
%——————长出新的生长点————————————

for j=1:20000 
 R=rand(20000,1);
 a(j)=R(j);
     [m,n]=size(x);   
     B=ones(m,n);
     for i=1:m 
         B(i,1)=A(1,1); 
         B(i,2)=A(1,2); 
     end 
 D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h1=G.*w*ones(m,1);
     g1=1/h1;  
     for i=1:m 
         B(i,1)=A(2,1); 
         B(i,2)=A(2,2); 
      end 

 D=B-x;
E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h2=G.*w*ones(m,1); 
     g2=1/h2; 
     for i=1:m 
         B(i,1)=A(3,1); 
         B(i,2)=A(3,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h3=G.*w*ones(m,1); 
     g3=1/h3; 
     for i=1:m 
         B(i,1)=A(4,1); 
         B(i,2)=A(4,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h4=G.*w*ones(m,1); 
     g4=1/h4; 
     for i=1:m 
         B(i,1)=A(5,1); 
         B(i,2)=A(5,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h5=G.*w*ones(m,1); 
     g5=1/h5; 
     for i=1:m 
         B(i,1)=A(6,1); 
         B(i,2)=A(6,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h6=G.*w*ones(m,1); 
     g6=1/h6; 
     for i=1:m 
    B(i,1)=A(7,1); 
         B(i,2)=A(7,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h7=G.*w*ones(m,1); 
     g7=1/h7; 
     for i=1:m 
         B(i,1)=A(8,1); 
         B(i,2)=A(8,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h8=G.*w*ones(m,1); 
     g8=1/h8; 
     for i=1:m 
         B(i,1)=A(9,1); 
         B(i,2)=A(9,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h9=G.*w*ones(m,1); 
     g9=1/h9; 
     for i=1:m 
         B(i,1)=A(10,1); 
         B(i,2)=A(10,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h10=G.*w*ones(m,1); 
     g10=1/h10; 
     for i=1:m 
         B(i,1)=A(11,1); 
         B(i,2)=A(11,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
 G=F.^0.5; 
     h11=G.*w*ones(m,1); 
     g11=1/h11; 
     for i=1:m 
         B(i,1)=A(12,1); 
         B(i,2)=A(12,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h12=G.*w*ones(m,1); 
     g12=1/h12; 
     for i=1:m 
         B(i,1)=A(13,1); 
         B(i,2)=A(13,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h13=G.*w*ones(m,1); 
     g13=1/h13; 
h=[h1;h2;h3;h4;h5;h6;h7;h8;h9;h10;h11;h12;h13]; 
G=[g1;g2;g3;g4;g5;g6;g7;g8;g9;g10;g11;g12;g13]; 
k=G(1)+G(2)+G(3)+G(4)+G(5)+G(6)+G(7)+G(8)+G(9)+G(10)+G(11)+G(12)+G(13); 
     G(2)=G(1)+G(2); 
     G(3)=G(2)+G(3); 
     G(4)=G(3)+G(4); 
     G(5)=G(4)+G(5); 
     G(6)=G(5)+G(6); 
     G(7)=G(6)+G(7); 
     G(8)=G(7)+G(8); 
     G(9)=G(8)+G(9); 
     G(10)=G(9)+G(10); 
     G(11)=G(10)+G(11); 
     G(12)=G(11)+G(12); 
     G(13)=G(12)+G(13); 
     P=G./k; 
     if a(j)<P(1) ;
         b=1; 
     elseif a(j)<P(2),a(j)>P(1);
             b=2 ;
         elseif a(j)<P(3),a(j)>P(2) ;
             b=3; 
         else if a(j)<P(4),a(j)>P(3) ;
             b=4; 
         else if a(j)<P(5),a(j)>P(4) ;
             b=5; 
            else if a(j)<P(6),a(j)>P(5) ;
             b=6; 
            else if a(j)<P(7),a(j)>P(6) ;
               b=7; 
            else if a(j)<P(8),a(j)>P(7) ;
             b=8; 
            else if a(j)<P(9),a(j)>P(8) ;
             b=9; 
            else if a(j)<P(10),a(j)>P(9) ;
             b=10; 
            else if a(j)<P(11),a(j)>P(10) ;
             b=11; 
            else if a(j)<P(12),a(j)>P(11) ;
             b=12; 
            else if a(j)<P(13),a(j)>P(12) ;
             b=13; 
            end 
end 
end 
end 
end 
end 
end 
end 
end 
end 
end 
%——————————进入迭代——————  

J=[A(b,1), A(b,2);A(b,1)+buchangs,  A(b,2);A(b,1),  A(b,2)+buchangs;A(b,1)-buchangs , A(b,2);A(b,1), A(b,2)-buchangs];
    for i=1:m 
         B(i,1)=J(1,1); 
         B(i,2)=J(1,2); 
     end 
     D=B-x;
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h21=G.*w*ones(m,1); 
     g21 = 1/h21;
     for i=1:m 
         B(i,1)=J(2,1); 
         B(i,2)=J(2,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h22=G.*w*ones(m,1); 
     g22 = 1/h22;
     for i=1:m 
         B(i,1)=J(3,1); 
         B(i,2)=J(3,2); 
     end 
     D=B-x;
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2);
     end 
     G=F.^0.5; 
     h23=G.*w*ones(m,1); 
     g23 = 1/h23;
     for i=1:m 
         B(i,1)=J(4,1); 
         B(i,2)=J(4,2); 
     end 
     D=B-x;
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h24=G.*w*ones(m,1); 
     g24 = 1/h24;
     for i=1:m 
         B(i,1)=J(5,1); 
         B(i,2)=J(5,2); 
     end 
     D=B-x;
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h25=G.*w*ones(m,1); 
     g25 = 1/h25;
     h=[h21;h22;h23;h24;h25]; 
    G=[g21;g22;g23;g24;g25]; 
    k=G(1)+G(2)+G(3)+G(4)+G(5);  
    P=G./k; % 求出生长素浓度
    
    
    
    [x_max,y_max] = max(P) ;  
    A(b,:) = J(y_max,:);
      
end


% ————————取最优生长点

     [m,n]=size(x);   
     B=ones(m,n);
     for i=1:m 
         B(i,1)=A(1,1); 
         B(i,2)=A(1,2); 
     end 
 D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h1=G.*w*ones(m,1);
     g1=1/h1;  
     for i=1:m 
         B(i,1)=A(2,1); 
         B(i,2)=A(2,2); 
      end 

 D=B-x;
E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h2=G.*w*ones(m,1); 
     g2=1/h2; 
     for i=1:m 
         B(i,1)=A(3,1); 
         B(i,2)=A(3,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h3=G.*w*ones(m,1); 
     g3=1/h3; 
     for i=1:m 
         B(i,1)=A(4,1); 
         B(i,2)=A(4,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h4=G.*w*ones(m,1); 
     g4=1/h4; 
     for i=1:m 
         B(i,1)=A(5,1); 
         B(i,2)=A(5,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h5=G.*w*ones(m,1); 
     g5=1/h5; 
     for i=1:m 
         B(i,1)=A(6,1); 
         B(i,2)=A(6,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h6=G.*w*ones(m,1); 
     g6=1/h6; 
     for i=1:m 
    B(i,1)=A(7,1); 
         B(i,2)=A(7,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h7=G.*w*ones(m,1); 
     g7=1/h7; 
     for i=1:m 
         B(i,1)=A(8,1); 
         B(i,2)=A(8,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h8=G.*w*ones(m,1); 
     g8=1/h8; 
     for i=1:m 
         B(i,1)=A(9,1); 
         B(i,2)=A(9,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h9=G.*w*ones(m,1); 
     g9=1/h9; 
     for i=1:m 
         B(i,1)=A(10,1); 
         B(i,2)=A(10,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h10=G.*w*ones(m,1); 
     g10=1/h10; 
     for i=1:m 
         B(i,1)=A(11,1); 
         B(i,2)=A(11,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
 G=F.^0.5; 
     h11=G.*w*ones(m,1); 
     g11=1/h11; 
     for i=1:m 
         B(i,1)=A(12,1); 
         B(i,2)=A(12,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h12=G.*w*ones(m,1); 
     g12=1/h12; 
     for i=1:m 
         B(i,1)=A(13,1); 
         B(i,2)=A(13,2); 
     end 
     D=B-x; 
     E=D.^2; 
     for i=1:m 
         F(i)=E(i,1)+E(i,2); 
     end 
     G=F.^0.5; 
     h13=G.*w*ones(m,1); 
     g13=1/h13; 
h=[h1;h2;h3;h4;h5;h6;h7;h8;h9;h10;h11;h12;h13]; 
G=[g1;g2;g3;g4;g5;g6;g7;g8;g9;g10;g11;g12;g13]; 
k=G(1)+G(2)+G(3)+G(4)+G(5)+G(6)+G(7)+G(8)+G(9)+G(10)+G(11)+G(12)+G(13); 
P = G./k;
[x_max,y_max] = max(P);


A(y_max,:)
P
   



