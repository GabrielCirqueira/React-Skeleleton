# React Skeleton 🚀

Um skeleton moderno e completo para projetos React com TypeScript, configurado com as melhores práticas e ferramentas de desenvolvimento.

## ✨ Features

### 🎨 Design System

- **Paleta de cores completa** com brand, estados (success/warning/error/info), tipografia e backgrounds
- **Componentes de layout**: Box, VStack, HStack, Container, Grid, Flex, Center, Spacer, Footer
- **Componentes de tipografia**: Title (7 tamanhos), Text, Subtitle, Lead, Small, Caption
- **Componente Icon** genérico para Lucide React
- **Animações** com Tailwind CSS (animate-in, fade, slide, zoom)
- **+50 componentes shadcn** pré-configurados

### 🛠️ Ferramentas de Desenvolvimento

- ⚡ **Vite** - Build tool ultra-rápida
- 🎯 **TypeScript** - Type safety
- 🎨 **Tailwind CSS** - Utility-first CSS
- 📏 **ESLint** - Linting com regras React + TypeScript + Accessibility
- 💅 **Prettier** - Formatação automática de código
- 🪝 **Husky** - Git hooks (pre-commit + commit-msg)
- 🔍 **lint-staged** - Lint apenas em arquivos staged
- 📝 **Commitlint** - Validação de mensagens de commit
- 🛣️ **React Router** - Navegação com layouts

### 🎯 Qualidade de Código Garantida

- ✅ **Format on save** - Código formatado automaticamente ao salvar
- ✅ **Pre-commit hooks** - ESLint + Prettier rodando antes de cada commit
- ✅ **Commit validation** - Mensagens de commit seguindo Conventional Commits
- ✅ **Type checking** - TypeScript validado antes do build
- ❌ **Commits bloqueados** se houver erros ESLint não corrigíveis

## 📦 Instalação

```bash
# Clone o repositório
git clone https://github.com/GabrielCirqueira/React-Skeleton.git
cd React-Skeleton

# Instale as dependências
npm install
# ou
make install
```

## 🚀 Uso

### Desenvolvimento

```bash
# Inicia o servidor de desenvolvimento
npm run dev
# ou
make dev
```

### Build

```bash
# Gera build de produção
npm run build
# ou
make build
```

### Qualidade de Código

```bash
# Verifica erros ESLint
make lint

# Corrige erros automaticamente
make lint-fix

# Formata código com Prettier
make format

# Valida tudo (type + lint + format)
make validate
```

## 📝 Convenções de Commit

Este projeto usa **Conventional Commits**:

```bash
feat: adiciona componente de modal
fix: corrige bug no formulário
docs: atualiza README
style: corrige indentação
refactor: simplifica lógica
```

## 🛠️ Makefile - Comandos Úteis

```bash
make help          # Lista todos os comandos
make dev           # Inicia desenvolvimento
make validate      # Valida tudo
make quick-fix     # Correção rápida
make info          # Informações do projeto
```

## 📚 Documentação

- [DEVELOPMENT.md](./DEVELOPMENT.md) - Guia completo de desenvolvimento

---

**Feito com ❤️ por Gabriel Cirqueira**
reactX.configs['recommended-typescript'],
// Enable lint rules for React DOM
reactDom.configs.recommended,
],
languageOptions: {
parserOptions: {
project: ['./tsconfig.node.json', './tsconfig.app.json'],
tsconfigRootDir: import.meta.dirname,
},
// other options...
},
},
])

```

```
