# Spring-ShoppingMall Project

<div align="center">

![1](https://user-images.githubusercontent.com/126320580/223390212-9aff849d-ebf2-4eca-b6a4-32bb1648d211.png)

![4](https://user-images.githubusercontent.com/126320580/223402701-d1e6deab-8a4c-4200-b84f-aad971c62db1.png)

![shop99z](https://user-images.githubusercontent.com/126320580/223616903-0d5abf6a-b014-4555-82d3-c8e5003993e9.png)

&nbsp;

<h3>💡 프로젝트 주제 💡</h3>
<p>Spring을 통해 여성 의류 쇼핑몰 제작</p>
<h5>Spring, JPA, Spring Security, MySQL, JSP 등 기술의 이론적 학습<br/>
사용되는 기술에 대한 개념과 동작원리를 제대로 이해하기 위한 쇼핑몰 웹사이트 구현</h5>

&nbsp;

<h3>📆 프로젝트 기간 📆</h3>
<p>2022.10.12 ~ 2022.11.05</p>

&nbsp;

<h3>🧑‍💻 프로젝트 구분 🧑‍💻</h3>
<p>팀 프로젝트 Shop99z (3명) | <span>FrontEnd / BackEnd</p>

&nbsp;

<h3>🔧 사용 기술스택 🔧</h2>
<table>
    <tr>
        <td>Main</td>
        <td>Java</td>
    </tr>
    <tr>
        <td>FE</td>
        <td>HTML, CSS, JavaScript</td>
    </tr>
    <tr>
        <td>BE</td>
        <td>Spring, MySql</td>
    </tr>
    <tr>
        <td>TOOL</td>
        <td>Github, Eclipse, DBeaver, Notion, Slack</td>
    </tr>
    <tr>
        <td>SERVER</td>
        <td>Apache Tomcat</td>
    </tr>
</table>

&nbsp;

<h3>📝 시사점 📝</h2>
</div>
🙂 Spring의 동작원리를 몸소 알게된 계기가 됨<br/>
🙂 데이터를 join하고, foreign key를 통해 테이블 간 관계를 만들어가는 과정에서 SQL에 익숙해질 수 있게됨<br/>
😓 Java와 Spring에 처음 접하며 어려움을 느꼈고, 그로인해 많은 시행착오를 겪게됨

&nbsp; ➡ [notion](https://tree-pram-38c.notion.site/shop99z-Error-9701c02a4c524a86b70809eb2d7eb1a5)<br/>
😓 Github commit 과정에서 많은 충돌이 발생함<br/>

&nbsp;

---

&nbsp;

## 구현 기능

#### 1. 로그인/회원가입

- 아이디는 '@'을 포함하는 이메일 형식으로 기입
- 회원가입 시 DB에 계정 추가
- BCrypt를 통해 비밀번호 암호화
- 관리자와 일반회원 구분

![1](https://user-images.githubusercontent.com/126320580/223614885-137a888e-9464-4b01-8eff-8177edd4dd3f.jpg)

&nbsp;
&nbsp;

#### 2. 관리자 페이지

- 상품 등록 : 1차-2차 카테고리 구분, 위지윅 에디터 사용
- 상품 목록
- 주문 관리(배송상태관리) : 배송완료 시 재고량 1 감소
- 상품평 관리

![2](https://user-images.githubusercontent.com/126320580/223614943-ace1a66f-311c-47de-908c-fec81db9e247.jpg)

&nbsp;
&nbsp;

#### 3. 장바구니/주문내역

- 상품 개수 선택 후 장바구니 담기
- 상품 전체/선택 삭제
- 상품 총 결제 금액 표기
- 주소 API 활용

![3](https://user-images.githubusercontent.com/126320580/223617628-caf565bb-e95f-4a4c-a77a-d8e606e5a585.jpg)

&nbsp;
&nbsp;

#### 4. 상품평

- 로그인한 회원만 상품평 작성
- 본인이 작성한 상품평만 수정/삭제

![4](https://user-images.githubusercontent.com/126320580/223616083-c631ee0c-c0f9-4ee9-9831-3767aa7500d2.jpg)
