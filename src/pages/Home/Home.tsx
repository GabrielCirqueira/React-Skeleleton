import { AppContainer } from "@layouts";
import { Button } from "@shadcn/button";
import { Icon } from "@shadcn/icon";
import { Box, Footer, HStack, VStack } from "@shadcn/layout";
import { Link } from "@shadcn/link";
import { Text, Title } from "@shadcn/typography";
import { ArrowRight, Check, Code2, Rocket, Sparkles, Zap } from "lucide-react";

export default function Home() {
  return (
    <AppContainer maxWidth="4xl" paddingY="12">
      <VStack className="space-y-8">
        <Box className="text-center border-l-4 border-brand-500 pl-6 animate-in fade-in-0 slide-in-from-left-4 duration-700">
          <Title
            as="h1"
            size="4xl"
            className="text-typography-900 font-bold flex items-center justify-center gap-3"
          >
            <Icon icon={Sparkles} size={40} className="text-brand-500" />
            React <Text className="text-brand-500 inline">Skeleton</Text>
          </Title>
          <Text className="text-typography-600 mt-2">
            Design System · Componentes locais · Tailwind CSS
          </Text>
        </Box>

        <Box className="rounded-xl bg-white border-2 border-brand-200 shadow-hard-2 p-8 animate-in fade-in-0 slide-in-from-bottom-4 duration-700 delay-150">
          <VStack className="gap-6">
            <Box className="flex items-start gap-4">
              <Box className="w-1 h-16 bg-gradient-to-b from-brand-400 to-brand-600 rounded-full" />
              <Box>
                <Title as="h2" size="2xl" className="text-typography-900 font-semibold">
                  Bem-vindo ao seu Design System
                </Title>
                <Text className="text-typography-600 mt-2">
                  Pequena demo com componentes utilitários e layout criados localmente
                  (shadcn-like). Use este esqueleto como ponto de partida para seus protótipos em
                  React + Vite + Tailwind.
                </Text>
              </Box>
            </Box>

            <HStack className="gap-4 animate-in fade-in-0 slide-in-from-bottom-2 duration-500 delay-300">
              <Button className="bg-brand-500 hover:bg-brand-600 text-white shadow-soft-1 transition-all hover:scale-105 hover:shadow-soft-2 flex items-center gap-2">
                Começar agora
                <Icon icon={ArrowRight} size={16} />
              </Button>
              <Link
                href="#"
                className="inline-flex items-center px-6 py-2.5 rounded-lg text-sm font-medium border-2 border-brand-200 text-brand-700 hover:bg-brand-50 transition-all hover:scale-105"
              >
                Saiba mais
              </Link>
            </HStack>
          </VStack>
        </Box>

        <Box className="grid grid-cols-1 md:grid-cols-3 gap-6 animate-in fade-in-0 zoom-in-95 duration-500 delay-500">
          <Box className="rounded-lg bg-brand-50 border border-brand-200 p-6 transition-all hover:bg-brand-100 hover:border-brand-300 hover:shadow-soft-1">
            <Box className="w-10 h-10 rounded-full bg-brand-500 flex items-center justify-center mb-4">
              <Icon icon={Sparkles} size={20} className="text-white" />
            </Box>
            <Title as="h3" size="lg" className="text-brand-900 font-semibold mb-2">
              Design System
            </Title>
            <Text className="text-typography-600 text-sm">
              Paleta de cores completa com brand, estados (success, warning, error) e tipografia
              consistente.
            </Text>
          </Box>

          <Box className="rounded-lg bg-success-50 border border-success-200 p-6 transition-all hover:bg-success-100 hover:border-success-300 hover:shadow-soft-1">
            <Box className="w-10 h-10 rounded-full bg-success-500 flex items-center justify-center mb-4">
              <Icon icon={Check} size={20} className="text-white" />
            </Box>
            <Title as="h3" size="lg" className="text-success-900 font-semibold mb-2">
              Componentes
            </Title>
            <Text className="text-typography-600 text-sm">
              Box, VStack, HStack, Container, Title, Text, Button, Link e mais componentes
              reutilizáveis.
            </Text>
          </Box>

          <Box className="rounded-lg bg-info-50 border border-info-200 p-6 transition-all hover:bg-info-100 hover:border-info-300 hover:shadow-soft-1">
            <Box className="w-10 h-10 rounded-full bg-info-500 flex items-center justify-center mb-4">
              <Icon icon={Zap} size={20} className="text-white" />
            </Box>
            <Title as="h3" size="lg" className="text-info-900 font-semibold mb-2">
              Animações
            </Title>
            <Text className="text-typography-600 text-sm">
              Animações suaves com Tailwind (animate-in, fade, slide) sem CSS customizado.
            </Text>
          </Box>
        </Box>

        <Box className="rounded-xl bg-gradient-to-r from-brand-500 to-brand-600 p-8 text-center shadow-hard-3 animate-in fade-in-0 slide-in-from-bottom-2 duration-500 delay-700">
          <Title as="h2" size="2xl" className="text-white font-bold mb-2">
            Pronto para começar?
          </Title>
          <Text className="text-brand-50 mb-6">
            Explore os componentes e adapte as cores brand para sua identidade visual.
          </Text>
          <Button className="bg-white text-brand-600 hover:bg-brand-50 shadow-soft-2 font-semibold transition-all hover:scale-105 flex items-center gap-2 mx-auto">
            Ver documentação
            <Icon icon={Rocket} size={16} />
          </Button>
        </Box>

        <Footer className="text-center animate-in fade-in-0 duration-500 delay-1000">
          <Text className="text-typography-500 text-sm flex items-center justify-center gap-2">
            <Icon icon={Code2} size={14} className="text-brand-500" />
            Tailwind CSS · Componentes em{" "}
            <Text className="text-brand-600 inline font-medium">src/shadcn</Text>
          </Text>
        </Footer>
      </VStack>
    </AppContainer>
  );
}
