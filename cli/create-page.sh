#!/bin/bash

# =============================================================================
# Script: create-page.sh
# Descrição: Cria uma nova página com rota no React Router
# Uso: ./cli/create-page.sh <PageName> [route]
# Exemplo: ./cli/create-page.sh About /about
# =============================================================================

set -e

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Função de ajuda
show_help() {
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e "${BLUE}  📄 Criador de Páginas React${NC}"
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo ""
  echo -e "${YELLOW}Uso:${NC}"
  echo "  ./cli/create-page.sh <PageName> [route]"
  echo ""
  echo -e "${YELLOW}Argumentos:${NC}"
  echo "  PageName  Nome da página (PascalCase)"
  echo "  route     Rota da página (padrão: /nome-em-kebab-case)"
  echo ""
  echo -e "${YELLOW}Exemplos:${NC}"
  echo "  ./cli/create-page.sh About"
  echo "  ./cli/create-page.sh UserProfile /profile"
  echo "  ./cli/create-page.sh ContactUs /contact"
  echo ""
}

# Validar argumentos
if [ $# -eq 0 ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  show_help
  exit 0
fi

PAGE_NAME=$1
# Converter PascalCase para kebab-case para a rota padrão
DEFAULT_ROUTE=$(echo "$PAGE_NAME" | sed 's/\([A-Z]\)/-\1/g' | sed 's/^-//' | tr '[:upper:]' '[:lower:]')
ROUTE=${2:-"/$DEFAULT_ROUTE"}
PAGE_DIR="src/pages/$PAGE_NAME"

# Validar nome da página (PascalCase)
if [[ ! $PAGE_NAME =~ ^[A-Z][a-zA-Z0-9]*$ ]]; then
  echo -e "${RED}❌ Erro: Nome da página deve estar em PascalCase (ex: MyPage)${NC}"
  exit 1
fi

# Verificar se a página já existe
if [ -d "$PAGE_DIR" ]; then
  echo -e "${RED}❌ Erro: Página '$PAGE_NAME' já existe em $PAGE_DIR${NC}"
  exit 1
fi

# Criar diretório
echo -e "${BLUE}📁 Criando diretório: $PAGE_DIR${NC}"
mkdir -p "$PAGE_DIR"

# Criar arquivo da página
echo -e "${BLUE}📝 Criando $PAGE_NAME.tsx${NC}"
cat > "$PAGE_DIR/$PAGE_NAME.tsx" << EOF
import { AppContainer } from '@layouts/AppContainer';
import { Title, Text } from '@shadcn/typography';
import { VStack } from '@shadcn/layout';

export function ${PAGE_NAME}() {
  return (
    <AppContainer>
      <VStack spacing="lg" align="start">
        <Title level={1}>${PAGE_NAME}</Title>
        <Text>Bem-vindo à página ${PAGE_NAME}!</Text>
      </VStack>
    </AppContainer>
  );
}
EOF

# Criar arquivo index para exportação
echo -e "${BLUE}📝 Criando index.ts${NC}"
cat > "$PAGE_DIR/index.ts" << EOF
export { ${PAGE_NAME} } from './${PAGE_NAME}';
EOF

# Criar README da página
echo -e "${BLUE}📄 Criando README.md${NC}"
cat > "$PAGE_DIR/README.md" << EOF
# ${PAGE_NAME}

## Descrição
Página ${PAGE_NAME} do aplicativo.

## Rota
\`${ROUTE}\`

## Estrutura
- Usa \`AppContainer\` para layout consistente
- Componentes de tipografia do Design System
- Layout com \`VStack\` para organização vertical

## Exemplo de Uso no Router

\`\`\`tsx
import { ${PAGE_NAME} } from '@pages/${PAGE_NAME}';

// Em App.tsx ou routes.tsx
<Route path="${ROUTE}" element={<${PAGE_NAME} />} />
\`\`\`
EOF

echo ""
echo -e "${GREEN}✅ Página '$PAGE_NAME' criada com sucesso!${NC}"
echo -e "${GREEN}📍 Localização: $PAGE_DIR${NC}"
echo -e "${GREEN}🌐 Rota sugerida: ${ROUTE}${NC}"
echo ""
echo -e "${YELLOW}Arquivos criados:${NC}"
echo "  ├─ $PAGE_NAME.tsx"
echo "  ├─ index.ts"
echo "  └─ README.md"
echo ""
echo -e "${BLUE}💡 Próximos passos:${NC}"
echo "  1. Adicione a rota em src/App.tsx:"
echo ""
echo -e "${YELLOW}     import { ${PAGE_NAME} } from '@pages/${PAGE_NAME}';${NC}"
echo -e "${YELLOW}     <Route path=\"${ROUTE}\" element={<${PAGE_NAME} />} />${NC}"
echo ""
echo "  2. Edite o conteúdo da página em $PAGE_DIR/$PAGE_NAME.tsx"
echo "  3. Teste navegando para ${ROUTE}"
echo ""
