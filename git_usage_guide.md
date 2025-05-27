# Git 사용법 가이드

## 목차
1. [Git 기본 개념](#git-기본-개념)
2. [Git 설치](#git-설치)
3. [Git 초기 설정](#git-초기-설정)
4. [저장소 관리](#저장소-관리)
5. [기본 명령어](#기본-명령어)
6. [브랜치 관리](#브랜치-관리)
7. [원격 저장소](#원격-저장소)
8. [협업 워크플로우](#협업-워크플로우)
9. [고급 기능](#고급-기능)
10. [문제 해결](#문제-해결)

## Git 기본 개념

### Git이란?
Git은 분산 버전 관리 시스템(DVCS)으로, 파일의 변경 이력을 관리하고 여러 개발자 간의 협업을 지원합니다.

### 주요 용어
- **Repository (저장소)**: 프로젝트의 모든 파일과 변경 이력을 저장하는 공간
- **Commit**: 파일의 변경사항을 저장하는 단위
- **Branch**: 독립적인 작업 환경을 제공하는 가지
- **Merge**: 브랜치를 합치는 작업
- **Clone**: 원격 저장소를 로컬로 복사
- **Push**: 로컬 변경사항을 원격 저장소로 전송
- **Pull**: 원격 저장소의 변경사항을 로컬로 가져오기

## Git 설치

### Windows
```bash
# Chocolatey 사용
choco install git

# 또는 공식 웹사이트에서 다운로드
# https://git-scm.com/download/win
```

### macOS
```bash
# Homebrew 사용
brew install git

# 또는 Xcode Command Line Tools
xcode-select --install
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install git
```

## Git 초기 설정

### 사용자 정보 설정
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### 기본 에디터 설정
```bash
git config --global core.editor "code --wait"  # VS Code
git config --global core.editor "vim"          # Vim
```

### 설정 확인
```bash
git config --list
git config user.name
git config user.email
```

## 저장소 관리

### 새 저장소 생성
```bash
mkdir my-project
cd my-project
git init
```

### 기존 저장소 복제
```bash
git clone https://github.com/username/repository.git
git clone https://github.com/username/repository.git custom-folder-name
```

## 기본 명령어

### 파일 상태 확인
```bash
git status                # 현재 상태 확인
git status -s            # 간단한 형태로 상태 확인
```

### 파일 추가 및 커밋
```bash
git add filename.txt     # 특정 파일 스테이징
git add .               # 모든 변경된 파일 스테이징
git add *.js            # 특정 확장자 파일들만 스테이징

git commit -m "커밋 메시지"              # 커밋 생성
git commit -am "메시지"                  # 추가와 커밋을 동시에
git commit --amend -m "수정된 메시지"    # 마지막 커밋 수정
```

### 변경사항 확인
```bash
git diff                    # 워킹 디렉토리와 스테이징 영역 비교
git diff --staged          # 스테이징 영역과 마지막 커밋 비교
git diff HEAD~1            # 마지막 커밋과 그 이전 커밋 비교
```

### 커밋 히스토리
```bash
git log                     # 전체 커밋 히스토리
git log --oneline          # 한 줄로 간단히 표시
git log --graph            # 그래프 형태로 표시
git log --author="이름"     # 특정 작성자의 커밋만 표시
git log --since="2024-01-01"  # 특정 날짜 이후의 커밋
```

### 파일 되돌리기
```bash
git checkout -- filename.txt    # 워킹 디렉토리의 변경사항 취소
git reset HEAD filename.txt     # 스테이징에서 제거
git reset --soft HEAD~1         # 마지막 커밋을 취소하되 변경사항은 유지
git reset --hard HEAD~1         # 마지막 커밋을 완전히 취소
```

## 브랜치 관리

### 브랜치 기본 操작
```bash
git branch                  # 브랜치 목록 확인
git branch branch-name      # 새 브랜치 생성
git checkout branch-name    # 브랜치 전환
git checkout -b new-branch  # 브랜치 생성과 전환을 동시에

# Git 2.23 이후 권장 명령어
git switch branch-name      # 브랜치 전환
git switch -c new-branch    # 브랜치 생성과 전환
```

### 브랜치 병합
```bash
git checkout main           # main 브랜치로 전환
git merge feature-branch    # feature-branch를 main으로 병합
git merge --no-ff feature-branch  # fast-forward 없이 병합
```

### 브랜치 삭제
```bash
git branch -d branch-name   # 병합된 브랜치 삭제
git branch -D branch-name   # 강제 삭제
```

## 원격 저장소

### 원격 저장소 관리
```bash
git remote                          # 원격 저장소 목록
git remote -v                       # 상세 정보와 함께 표시
git remote add origin https://github.com/username/repo.git  # 원격 저장소 추가
git remote remove origin            # 원격 저장소 제거
git remote rename origin upstream   # 원격 저장소 이름 변경
```

### 원격 저장소와 동기화
```bash
git fetch origin           # 원격 저장소의 변경사항을 가져오기 (병합 안함)
git pull origin main       # 원격 저장소의 변경사항을 가져와서 병합
git push origin main       # 로컬 변경사항을 원격 저장소로 전송
git push -u origin main    # 처음 푸시할 때 upstream 설정
```

### 원격 브랜치
```bash
git checkout -b local-branch origin/remote-branch  # 원격 브랜치를 기반으로 로컬 브랜치 생성
git push origin feature-branch                     # 로컬 브랜치를 원격으로 푸시
git push origin --delete feature-branch            # 원격 브랜치 삭제
```

## 협업 워크플로우

### Git Flow
```bash
# 기능 개발
git checkout -b feature/new-feature develop
# 개발 작업 후
git checkout develop
git merge --no-ff feature/new-feature
git branch -d feature/new-feature

# 릴리스 준비
git checkout -b release/1.2.0 develop
# 버그 수정 후
git checkout main
git merge --no-ff release/1.2.0
git tag -a 1.2.0
git checkout develop
git merge --no-ff release/1.2.0
```

### GitHub Flow
```bash
# 1. 기능 브랜치 생성
git checkout -b feature-branch

# 2. 작업 후 커밋
git add .
git commit -m "Add new feature"

# 3. 원격에 푸시
git push origin feature-branch

# 4. Pull Request 생성 (GitHub에서)

# 5. 코드 리뷰 후 병합
# 6. 로컬에서 정리
git checkout main
git pull origin main
git branch -d feature-branch
```

## 고급 기능

### Stash (임시 저장)
```bash
git stash                    # 현재 변경사항을 임시 저장
git stash push -m "메시지"   # 메시지와 함께 stash
git stash list              # stash 목록 확인
git stash apply             # 최근 stash 적용
git stash apply stash@{2}   # 특정 stash 적용
git stash drop              # 최근 stash 삭제
git stash pop               # stash 적용 후 삭제
```

### Rebase
```bash
git rebase main                    # 현재 브랜치를 main 기준으로 재배치
git rebase -i HEAD~3              # 대화형 리베이스로 마지막 3개 커밋 수정
git rebase --continue             # 충돌 해결 후 리베이스 계속
git rebase --abort                # 리베이스 취소
```

### Cherry-pick
```bash
git cherry-pick commit-hash       # 특정 커밋만 현재 브랜치에 적용
git cherry-pick commit1 commit2   # 여러 커밋 적용
```

### 태그
```bash
git tag                          # 태그 목록
git tag v1.0.0                   # 라이트웨이트 태그 생성
git tag -a v1.0.0 -m "Release version 1.0.0"  # 주석 태그 생성
git push origin v1.0.0           # 태그를 원격에 푸시
git push origin --tags           # 모든 태그 푸시
```

## 문제 해결

### 일반적인 문제들

#### 1. 커밋 메시지 수정
```bash
git commit --amend -m "새로운 메시지"
```

#### 2. 마지막 커밋에 파일 추가
```bash
git add forgotten-file.txt
git commit --amend --no-edit
```

#### 3. 병합 충돌 해결
```bash
# 충돌 발생 시
git status                    # 충돌 파일 확인
# 파일 수동 편집 후
git add conflicted-file.txt
git commit
```

#### 4. 잘못된 브랜치에서 작업한 경우
```bash
git stash                     # 현재 작업 저장
git checkout correct-branch   # 올바른 브랜치로 이동
git stash pop                # 작업 내용 복원
```

#### 5. 커밋 되돌리기
```bash
git revert commit-hash        # 특정 커밋의 변경사항을 되돌리는 새 커밋 생성
git reset --hard HEAD~1       # 마지막 커밋을 완전히 제거 (주의!)
```

#### 6. .gitignore 파일
```bash
# .gitignore 파일 예시
node_modules/
*.log
.env
dist/
.DS_Store
```

### 유용한 Git 별칭(Alias)
```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'
```

### 성능 최적화
```bash
git gc                        # 가비지 컬렉션 실행
git prune                     # 불필요한 객체 제거
git fsck                      # 저장소 무결성 검사
```

## 마무리

이 가이드는 Git의 기본적인 사용법부터 고급 기능까지 포함하고 있습니다. Git을 효과적으로 사용하기 위해서는:

1. 자주 커밋하되, 의미 있는 단위로 나누어 커밋하세요
2. 명확하고 일관된 커밋 메시지를 작성하세요
3. 브랜치를 적극 활용하여 기능별로 작업을 분리하세요
4. 정기적으로 원격 저장소와 동기화하세요
5. 팀과 일관된 워크플로우를 사용하세요

더 자세한 정보는 [Git 공식 문서](https://git-scm.com/doc)를 참조하세요.
