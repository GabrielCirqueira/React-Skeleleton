<!-- README do React Skeleton (template) -->

# React Skeleton

Este repositório é um esqueleto (skeleton) opinativo para iniciar projetos React modernos com Vite, TypeScript e Tailwind — pensado para ser usado como template/base em novos projetos.

Ele já vem com várias conveniências e boas práticas configuradas para acelerar o desenvolvimento e manter consistência entre projetos.

---

## Visão geral

- Stack: React (18+/19), TypeScript, Vite, Tailwind CSS
- Sistema de componentes locais (`src/shadcn`) seguindo primitives de layout e tipografia
- Ferramentas de qualidade: ESLint (config flat), Prettier, Husky, lint-staged, commitlint
- Conveniências devops/dev: Makefile com targets úteis, scripts CLI para gerar componentes/páginas/ganchos
- Estrutura modular com exemplos de `pages`, `layouts` e componentes reutilizáveis

Este repositório foi projetado para ser copiado ou usado como base — você pode clonar e adaptar, ou transformar em um template de repositório (ex.: GitHub Template) para iniciar novos projetos a partir daqui.

## O que está incluído

- `src/shadcn` — primitives e componentes de UI (Box, VStack, HStack, Button, Link, Icon, Title, Text, etc.)
- `src/pages` — páginas de exemplo (Home, NotFound)
- `Makefile` — comandos úteis (setup, validate, analyze-bundle, etc.)
- `./cli` — scripts para gerar componentes/páginas/hooks, análise de bundle e outras utilidades
- Configs: `tsconfig.*`, `vite.config.ts`, `tailwind.config.cjs`, `eslint.config.js`, `postcss.config.cjs`
- Husky + lint-staged + commitlint para garantir commits limpos e padronizados

## Rápido começo (Quickstart)

1. Clone o repositório (ou use como template do GitHub):

   git clone https://github.com/GabrielCirqueira/React-Skeleleton my-app
   cd my-app

2. Instale dependências:

   npm install

3. Inicie em modo desenvolvimento:

   npm run dev

4. Build de produção:

   npm run build

5. Lint / format:

   npm run lint
   npm run format

6. Tests (se adicionados):

   npm run test

## Como usar este repositório como template

Opções comuns para reutilizar este esqueleto:

- GitHub Template: a forma mais simples é marcar esse repo como _Template_ e então clicar em "Use this template" para criar um novo repo.
- Copiar/Clonar e substituir o remote:

  git clone https://github.com/GabrielCirqueira/React-Skeleleton my-project
  cd my-project
  rm -rf .git
  git init
  git add .
  git commit -m "chore: init from react-skeleton"

- Ou usar scaffolding customizado (scripts que você quiser criar) para duplicar/personalizar automaticamente.

## Estrutura recomendada e convenções

- `src/shadcn` — manter primitives e componentes reutilizáveis. Evite expor detalhes de implementação; prefira props configuráveis.
- `src/pages` — páginas por rota. Mantive um exemplo de `Home` e `NotFound`.
- `src/layouts` — contêineres e layout global (MainLayout, AppContainer)
- `./cli` — scripts shell para acelerar a criação de arquivos (component, page, hook, etc.) — sinta-se livre para adaptá-los ao seu fluxo.

## Scripts úteis (package.json)

- `npm run dev` — inicia o servidor Vite em dev
- `npm run build` — build de produção
- `npm run preview` — preview do build
- `npm run lint` — executa ESLint
- `npm run format` — formata com Prettier
- `npm run validate` — validações combinadas (lint, typecheck)

Confira `package.json` para a lista completa de scripts e ajuste conforme necessário.

## Personalização (pontos importantes)

- Tailwind: configure tokens e paleta em `tailwind.config.cjs` e adicione utilitários conforme seu design system.
- Tipografia & Componentes: `src/shadcn/components/ui/typography` contém componentes de tipografia (Title, Text, Code, Span etc.) — altere ou estenda conforme sua biblioteca de design.
- Aliases TypeScript: `tsconfig.json` já tem aliases. Ajuste conforme a estrutura do seu projeto.
- Commit hooks: os hooks estão configurados para ajudar a manter qualidade; adapte regras do commitlint conforme o padrão do seu time.

## Como contribuir para o template

Se você quiser melhorar esse template (ex.: adicionar mais exemplos, melhorar scripts CLI, preparar templates de CI/CD), abra uma PR. Sugestões bem-vindas:

- Melhorias na documentação
- Mais componentes exemplares (Formulários, Tabelas, Modal patterns)
- Exemplos de CI/CD (GitHub Actions, Azure Pipelines)

## Licença

Este projeto é distribuído sob a licença MIT — veja o arquivo `LICENSE` para os termos completos.

---

Se quiser, posso:

- Gerar automaticamente um esqueleto de `package.json` personalizado com seu nome/author
- Adicionar um modelo de GitHub Action para build e deploy
- Extrair subcomponentes (Hero, FeatureCard) em `src/components`

Diga qual opção prefere que eu continue.
