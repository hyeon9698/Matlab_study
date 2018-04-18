<h1 id="matlab">matlab</h1>
<blockquote>
<p> math + laboratory</p>
</blockquote>
<h2 id="-">온라인 도움</h2>
<ol>
<li><p>help : 도움 받을수 있는 주제 열거</p>
</li>
<li><p>Helpwin : 양방향 도움 창을 오픈함</p>
</li>
<li><p>helpdesk : 웹브라우져 기반의 도움기능을 오픈함</p>
</li>
<li><p>help topic : topic에 관한 도움을 제공함</p>
</li>
<li><p>lookfor : 문자열을 포함하는 도움 주제를 열거함</p>
</li>
<li><p>demo : 데모 프로그램을 시작함</p>
</li>
</ol>
<h2 id="-">작업공간정보</h2>
<ol>
<li><p>who : 변수를 열거</p>
<blockquote>
<p>사용자 변수:
a  b</p>
</blockquote>
</li>
<li><p>whos : 변수와 변수의 크기를 열거</p>
<blockquote>
<p>Name      Size            Bytes  Class     Attributes
a         1x1                 8  double
b         1x1                 8  double</p>
</blockquote>
</li>
<li><p>what : 디스크 안의 m-, mat-, mex- 파일을 열거함</p>
<blockquote>
<p>현재 폴더 C:\Users\riyenas0925\Documents\MATLAB의 MATLAB Code files
Untitled</p>
</blockquote>
</li>
<li><p>clear :작업공간과  모든 변수를 지움</p>
</li>
<li><p>clear x y z : x, y, z 변수를 지움</p>
</li>
<li><p>clc : 명령창을 지움</p>
</li>
<li><p>home : 명령창을 지움</p>
</li>
<li><p>clf : 그림창을 지움</p>
</li>
</ol>
<h2 id="-">디렉토리 정보</h2>
<ol>
<li><p>pwd : 현재 작업 디렉토리를 나타냄</p>
</li>
<li><p>cd : 련재 작업 디렉토리를 변경함</p>
</li>
<li><p>dir : 현재 디렉토리의 내용을 열거함</p>
</li>
<li><p>mkdir : 디렉토리를 생성함</p>
</li>
</ol>
<h2 id="-">일반적인 정보</h2>
<ol>
<li><p>computer : 사용하고 있는 컴퓨터의 형태를 알려줌</p>
</li>
<li><p>clock : 시간과 날짜를 벡터로서 알려줌</p>
</li>
<li><p>date : 날짜를 문자열로 알려줌</p>
</li>
<li><p>more : 화면 크기에 맞추어 페이지 당 출력을 조절함</p>
</li>
<li><p>ver : 매트랩의 라이센스와 버전에 관한 정보를 줌</p>
</li>
</ol>
<h2 id="-">종료</h2>
<ol>
<li><p>^c : 현재 명령의 수행을 중단</p>
</li>
<li><p>quit : 매트랩을 종료함</p>
</li>
<li><p>exit : 매트랩을 종료함</p>
</li>
</ol>
<h2 id="-">수학</h2>
<h3 id="-">산술 연산자 : + - * / ^</h3>
<blockquote>
<p>element by element 으로 연산하려면 . 연산자를 사용해야한다.</p>
</blockquote>
<h3 id="-">지수와 로그함수</h3>
<ol>
<li><p>e^3 -&gt; exp(3)</p>
</li>
<li><p>lnx -&gt; log(x)</p>
</li>
<li><p>logx -&gt; log10(x)</p>
</li>
<li><p>sqrt(x) -&gt; sqrt(x)</p>
</li>
</ol>
<h3 id="-">삼각함수</h3>
<ol>
<li><p>sin, cos, tan, cot, sec, csc</p>
</li>
<li><p>asin, acos, atan</p>
</li>
</ol>
<h3 id="-">복소수</h3>
<ol>
<li>i, j 는 허수 sqrt(-1) 로 인식한다.</li>
</ol>
<h3 id="-">벡터의 생성</h3>
<ol>
<li><p>a = 0 : 10 : 100  </p>
<blockquote>
<p>0 &lt;=  a &lt;= 100  (101개)   </p>
</blockquote>
</li>
<li><p>b = 0 : pi/50 : 2*pi  </p>
</li>
<li><p>u = 2 : 10  </p>
</li>
<li><p>a = 100 : -7 : 50</p>
<blockquote>
<p>100 93 86 79 72 65 58 51</p>
</blockquote>
</li>
<li><p>u = linspace(a, b, n)  </p>
<blockquote>
<p>u = a : (b - a)/(n - 1) : b  두개는 같다.</p>
</blockquote>
</li>
<li><p>v = logspace(a,b,n)  </p>
<blockquote>
<p>v = 10.^(linspace(a,b,n))  두개는 같다.</p>
</blockquote>
</li>
</ol>
<h3 id="-">유틸리티 행렬</h3>
<ol>
<li><p>eye(m,n)</p>
<blockquote>
<p>eye(3,3)  </p>
<p>1 0 0<br>0 1 0<br>0 0 1  </p>
</blockquote>
</li>
<li><p>zeros(m,n)</p>
<blockquote>
<p>zeros(3,3)</p>
<p>0 0 0<br>0 0 0<br>0 0 0  </p>
</blockquote>
</li>
<li><p>ones(m,n)</p>
<blockquote>
<p>ones(3,3)</p>
<p>1 1 1<br>1 1 1<br>1 1 1  </p>
</blockquote>
</li>
<li><p>rand(m,n)</p>
<blockquote>
<p>rand(3,3)</p>
<p>2 1 4
5 8 2
1 3 8</p>
</blockquote>
</li>
<li><p>diag(v)</p>
<blockquote>
<p>행렬의 diagonal을 추출</p>
</blockquote>
</li>
<li><p>diag(v,1)</p>
<blockquote>
<p>행렬의 diagonal에서 위로 1칸을 추출</p>
</blockquote>
</li>
<li><p>rot90(A)</p>
<blockquote>
<p>행렬을 90도 회전한다.</p>
</blockquote>
</li>
<li><p>fliplr(A)</p>
<blockquote>
<p>행렬을 좌우 반전한다.</p>
</blockquote>
</li>
<li><p>flipud(A)</p>
<blockquote>
<p>행렬을 상하 반전한다.</p>
</blockquote>
</li>
<li><p>tril(A)</p>
<blockquote>
<p>아래 삼각 부분을 추출</p>
</blockquote>
</li>
<li><p>triu(A)</p>
<blockquote>
<p>행렬의 위부분을 추출</p>
</blockquote>
</li>
<li><p>reshape(A,[m,n])</p>
<blockquote>
<p>A의 행렬을 mxn 행렬로 변환한다.</p>
<p>A =<br>1  4  7<br>2  5  9<br>3  6 10 </p>
<p>reshape(A,[1, 9])<br>A =<br>1 2 3 4 5 6 7 8 9 </p>
</blockquote>
</li>
</ol>
<h3 id="-">행렬의 조작</h3>
<ol>
<li><p>A = rand(3)  </p>
<blockquote>
<p>A = rand(3,3) 하고 같다</p>
</blockquote>
</li>
<li><p>A( : , 2) = [ ]</p>
<blockquote>
<p>2행 모든 열을 삭제 한다.</p>
</blockquote>
</li>
<li><p>A([1,3] , : ) = [ 1 2 3 ; 4 5 6]</p>
<blockquote>
<p>1행과 3행을  1 2 3 과 4 5 6으로 치환한다.
이때 열은 3열이어야 한다.</p>
</blockquote>
</li>
<li><p>A = [ ]</p>
<blockquote>
<p>빈행렬 만들기</p>
</blockquote>
</li>
<li><p>A( : , 3 : 5) = [ ]</p>
<blockquote>
<p>3열에서 5열까지 삭제</p>
</blockquote>
</li>
<li><p>A([1 3] , : ) = [ ]</p>
<blockquote>
<p>1행과 3행을 삭제</p>
</blockquote>
</li>
<li><p>B = A([1 3] , [1 3])</p>
<blockquote>
<p>1행 3행, 1열 3열 교차점의 값을 추</p>
</blockquote>
</li>
<li><p>u(5 : length(u)) = [ ]</p>
<blockquote>
<p>1에서 4를 제외한 백터 u의 모든 성분</p>
</blockquote>
</li>
<li><p>A = [A ; b]</p>
<blockquote>
<p>A<br>+<br>b</p>
</blockquote>
</li>
<li><p>A = [A   a]</p>
<blockquote>
<p>A + a</p>
</blockquote>
</li>
<li><p>A = A(m,n)</p>
<blockquote>
<p>행렬 A의 m행 n열의 값을 A에 넣는</p>
</blockquote>
</li>
<li><p>A(m,n) = a</p>
<blockquote>
<p>행렬 A의 m행 n열에 a값을 넣는다</p>
</blockquote>
</li>
<li><p>sin(A)</p>
<blockquote>
<p>element by element 행렬</p>
</blockquote>
</li>
<li><p>A'</p>
<blockquote>
<p>A transpose</p>
</blockquote>
</li>
<li><p>[col, row] = find(B == max(B(:)))</p>
<blockquote>
<p>행렬 B에서 가장 큰값을 찾은다음 col, row에 값을 넣는다.</p>
</blockquote>
</li>
<li><p>[col, row] = find(B == min(B(:)))</p>
<blockquote>
<p>행렬 B에서 가장 큰값을 찾은다음 col, row에 값을 넣는다.</p>
</blockquote>
</li>
<li><p>[a, b] = max(B);  </p>
<blockquote>
<p>각 열에서 제일 큰 값을 벡터로 a에 넣는다.<br>a 값에 해당하는  행의 값을 벡터로 b에 넣는다.  </p>
</blockquote>
</li>
<li><p>[ c ,col] = max(a')  </p>
<blockquote>
<p>a의 값을 transpose 하면 벡터 a의 최대값과 행값이 나오게 된다. </p>
</blockquote>
</li>
<li><p>row = b(col) </p>
<blockquote>
<p>행값을 b에 넣으면 </p>
</blockquote>
</li>
</ol>
<h3 id="-">행렬 및 배열 연산</h3>
<ol>
<li><p>A+B , A-B : 크기가 같아야 한다.  </p>
</li>
<li><p>A*B : A의 열수가 B의 행수와 같아야한다.  </p>
</li>
<li><p>A/B : 동일 크기의 정방행렬 A,B에 대하여 유효하며 AB^-1과 동일  </p>
</li>
<li><p>A^2 :  A가 정방일 경우에만 의미를 가진다. A*A와 동일  </p>
</li>
<li><p>A + a , A * a, A / b : a가 스칼라일때 </p>
</li>
</ol>
<h3 id="-">출력</h3>
<ol>
<li><p>plot(x,y)</p>
<blockquote>
<p>x,y 축으로 이루어진 실선 그래프를 그린다.</p>
</blockquote>
</li>
<li><p>plot(x,y,'--')</p>
<blockquote>
<p>x,y 축으로 이루어진 파쇄선 그래프를 그린다.</p>
</blockquote>
</li>
<li><p>plot3(x, y, z)</p>
<blockquote>
<p>x,y,z 축으로 이루어진 실선 그래프를 그린다,</p>
</blockquote>
</li>
<li><p>semilogx(x,y)</p>
<blockquote>
<p>x 축을 log10 스케일로 플롯한다.</p>
</blockquote>
</li>
<li><p>semilogy(x,y)</p>
<blockquote>
<p>y 축을 log10 스케일로 플롯한다.</p>
</blockquote>
</li>
<li><p>loglog(x,y)</p>
<blockquote>
<p>x,y 축을 log10 스케일로 플롯한다.</p>
</blockquote>
</li>
<li><p>subplot(a,b,c)</p>
<blockquote>
</blockquote>
</li>
<li><p>figure(A)</p>
<blockquote>
</blockquote>
</li>
<li><p>spy(A)</p>
<blockquote>
</blockquote>
</li>
</ol>
<h3 id="-">함수</h3>
<pre class="editor-colors lang-matlab"><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>function&nbsp;=&nbsp;plot_graph(a,&nbsp;b,&nbsp;c,&nbsp;x);</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>%2Dpicture&nbsp;function&nbsp;test</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>%출력&nbsp;x,&nbsp;y,&nbsp;z&nbsp;/&nbsp;입력&nbsp;a,&nbsp;b,&nbsp;c</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>&nbsp;</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>i&nbsp;=&nbsp;a.*min(x).^2&nbsp;+&nbsp;b.*min(x)&nbsp;+&nbsp;c</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>j&nbsp;=&nbsp;a.*max(x).^2&nbsp;+&nbsp;b.*max(x)&nbsp;+&nbsp;c</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>k&nbsp;=&nbsp;a.*median(x).^2&nbsp;+&nbsp;b.*(median(x))&nbsp;+&nbsp;c</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>&nbsp;</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>&nbsp;</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>y&nbsp;=&nbsp;&nbsp;a.*x.^2&nbsp;+&nbsp;b.*x&nbsp;+&nbsp;c;</span></span></div><div class="line"><span class="syntax--text syntax--plain syntax--null-grammar"><span>plot(y,x);</span></span></div></pre>
