# Uso e segurança do modelo

<!-- language-selector -->
[🇺🇸 English](../USAGE.md) · [🇧🇷 Português](USAGE.md) · [🇪🇸 Español](../es/USAGE.md) · [🇨🇳 简体中文](../zh-CN/USAGE.md) · [🇫🇷 Français](../fr/USAGE.md) · [🇯🇵 日本語](../ja/USAGE.md) · [🇮🇳 हिन्दी](../hi/USAGE.md) · [🇸🇦 العربية](../ar/USAGE.md)
<!-- /language-selector -->

**1.8.11 — Envie ideias de melhorias sem apertar o menu**

Enviar ideias agora fica imediatamente acima de Sobre o desenvolvimento. O formulário acessível aceita título (até 120 caracteres) e descrição (até 1000). Abrir e-mail com a ideia solicita a abertura do aplicativo de e-mail padrão com destinatário fixo contato@consultoriaexcelencia.com.br, assunto e mensagem preenchidos. Revise e envie nesse aplicativo: o Power Portal não envia automaticamente nem confirma entrega. Se não abrir, configure um cliente padrão ou envie manualmente. Não são anexados dados do modelo, arquivos ou credenciais, e o formulário não salva rascunhos em disco. Não inclua informações confidenciais. Erros são explícitos e preservam o texto para tentar novamente ou copiar. O formulário funciona offline até abrir o aplicativo de e-mail; a entrega depende da sua conta e conexão.

Os botões das ferramentas e os espaçamentos em janelas baixas ficaram mais compactos, sem ocultar controles nem adicionar rolagem ao menu. Testes no pacote verificam menu expandido/recolhido nas alturas suportadas de 680/768/900 pixels e nos oito idiomas, botões com ao menos 24 pixels de altura, foco pelo teclado, campos obrigatórios, destinatário fixo/texto codificado, falha do cliente de e-mail e preservação do conteúdo. Os testes interceptaram a abertura do e-mail: nenhuma mensagem foi enviada. Os prints usam dados sintéticos.

**1.8.10 — Ilustrações de primeiro plano animadas e hover mais rico**

As doze capas da tela inicial agora animam a ilustração principal de cada ferramenta, não apenas o fundo: flutuação e rotação suaves, com um selo de verificação pulsante no primeiro plano. Ao passar o mouse ou focar pelo teclado aparecem painéis de barras, indicador hexagonal, órbita tracejada e partículas animados. As animações extras ficam pausadas fora do hover/foco. As camadas decorativas não interceptam cliques nem entram na árvore de acessibilidade. A preferência de reduzir movimentos do Windows/navegador desliga as animações de primeiro plano e extras, mantendo detalhes estáticos, contraste e foco. As artes locais originais sem texto, os oito idiomas e a navegação foram preservados. Testes no pacote mediram a mudança real das transformações do primeiro plano e dos painéis, foco pelo teclado, movimento reduzido, doze capas distintas e layout nos oito idiomas. Os prints são capturas estáticas dos estados normal/hover, não vídeos; os dados são sintéticos.

**1.8.9 — Amostra do calendário e atalho para atualização nativa**

No Gerador de Tabela Calendário, a amostra real (até 50 linhas) agora fica abaixo de Gerar script. Atualizar no Power BI fica ao lado desse botão e, com conexão ativa, abre Desempenho de Atualização e inicia o mesmo fluxo nativo de atualização dos dados com confirmação. Acompanhe ali estados das tabelas, tempos e contagens de linhas. Isso atualiza o modelo inteiro; não aplica o script gerado, não cria nem substitui a tabela calendário e não salva o PBIX. Criar calendário no Power BI continua sendo uma ação separada. O botão fica desabilitado sem conexão, funciona pelo teclado e está traduzido nos oito idiomas. Cancelamento e erros usam o fluxo de atualização existente. A amostra continua sendo a última leitura solicitada: use Ler calendário selecionado para consultá-la novamente após atualizar. Testes no aplicativo empacotado verificaram posição, oito traduções, bloqueio offline, conexão exata, cancelamento, erros visíveis, nova tentativa e criação de calendário preservada. Nenhuma atualização real foi iniciada nesses testes; os prints usam dados sintéticos.

**1.8.8 — Linhas dinâmicas e envio de temas verificado**

No Mapa de relacionamentos, Estilo das linhas alterna entre Curvas e Retas com ângulos de 90 graus. As extremidades usam dinamicamente as bordas superior/inferior ou esquerda/direita voltadas uma para a outra, considerando o tamanho real das caixas. Nas laterais, mantém a altura da coluna relacionada. Setas pretas com borda branca acompanham trechos retos sem ficar inclinadas nos cantos. O estilo é salvo automaticamente e acompanha o JSON exportado; layouts antigos continuam com curvas. Isso não altera o layout nativo do Power BI nem calcula desvios globais de obstáculos.

Enviar tema diretamente para o Power BI devolve o foco ao Power Portal após a importação nativa e durante a verificação por exportação, somente quando o Power BI estiver em primeiro plano. Após verificar o tema aplicado, mostra o Power BI; erros também mostram a janela selecionada para revisão. Diálogos nativos podem aparecer brevemente e não são ocultados: o Desktop não oferece API suportada de temas sem diálogos. Trocas assíncronas de guia após a importação são tratadas antes da confirmação. Um teste real autorizado no aplicativo empacotado verificou importação/exportação, retorno ao Portal e ativação final do Power BI; depois restaurou o tema Padrão original, sem salvar o PBIX. Todos os prints da documentação usam dados sintéticos.

**1.8.7 — Seleção de cores mais clara e confiável**

As onze cores do tema agora possuem uma amostra nativa visível e um botão Selecionar cor ao lado do campo HEX editável. Clique na amostra ou no botão, ou use Enter/Espaço com o botão em foco. O seletor não depende mais de um campo invisível sem tamanho nem de clique duplo no HEX. A edição manual, importação de temas, prévia em tempo real e exportação JSON continuam disponíveis. Falhas ao abrir são mostradas explicitamente. A abertura nativa foi verificada repetidamente no aplicativo Windows, além dos onze botões por mouse/teclado e dos textos nos oito idiomas.

Análise Atualização agora se chama Desempenho de Atualização no menu, na página inicial, no título da ferramenta e nos oito idiomas. A alteração é apenas de nome: atualização nativa, progresso ao vivo, tempos, linhas, histórico local e compatibilidade JSON/CSV permanecem iguais. As análises salvas continuam disponíveis, sem migração ou necessidade de atualizar os dados. As imagens usam dados sintéticos.

**1.8.6 — Acompanhe a atualização dentro do Power Portal**

Inicie Atualizar e analisar no Power Portal e acompanhe cartões ao vivo com cada tabela, estado observado, fase do mecanismo, tempo de atividade e o último texto de progresso nativo disponível do Power BI. O Power Portal recupera o foco após iniciar e, se o Power BI reaparecer em primeiro plano, após a conclusão nativa. Não toma repetidamente o foco de outros aplicativos. Ver no Power BI abre o arquivo selecionado sem iniciar outra atualização; essa escolha desativa o retorno automático do foco nessa captura.

O Power BI continua sendo o mecanismo de atualização. Sua janela pode aparecer brevemente: não se trata de uma API suportada de processamento de PBIX sem janela. Credenciais, erros e cancelamento permanecem no Power BI; nenhum diálogo é ocultado ou dispensado automaticamente. O texto nativo mantém o idioma do Power BI e informa o horário da última leitura. A ausência de texto é explícita; o rastreamento do mecanismo continua se a leitura da janela falhar. Fases encerradas não comprovam a conclusão da tabela, não há percentuais inventados e as linhas finais são contadas apenas após a captura. Histórico e JSON incluem os estados nativos observados; revise as exportações antes de compartilhar. O aplicativo empacotado foi testado com atualização real autorizada: 4/4 tabelas medidas, 4/4 contagens de linhas, estados nativos ao vivo, foco devolvido ao Portal, botão Ver no Power BI funcional e histórico preservado após recarregar. Nenhum PBIX foi salvo automaticamente; as imagens usam dados sintéticos.

**1.8.5 — Prévia do tema com linhas suaves**

O gráfico de linhas do gerador de temas agora usa curvas cúbicas suaves em vez de segmentos retos, tanto com dados de exemplo como com dados do modelo conectado. As curvas passam pelos pontos originais sem criar picos entre os valores; cores, marcadores e dicas são preservados. A mudança afeta somente a prévia: o JSON exportado e a formatação das linhas dos visuais existentes no Power BI não são alterados.

[Voltar ao início](../../README.pt-BR.md)

O cabecalho animado do Power Portal agora incorpora o nome do arquivo, o status da conexao e os cinco botoes de leitura/importacao/busca/atualizacao. A faixa separada abaixo do banner foi removida para liberar espaco. O conteudo se reorganiza dentro do cabecalho em janelas menores e nos oito idiomas, incluindo arabe. Confirmacoes, avisos e comportamento das atualizacoes foram preservados.

O Mapa de relacionamentos agora fica imediatamente depois do TV Tool no menu lateral e na galeria inicial. O bloco generico Dados reais do modelo foi removido do Gerador de Tabela Calendario e da Biblioteca de Componentes. Os controles proprios de leitura e envio continuam; o botao de periodo real usa o calendario selecionado dentro da ferramenta. As capas da pagina inicial foram redesenhadas como ilustracoes vetoriais locais sem texto embutido. Titulos, descricoes e acoes ficam fora das imagens e acompanham o idioma selecionado. Arraste uma coluna de origem para outra tabela para abrir o dialogo de relacionamento real e escolher a coluna de destino. Soltar em uma coluna ja a preseleciona. Revise cardinalidade, filtro e estado ativo; depois valide e aplique com confirmacao nativa e backup BIM.

A validacao verifica tipos, pares duplicados, ligacoes diretas ativas e contagens reais de linhas e valores distintos nas duas colunas, sem amostragem. Duplicatas no lado Um sao rejeitadas. As consultas tem limite de 20 segundos e falhas explicitas. Validar nunca grava. Aplicar repete a validacao, e o engine verifica chaves e ambiguidades de filtro ao confirmar. O rascunho tracejado nao e um relacionamento salvo; apenas a gravacao confirmada com sucesso o cria. Salve o PBIX depois. Testes e prints usam dados sinteticos, sem alterar PBIX de clientes.

<a name="first-run"></a>
## Primeira execução

Inicie pela guia Ferramentas externas do Power BI para conectar automaticamente ao modelo local, ou pelo atalho Windows para usar ferramentas offline/importar um projeto. A página inicial exibe as doze ferramentas. **Início** retorna à galeria sem descartar o modelo carregado.

Use o botão de recolher o menu e as bandeiras quando precisar. O cabeçalho de conexão mostra o nome do arquivo quando disponível, em vez do GUID interno do banco.

Após conectar, um status verde compacto no cabeçalho substitui o aviso maior de conexão. Sua dica lembra de salvar uma cópia separada do PBIX. As alterações suportadas continuam exigindo confirmação.

[Passo a passo ilustrado de todas as telas e interações com o Power BI](SCREENSHOTS.md).

<a name="read-only-work"></a>
## Trabalho somente leitura

Leia metadados, consulte pequenas amostras, audite medidas, verifique contraste, formate DAX ou exporte documentação sem enviar gravações. Os dados representam o modelo semântico **sem os filtros ou segmentações da página ativa do relatório**.

Amostras continuam limitadas a 50 linhas e consultas a 20 segundos. Os dados do calendario sao lidos pelo seletor e pela previa da propria ferramenta; o bloco generico nao aparece mais no Gerador de Calendario nem na Biblioteca de Componentes. O status da conexao fica no cabecalho.

Importações locais aceitam BIM, pastas TMDL/PBIP/PBIR suportadas e ZIPs. São somente leitura. O importador não lê um PBIX bruto: abra-o no Power BI Desktop e conecte localmente.

Limites de ZIP: 50 MB compactados, 500 MB extraídos, 10.000 arquivos e 64 MB por entrada. Links simbólicos e pastas como `.git`, `.pbi` e `node_modules` não são percorridos. Importe um modelo semântico por vez.

<a name="themes"></a>
## Temas

1. No Power BI Desktop, salve o JSON do tema atual pelo menu Temas se quiser editá-lo.
2. No gerador de temas do Power Portal, use a área destacada **Carregar tema do relatório (JSON)**. Uma conexão TOM não consegue recuperar o tema do relatório.
3. Edite cores/fontes/fundos observando a prévia local em tempo real.
4. Exporte JSON ou role até o final, abaixo das configurações e da prévia, e escolha **Enviar tema diretamente para o Power BI**.
5. Confira o nome do arquivo na confirmação, aprove e não interaja com o Power BI durante a importação.
6. Salve o PBIX no Power BI quando estiver satisfeito.

O envio direto usa **Automação de Interface visível**, incluindo o diálogo de arquivos do Desktop. O aplicativo verifica o tema resultante exportando-o e comparando as propriedades enviadas. O JSON gerado continua disponível se a automação falhar. Versões, idiomas ou mudanças na interface do Desktop podem impedir a automação.

Não há uma API genérica suportada do Desktop para aplicar um tema a qualquer PBIX aberto sem diálogos. O `applyTheme` de relatórios incorporados é outra API e não é usado como alternativa para o Desktop.

A prévia em tempo real é uma implementação local da tela de temas do site, não uma representação idêntica em pixels de todos os visuais do Power BI.

![Importação de tema destacada e prévia em tempo real](../images/pt-BR/theme-generator.png)

![Envio direto para o Power BI no final da página](../images/pt-BR/theme-send.png)

<a name="write-operations"></a>
## Operações de gravação

As gravações suportadas no modelo semântico são criação de medida, atualização do DAX da medida selecionada, criação de nova tabela calendário calculada e criação/edição/exclusão de relacionamentos.

Antes de qualquer gravação:

1. **Salve uma cópia separada do PBIX.**
2. Confira o arquivo/modelo selecionado e o DAX proposto.
3. Aceite a confirmação nativa (Cancelar é o padrão).
4. Guarde o caminho do backup exibido e confira o resultado no Power BI.
5. Salve o PBIX você mesmo; o aplicativo não o salva automaticamente.

O backup BIM dos metadados deve ser concluído antes de confirmar a gravação. Nomes duplicados são rejeitados. Atualizações conferem a expressão anterior para não substituir mudanças concorrentes. Uma falha após a gravação é informada como alteração já gravada, não como cancelamento.

<a name="calendar-tables"></a>
### Tabelas calendário

Leia a expressão calculada, intervalo de datas e amostra de um calendário existente. Exporte o conteúdo existente ou gere um novo script DAX/M/SQL. O envio direto cria uma tabela calculada **nova**; não substitui um calendário existente.

Após criar, atualize no Power BI Desktop; o Power Portal não processa o modelo do Desktop. A ação da sessão **Reverter calendário criado** possui proteção e recusa remover a tabela se sua estrutura/expressão mudou ou ganhou medidas, relacionamentos ou dependências DAX.

![Ações de leitura, exportação e criação de calendário conectadas ao modelo demonstrativo](../images/pt-BR/calendar-generator.png)

O backup BIM protege metadados do modelo, **não páginas do relatório, visuais, todas as linhas dos dados nem o PBIX completo**. Não há restauração automática do modelo completo.

<a name="html-components"></a>
### Componentes HTML

Enviar um componente cria uma medida HTML. Adicione manualmente um visual HTML compatível ao relatório e atribua a medida. O TOM não posiciona visuais automaticamente no canvas do relatório.

![Destino da medida HTML e botão de criação direta](../images/pt-BR/components.png)

<a name="update-measure-dax"></a>
### Atualizar DAX de uma medida

Selecione uma medida no formatador DAX, formate sua expressão e use **Atualizar medida no Power BI**. A ação atualiza essa medida com confirmação e confere se a expressão anterior não mudou concorrentemente. Não é apenas exportação de texto local.

![Seleção da medida, DAX formatado e atualização no Power BI](../images/pt-BR/dax-formatter.png)

<a name="tv-tool"></a>
## TV Tool

A área destacada **TV Tool em ação** no topo abre um [exemplo oficial funcional](https://www.powerportal.com.br/tv_tool/painel_exemplo_power_bi_tv_tool.html) no navegador padrão. Exige internet e não envia o modelo local. O exemplo ilustrativo do formulário continua carregando slides locais.

Use links de relatórios publicados ou imagens locais, ajuste durações/transições e exporte HTML. Links do Service preservam identificadores de página suportados. A ferramenta **não** alterna páginas do PBIX local aberto.

Relatórios privados exigem licença Power BI, autenticação Microsoft, permissões e política de incorporação adequadas. Recarregar o relatório não atualiza os dados do modelo semântico. Slides de imagens locais são a opção de apresentação offline.

<a name="relationship-map"></a>
## Mapa de relacionamentos

Abra a nova ferramenta para entender as ligações entre tabelas em um canvas arrastável, com cardinalidades, setas de filtros, linhas inativas tracejadas, grupos, cores e nomes amigáveis/ícones.

![Mapa com grupos Fatos e Dimensões](../images/pt-BR/relationship-map.png)

A organização visual salva automaticamente por modelo e pode ser exportada/importada como JSON. Não renomeia objetos, muda o layout nativo do Power BI nem envia edições de relacionamentos.

Com uma conexão ao vivo, **Aplicar relacionamento no Power BI** e **Excluir relacionamento no Power BI** enviam cada edição após confirmação nativa e backup dos metadados. Pontas, cardinalidades, direção dos filtros e estado ativo podem mudar; configurações existentes de segurança/integridade são preservadas. Metadados desatualizados, ligações duplicadas, tipos incompatíveis e erros de validação do mecanismo são rejeitados explicitamente.

**Relacionamentos afetam resultados e filtros do relatório. Salve uma cópia do PBIX antes e depois salve o PBIX no Desktop.** Não há reversão automática do modelo completo. [Tutorial completo, persistência e limites](RELATIONSHIPS.md).

<a name="diagnostics-and-privacy"></a>
## Diagnóstico e privacidade

Pontuações da auditoria/análise são heurísticas. A conexão ao modelo ativo não fornece páginas nem posições de visuais; dimensões indisponíveis não são inventadas. Metadados de projetos PBIR podem fornecer contagens de páginas/visuais quando presentes.

O aplicativo não envia arquivos, metadados, linhas ou credenciais das fontes ao portal. Exportações, backups e logs locais ainda podem conter informações confidenciais. Compartilhe com o suporte somente erros sem dados sensíveis.

[Configuração](CONFIGURATION.md) · [Solução de problemas](TROUBLESHOOTING.md)

Na 1.8.11, desenhar só prepara um rascunho: clique/arraste pares exatos de colunas e revise antes de aplicar. Exclusão pelo botão direito usa a mesma confirmação e backup. A detecção nativa é separada e pode criar várias ligações: revise no Power BI, feche os diálogos e conclua no Power Portal antes de gravar ou atualizar. Imagens de grupos e preferência de exibição ficam somente no diagrama. [Novo fluxo de relacionamentos](RELATIONSHIPS.md#native-automatic-relationship-detection).

<a name="refresh-performance"></a>
## Desempenho de Atualização

Meça a atualizacao nativa. Compare tempos e linhas. [Desempenho de Atualização](REFRESH-ANALYSIS.md).

![Desempenho de Atualização](../images/pt-BR/refresh-analysis.png)

A atividade observada e a uniao dos intervalos do mecanismo identificados exatamente por tabela, sem somar fases aninhadas duas vezes. Nao representa apenas consulta a fonte nem um caminho critico comprovado. O total observado vai do acionamento ate a deteccao da conclusao, inclui sobrecarga de interface/verificacao e exclui a contagem posterior de linhas. Eventos sem tabela identificada aparecem separadamente.

A conclusao automatica exige termino observado dos comandos de atualizacao e janela do Power BI pronta. Feche os dialogos nativos de resultado. Concluir captura manualmente sempre indica analise incompleta, nao comprova sucesso nem cancela a atualizacao. Erros do mecanismo/rastreamento sao explicitos. Uma captura interrompida nao e apresentada como concluida.
