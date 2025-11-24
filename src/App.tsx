import { Button } from "@shadcn/button";
import { Container, VStack, HStack, Box, Footer } from "@shadcn/layout";
import { Text, Title } from "@shadcn/typography";
import { Link } from "@shadcn/link";

export default function App() {
  return (
    <Box className="min-h-screen flex items-center justify-center bg-gradient-to-b from-slate-900 via-slate-950 to-black text-white">
      <Container className="py-20">
        <Box className="max-w-3xl mx-auto">
          <Box className="rounded-2xl bg-slate-800/50 border border-slate-700 p-8 backdrop-blur-sm shadow-lg animate-in fade-in-0 slide-in-from-bottom-4 duration-700">
            <VStack className="gap-6">
              <Title as="h1" size="xl" className="text-white animate-in fade-in-0 slide-in-from-top-2 duration-500 delay-150">
                React Skeleton
              </Title>

              <Text className="text-slate-300 animate-in fade-in-0 slide-in-from-bottom-2 duration-500 delay-300">
                Pequêna demo com componentes utilitários e layout criados
                localmente (shadcn-like). Use este esqueleto como ponto de partida
                para seus protótipos em React + Vite + Tailwind.
              </Text>

              <HStack className="gap-4 animate-in fade-in-0 slide-in-from-bottom-2 duration-500 delay-500">
                <Button className="bg-indigo-500 hover:bg-indigo-600 text-white transition-all hover:scale-105 hover:shadow-lg">
                  Get started
                </Button>
                <Link href="#" className="inline-flex items-center px-4 py-2 rounded-md text-sm bg-transparent border border-slate-600 text-slate-200 hover:border-slate-500 transition-all hover:scale-105">
                  Learn more
                </Link>
              </HStack>

              <Box className="mt-4 animate-in fade-in-0 zoom-in-95 duration-500 delay-700">
                <Box className="p-4 rounded-md bg-slate-700/40 border border-slate-600 transition-all hover:bg-slate-700/60 hover:border-slate-500">
                  <Text className="text-slate-200">Example Box component — can be used as a wrapper or semantic element.</Text>
                </Box>
              </Box>
            </VStack>
          </Box>

          <Footer className="animate-in fade-in-0 slide-in-from-bottom-2 duration-500 delay-1000">
            Tailwind v3 · Components localizados em src/shadcn
          </Footer>
        </Box>
      </Container>
    </Box>
  );
}
