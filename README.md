# JTP-SKINQURATOR

제주대학교 제주테크노파크 화장품 플랫폼 (JTP-SKINQURATOR)은 빅데이터, 인공지능, 증강현실 기술을 접목한 **맞춤형 화장품 실증 연구 기반 구축을 위한 플랫폼**입니다. 이 프로젝트는 다양한 공공 데이터를 수집하고, 사용자 맞춤형 분석 및 시각화를 지원하며, 보안이 강화된 웹 기반 서비스로 구성되어 있습니다.

## 📌 프로젝트 개요

- **기간**: 2022.10 ~ 2023.02
- **주관**: 제주대학교, 제주테크노파크
- **목적**: 화장품 관련 데이터 수집·가공·저장 및 서비스 제공 플랫폼 구축

---

## ⚙️ 사용 기술 스택

**백엔드 및 서버**
- `Spring Boot`
- `MongoDB`
- `MySQL`
- `REST API`
- `OpenAPI`
- `JSON Web Token (JWT)`
- `Apache Tomcat`
- `Shell Script`

**프론트엔드**
- `HTML5`, `CSS3`, `Ajax`, `jQuery`
- `JSON`

**개발 및 배포 도구**
- `Git`, `Bitbucket`, `SourceTree`
- `Eclipse`, `Visual Studio Code`, `Confluence`
- `Gradle`, `Docker`

---

## 📁 주요 디렉토리 구조

```
JTP-SKINQURATOR-1.0.3/
├── src/
│   ├── main/
│   │   ├── java/              # Spring Boot 백엔드 로직
│   │   ├── resources/         # application.yml, mapper, 정적 자원
│   │   └── webapp/
│   │       └── views/         # JSP/HTML View 페이지
│   └── test/                  # 단위 테스트
├── build.gradle
├── Dockerfile
└── README.md
```

---

## ✅ 주요 기능 설명

| 기능                         | 설명 |
|------------------------------|------|
| 🔍 **공공데이터 연동**       | OpenAPI를 통해 공공 포털(https://www.data.go.kr) 데이터 수집 |
| 🧬 **화장품 성분 분석**      | 사용자 입력 기반 성분 안전성 및 효능 정보 제공 |
| 📈 **시각화 대시보드**       | 사용자 별 이용 정보 기반 통계 차트 제공 |
| 🔐 **JWT 기반 인증/인가**    | 사용자 인증 및 권한 제어 기능 |
| 🧾 **관리자 시스템**         | 사용자/데이터/접속 로그 통합 관리 |
| 🐳 **Docker 환경 구성**      | 개발 및 운영 환경 통합을 위한 Docker 지원 |
| 🔄 **RESTful API 연동**      | 프론트-백엔드 분리 및 확장성 고려한 설계 |

---

## 🙋 개발자 역할 (이민영)

- 화장품 맞춤형 추천 알고리즘 개발
- OpenAPI 연동 모듈 설계 및 구현
- 관리자 시스템 UI/백엔드 개발
- Docker 기반 배포 스크립트 작성
- 사용자 인증/인가 로직(JWT) 구현

---

## 📂 관련 문서 및 참고

- 공공데이터 API 샘플: [openapi link](https://www.data.go.kr/tcs/puc/selectPublicUseCaseView.do?pageIndex=1&prcuseCaseSn=1038470)
- [JTP 플랫폼 운영 가이드 문서] (내부 비공개)

---

> 📌 해당 프로젝트는 정부과제 수행의 일환으로 진행되었으며, 실 서비스가 아닌 연구용 목적의 실증 시스템입니다.
