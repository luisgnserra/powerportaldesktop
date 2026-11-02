# Análise Atualização

<!-- language-selector -->
[🇺🇸 English](../REFRESH-ANALYSIS.md) · [🇧🇷 Português](REFRESH-ANALYSIS.md) · [🇪🇸 Español](../es/REFRESH-ANALYSIS.md) · [🇨🇳 简体中文](../zh-CN/REFRESH-ANALYSIS.md) · [🇫🇷 Français](../fr/REFRESH-ANALYSIS.md) · [🇯🇵 日本語](../ja/REFRESH-ANALYSIS.md) · [🇮🇳 हिन्दी](../hi/REFRESH-ANALYSIS.md) · [🇸🇦 العربية](../ar/REFRESH-ANALYSIS.md)
<!-- /language-selector -->

**1.8.5 — Correção das medições da atualização nativa**

Análise Atualização agora reconhece o comando XML Refresh nativo usado pelo Power BI Desktop, inclusive dentro de Batch, além de XMLA Process e TMSL refresh. Antes, a atualização podia executar, mas seu progresso era descartado como não relacionado, deixando 0 tabelas medidas, contagens indisponíveis e refreshCompletionNotProven. Um resultado explícito de sucesso do mecanismo agora é aceito quando o campo opcional Error está ausente; códigos de erro diferentes de zero e erros XMLA continuam prevalecendo. O progresso ainda exige correlação exata de requisição/atividade, excluindo consultas dos visuais não relacionadas.

Antes do primeiro comando reconhecido, a interface informa que aguarda eventos de atualização do Power BI. Conclusão não confirmada agora mostra orientação traduzida em vez de somente um código técnico. Atualize o aplicativo, conecte ao PBIX correto e execute Atualizar e analisar novamente; relatórios antigos incompletos são preservados e não são reclassificados como sucesso. O aplicativo empacotado foi validado de ponta a ponta numa atualização real autorizada, com atividade por tabela, contagens, conclusão automática e histórico preservado após recarregar. Os prints não contêm dados nem nomes de modelos do usuário; os exemplos da documentação continuam sintéticos.

![Análise Atualização](../images/pt-BR/refresh-analysis.png)

<a name="start-and-safety"></a>
## Inicio e seguranca

Conecte ao PBIX correto, abra Análise Atualização e clique em Atualizar e analisar. Confira o nome do arquivo e confirme. O rastreamento inicia antes de acionar Página Inicial > Atualizar nativo; nao atualiza tabelas sequencialmente via TOM. Mantenha o Power BI aberto e resolva credenciais, erros ou cancelamento nele. Um backup BIM nao restaura dados atualizados.

A atualizacao nativa consulta as fontes e substitui os dados importados. Salve uma copia do PBIX. Resolva credenciais e erros no Power BI; o rastreamento nao cancela a atualizacao nem inclui todas as consultas auxiliares do Power Query.

<a name="interpret-the-measurements"></a>
## Interpretacao das medidas

A atividade observada e a uniao dos intervalos do mecanismo identificados exatamente por tabela, sem somar fases aninhadas duas vezes. Nao representa apenas consulta a fonte nem um caminho critico comprovado. O total observado vai do acionamento ate a deteccao da conclusao, inclui sobrecarga de interface/verificacao e exclui a contagem posterior de linhas. Eventos sem tabela identificada aparecem separadamente.

Tempos sao atividade observada no mecanismo, nao o tempo exclusivo de cada consulta M. Tarefas paralelas nao devem ser somadas. Consultas sem carga, etapas M e uso de CPU/memoria por consulta nao estao disponiveis.

A conclusao automatica exige termino observado dos comandos de atualizacao e janela do Power BI pronta. Feche os dialogos nativos de resultado. Concluir captura manualmente sempre indica analise incompleta, nao comprova sucesso nem cancela a atualizacao. Erros do mecanismo/rastreamento sao explicitos. Uma captura interrompida nao e apresentada como concluida.

<a name="history-and-export"></a>
## Historico e exportacao

Linhas sao contadas depois da captura, fora do cronometro. DirectQuery/DirectLake nao sao consultados. Falta de evento nao significa tempo zero. Guarde ate 30 analises por modelo neste computador; nenhuma e enviada ao portal.

Selecione uma execucao salva e outra para comparar tempos e linhas pelos nomes correspondentes das tabelas. Cache, carga da fonte, volume e paralelismo afetam a comparacao; diferencas nao comprovam uma causa. JSON preserva indisponiveis como null; CSV deixa vazio e protege formulas de planilha. O historico e local, usa a mesma identidade do modelo que o diagrama e nao fica no PBIX. Arquivos com identidades expostas identicas podem compartilhar historico: confira o nome do modelo. Exportacoes contem nomes do modelo/tabelas e contagens: revise antes de compartilhar.

<!-- refresh-correlation -->
Somente progresso do mecanismo correlacionado por RequestID/ActivityID a um comando ativo de atualizacao e medido. Consultas dos visuais nao relacionadas sao excluidas. Algumas versoes do Power BI omitem esses identificadores: o tempo de uma tabela pode ficar indisponivel mesmo quando a atualizacao e executada.

<a name="native-launch-and-recovery"></a>
## Acionamento nativo e recuperação

Análise Atualização fica imediatamente abaixo de Mapa de relacionamentos no menu lateral e na galeria inicial. A identificação do botão nativo ignora as abas Home duplicadas das visualizações de consultas DAX e TMDL, evitando “Ambiguous Power BI control: home”. Se o controle não estiver disponível, selecione Relatório, Dados ou Modelo no Power BI.

Atualizar permanece bloqueado enquanto a confirmação, validação e preparação do rastreamento estão pendentes; Concluir captura fica oculto até a captura estar pronta. Isso impede um segundo acionamento com o erro indevido “Finish the active Power BI operation before refreshing”. Uma falha comprovadamente anterior ao acionamento nativo encerra o rastreamento, verifica a limpeza e permite nova tentativa. Se o acionamento já puder ter ocorrido, o erro fica visível e a captura permanece pendente: confira o Power BI, termine a atualização e feche os diálogos antes de Concluir captura. Solicitações repetidas retomam a captura existente, sem iniciar outra atualização. Operações realmente em andamento ainda precisam terminar primeiro.
