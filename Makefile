.PHONY: help install dev build preview clean lint format validate test commit-check hooks-install

GREEN  := \033[0;32m
YELLOW := \033[0;33m
RED    := \033[0;31m
RESET  := \033[0m

help:
	@echo "$(GREEN)React Skeleton - Comandos Disponíveis$(RESET)"
	@echo ""
	@echo "$(YELLOW)🚀 Setup Inicial:$(RESET)"
	@echo "  make setup            - Setup completo (instala deps + hooks + valida + inicia dev)"
	@echo ""
	@echo "$(YELLOW)Desenvolvimento:$(RESET)"
	@echo "  make install          - Instala todas as dependências"
	@echo "  make dev              - Inicia servidor de desenvolvimento"
	@echo "  make preview          - Preview da build de produção"
	@echo ""
	@echo "$(YELLOW)Build:$(RESET)"
	@echo "  make build            - Gera build de produção"
	@echo "  make clean            - Remove arquivos de build"
	@echo ""
	@echo "$(YELLOW)Qualidade de Código:$(RESET)"
	@echo "  make lint             - Verifica erros ESLint"
	@echo "  make lint-fix         - Corrige erros ESLint automaticamente"
	@echo "  make format           - Formata código com Prettier"
	@echo "  make format-check     - Verifica formatação sem modificar"
	@echo "  make type-check       - Valida TypeScript"
	@echo "  make validate         - Executa todas as validações (type + lint + format)"
	@echo ""
	@echo "$(YELLOW)Git Hooks:$(RESET)"
	@echo "  make hooks-install    - Instala git hooks (Husky)"
	@echo "  make commit-check     - Simula verificações do pre-commit"
	@echo ""
	@echo "$(YELLOW)Utilitários:$(RESET)"
	@echo "  make clean-all        - Remove node_modules e arquivos de build"
	@echo "  make reinstall        - Reinstala todas as dependências"
	@echo "  make update           - Atualiza dependências"
	@echo "  make audit            - Verifica vulnerabilidades"
	@echo ""

setup:
	@echo "$(GREEN)🎉 Iniciando setup completo do React Skeleton...$(RESET)"
	@echo ""
	@echo "$(YELLOW)Passo 1/6: Instalando dependências...$(RESET)"
	@npm install
	@echo "$(GREEN)✅ Dependências instaladas!$(RESET)"
	@echo ""
	@echo "$(YELLOW)Passo 2/6: Configurando git hooks (Husky)...$(RESET)"
	@npm run prepare
	@echo "$(GREEN)✅ Hooks configurados!$(RESET)"
	@echo ""
	@echo "$(YELLOW)Passo 3/6: Formatando código...$(RESET)"
	@npm run format
	@echo "$(GREEN)✅ Código formatado!$(RESET)"
	@echo ""
	@echo "$(YELLOW)Passo 4/6: Validando TypeScript...$(RESET)"
	@npm run type-check
	@echo "$(GREEN)✅ TypeScript validado!$(RESET)"
	@echo ""
	@echo "$(YELLOW)Passo 5/6: Verificando ESLint...$(RESET)"
	@npm run lint
	@echo "$(GREEN)✅ ESLint verificado!$(RESET)"
	@echo ""
	@echo "$(YELLOW)Passo 6/6: Exibindo informações do projeto...$(RESET)"
	@echo ""
	@echo "$(GREEN)📊 Informações do Projeto:$(RESET)"
	@echo "  Node: $$(node --version)"
	@echo "  NPM: $$(npm --version)"
	@echo "  Branch: $$(git branch --show-current 2>/dev/null || echo 'N/A')"
	@echo ""
	@echo "$(GREEN)✅ Setup completo! Tudo pronto para desenvolvimento! 🚀$(RESET)"
	@echo ""
	@echo "$(YELLOW)📝 Próximos passos:$(RESET)"
	@echo "  1. Execute 'make dev' para iniciar o servidor de desenvolvimento"
	@echo "  2. Leia DEVELOPMENT.md para guia completo"
	@echo "  3. Leia SETUP.md para entender o workflow"
	@echo ""
	@read -p "$(YELLOW)Deseja iniciar o servidor de desenvolvimento agora? (s/N): $(RESET)" answer; \
	if [ "$$answer" = "s" ] || [ "$$answer" = "S" ]; then \
		echo ""; \
		echo "$(GREEN)🚀 Iniciando servidor...$(RESET)"; \
		npm run dev; \
	else \
		echo ""; \
		echo "$(GREEN)👍 Ok! Execute 'make dev' quando quiser iniciar.$(RESET)"; \
	fi

install:
	@echo "$(GREEN)📦 Instalando dependências...$(RESET)"
	npm install
	@echo "$(GREEN)✅ Dependências instaladas!$(RESET)"

dev:
	@echo "$(GREEN)🚀 Iniciando servidor de desenvolvimento...$(RESET)"
	npm run dev

build:
	@echo "$(GREEN)🔨 Gerando build de produção...$(RESET)"
	npm run build
	@echo "$(GREEN)✅ Build concluída! Arquivos em ./dist$(RESET)"

preview:
	@echo "$(GREEN)👀 Iniciando preview da build...$(RESET)"
	npm run preview

clean:
	@echo "$(YELLOW)🧹 Limpando arquivos de build...$(RESET)"
	rm -rf dist build .vite
	@echo "$(GREEN)✅ Arquivos de build removidos!$(RESET)"

lint:
	@echo "$(GREEN)🔍 Verificando código com ESLint...$(RESET)"
	npm run lint

lint-fix:
	@echo "$(GREEN)🔧 Corrigindo erros ESLint...$(RESET)"
	npm run lint:fix
	@echo "$(GREEN)✅ Correções aplicadas!$(RESET)"

format:
	@echo "$(GREEN)✨ Formatando código com Prettier...$(RESET)"
	npm run format
	@echo "$(GREEN)✅ Código formatado!$(RESET)"

format-check:
	@echo "$(GREEN)📋 Verificando formatação...$(RESET)"
	npm run format:check

type-check:
	@echo "$(GREEN)📘 Validando TypeScript...$(RESET)"
	npm run type-check
	@echo "$(GREEN)✅ Tipos validados!$(RESET)"

validate:
	@echo "$(GREEN)🎯 Executando todas as validações...$(RESET)"
	@echo ""
	@echo "$(YELLOW)1/3 - Type Check...$(RESET)"
	@npm run type-check
	@echo ""
	@echo "$(YELLOW)2/3 - Lint...$(RESET)"
	@npm run lint
	@echo ""
	@echo "$(YELLOW)3/3 - Format Check...$(RESET)"
	@npm run format:check
	@echo ""
	@echo "$(GREEN)✅ Todas as validações passaram!$(RESET)"

hooks-install:
	@echo "$(GREEN)🪝 Instalando git hooks...$(RESET)"
	npm run prepare
	@echo "$(GREEN)✅ Hooks instalados!$(RESET)"

commit-check:
	@echo "$(GREEN)🔍 Simulando verificações do pre-commit...$(RESET)"
	@echo ""
	@echo "$(YELLOW)Executando lint-staged...$(RESET)"
	npx lint-staged
	@echo ""
	@echo "$(GREEN)✅ Commit check passou!$(RESET)"

clean-all: clean
	@echo "$(YELLOW)🗑️  Removendo node_modules...$(RESET)"
	rm -rf node_modules package-lock.json
	@echo "$(GREEN)✅ Tudo limpo!$(RESET)"

reinstall: clean-all install
	@echo "$(GREEN)✅ Dependências reinstaladas!$(RESET)"

update:
	@echo "$(GREEN)📦 Atualizando dependências...$(RESET)"
	npm update
	@echo "$(GREEN)✅ Dependências atualizadas!$(RESET)"

audit:
	@echo "$(GREEN)🔒 Verificando vulnerabilidades...$(RESET)"
	npm audit

audit-fix:
	@echo "$(GREEN)🔧 Corrigindo vulnerabilidades...$(RESET)"
	npm audit fix

git-status:
	@echo "$(GREEN)📊 Status do Git:$(RESET)"
	@git status --short

git-log:
	@echo "$(GREEN)📜 Últimos 10 commits:$(RESET)"
	@git log --oneline -10 --decorate --color

info:
	@echo "$(GREEN)ℹ️  Informações do Projeto$(RESET)"
	@echo ""
	@echo "$(YELLOW)Node Version:$(RESET)"
	@node --version
	@echo ""
	@echo "$(YELLOW)NPM Version:$(RESET)"
	@npm --version
	@echo ""
	@echo "$(YELLOW)Git Branch:$(RESET)"
	@git branch --show-current
	@echo ""
	@echo "$(YELLOW)Última Commit:$(RESET)"
	@git log -1 --oneline

pre-commit: lint-fix format type-check
	@echo "$(GREEN)✅ Pronto para commit!$(RESET)"

quick-fix: lint-fix format
	@echo "$(GREEN)✅ Correções rápidas aplicadas!$(RESET)"

.DEFAULT_GOAL := help
