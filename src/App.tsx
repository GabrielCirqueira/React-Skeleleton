import { BrowserRouter, Routes, Route } from "react-router-dom";
import { MainLayout } from "@layouts";
import { Home, NotFound } from "@pages";

/**
 * App Component - Configuração de rotas do sistema
 * 
 * Estrutura:
 * - MainLayout: wrapper global que envolve todas as páginas
 * - Rotas aninhadas dentro do layout
 * 
 * Rotas disponíveis:
 * - / : Home (página inicial)
 * - * : NotFound (página 404)
 */
export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        {/* Layout principal envolve todas as rotas */}
        <Route element={<MainLayout />}>
          {/* Rota principal */}
          <Route path="/" element={<Home />} />
          
          {/* Rota 404 - captura todas as rotas não definidas */}
          <Route path="*" element={<NotFound />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}
