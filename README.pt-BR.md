# Power Portal Desktop

<!-- language-selector -->

| Idioma / Language | Link |
| :--- | :--- |
| 🇺🇸 English | [README.md](README.md) |
| 🇧🇷  Brasil  Português | [README.pt-BR.md](README.pt-BR.md) |
| 🇪🇸 Español | [README.es.md](README.es.md) |
| 🇨🇳 简体中文 | [README.zh-CN.md](README.zh-CN.md) |
| 🇫🇷 Français | [README.fr.md](README.fr.md) |
| 🇯🇵 日本語 | [README.ja.md](README.ja.md) |
| 🇮🇳 हिन्दी | [README.hi.md](README.hi.md) |
| 🇸🇦 العربية | [README.ar.md](README.ar.md) |
<!-- /language-selector -->

**1.8.8 — Linhas dinâmicas e envio de temas verificado**

No Mapa de relacionamentos, Estilo das linhas alterna entre Curvas e Retas com ângulos de 90 graus. As extremidades usam dinamicamente as bordas superior/inferior ou esquerda/direita voltadas uma para a outra, considerando o tamanho real das caixas. Nas laterais, mantém a altura da coluna relacionada. Setas pretas com borda branca acompanham trechos retos sem ficar inclinadas nos cantos. O estilo é salvo automaticamente e acompanha o JSON exportado; layouts antigos continuam com curvas. Isso não altera o layout nativo do Power BI nem calcula desvios globais de obstáculos.

Enviar tema diretamente para o Power BI devolve o foco ao Power Portal após a importação nativa e durante a verificação por exportação, somente quando o Power BI estiver em primeiro plano. Após verificar o tema aplicado, mostra o Power BI; erros também mostram a janela selecionada para revisão. Diálogos nativos podem aparecer brevemente e não são ocultados: o Desktop não oferece API suportada de temas sem diálogos. Trocas assíncronas de guia após a importação são tratadas antes da confirmação. Um teste real autorizado no aplicativo empacotado verificou importação/exportação, retorno ao Portal e ativação final do Power BI; depois restaurou o tema Padrão original, sem salvar o PBIX. Todos os prints da documentação usam dados sintéticos.

**1.8.7 — Seleção de cores mais clara e confiável**

As onze cores do tema agora possuem uma amostra nativa visível e um botão Selecionar cor ao lado do campo HEX editável. Clique na amostra ou no botão, ou use Enter/Espaço com o botão em foco. O seletor não depende mais de um campo invisível sem tamanho nem de clique duplo no HEX. A edição manual, importação de temas, prévia em tempo real e exportação JSON continuam disponíveis. Falhas ao abrir são mostradas explicitamente. A abertura nativa foi verificada repetidamente no aplicativo Windows, além dos onze botões por mouse/teclado e dos textos nos oito idiomas.

Análise Atualização agora se chama Desempenho de Atualização no menu, na página inicial, no título da ferramenta e nos oito idiomas. A alteração é apenas de nome: atualização nativa, progresso ao vivo, tempos, linhas, histórico local e compatibilidade JSON/CSV permanecem iguais. As análises salvas continuam disponíveis, sem migração ou necessidade de atualizar os dados. As imagens usam dados sintéticos.

**1.8.6 — Acompanhe a atualização dentro do Power Portal**

Inicie Atualizar e analisar no Power Portal e acompanhe cartões ao vivo com cada tabela, estado observado, fase do mecanismo, tempo de atividade e o último texto de progresso nativo disponível do Power BI. O Power Portal recupera o foco após iniciar e, se o Power BI reaparecer em primeiro plano, após a conclusão nativa. Não toma repetidamente o foco de outros aplicativos. Ver no Power BI abre o arquivo selecionado sem iniciar outra atualização; essa escolha desativa o retorno automático do foco nessa captura.

O Power BI continua sendo o mecanismo de atualização. Sua janela pode aparecer brevemente: não se trata de uma API suportada de processamento de PBIX sem janela. Credenciais, erros e cancelamento permanecem no Power BI; nenhum diálogo é ocultado ou dispensado automaticamente. O texto nativo mantém o idioma do Power BI e informa o horário da última leitura. A ausência de texto é explícita; o rastreamento do mecanismo continua se a leitura da janela falhar. Fases encerradas não comprovam a conclusão da tabela, não há percentuais inventados e as linhas finais são contadas apenas após a captura. Histórico e JSON incluem os estados nativos observados; revise as exportações antes de compartilhar. O aplicativo empacotado foi testado com atualização real autorizada: 4/4 tabelas medidas, 4/4 contagens de linhas, estados nativos ao vivo, foco devolvido ao Portal, botão Ver no Power BI funcional e histórico preservado após recarregar. Nenhum PBIX foi salvo automaticamente; as imagens usam dados sintéticos.

**1.8.5 — Correção das medições da atualização nativa**

Desempenho de Atualização agora reconhece o comando XML Refresh nativo usado pelo Power BI Desktop, inclusive dentro de Batch, além de XMLA Process e TMSL refresh. Antes, a atualização podia executar, mas seu progresso era descartado como não relacionado, deixando 0 tabelas medidas, contagens indisponíveis e refreshCompletionNotProven. Um resultado explícito de sucesso do mecanismo agora é aceito quando o campo opcional Error está ausente; códigos de erro diferentes de zero e erros XMLA continuam prevalecendo. O progresso ainda exige correlação exata de requisição/atividade, excluindo consultas dos visuais não relacionadas.

Antes do primeiro comando reconhecido, a interface informa que aguarda eventos de atualização do Power BI. Conclusão não confirmada agora mostra orientação traduzida em vez de somente um código técnico. Atualize o aplicativo, conecte ao PBIX correto e execute Atualizar e analisar novamente; relatórios antigos incompletos são preservados e não são reclassificados como sucesso. O aplicativo empacotado foi validado de ponta a ponta numa atualização real autorizada, com atividade por tabela, contagens, conclusão automática e histórico preservado após recarregar. Os prints não contêm dados nem nomes de modelos do usuário; os exemplos da documentação continuam sintéticos.

**1.8.5 — Baixar atualizações pelo navegador**

Quando houver uma versão nova, o aviso de atualização agora oferece Baixar pelo navegador ao lado de Atualizar agora. O botão abre no navegador padrão o endereço oficial do instalador detectado no GitHub, sem fechar o Power Portal nem iniciar a instalação. Execute o instalador baixado manualmente quando desejar. A opção continua disponível após um erro na atualização automática. Falhas ao abrir o navegador são exibidas. Atualizar agora continua baixando pelo app, verificando SHA-256 e tamanho e solicitando autorização do Windows. Downloads pelo navegador não passam pela verificação automática do app: compare o SHA-256 publicado antes de executar o instalador. Os dois botões e a orientação estão traduzidos nos oito idiomas.

**1.8.5 — Prévia do tema com linhas suaves**

O gráfico de linhas do gerador de temas agora usa curvas cúbicas suaves em vez de segmentos retos, tanto com dados de exemplo como com dados do modelo conectado. As curvas passam pelos pontos originais sem criar picos entre os valores; cores, marcadores e dicas são preservados. A mudança afeta somente a prévia: o JSON exportado e a formatação das linhas dos visuais existentes no Power BI não são alterados.

**Doze ferramentas para o Power BI Desktop em um único aplicativo Windows.**

O Power Portal Desktop pertence à **Excelência Consultoria e Educação**. O instalador o adiciona à guia **Ferramentas externas** do Power BI Desktop e ele abre em uma janela separada, assim como outras ferramentas externas de modelagem.

Este repositório é **exclusivo para distribuição**: instaladores, auxiliares de instalação, checksums e documentação. **Nenhum código-fonte do aplicativo Power Portal é publicado aqui.**

A introducao aparece na primeira visita ao mapa em cada execucao do aplicativo. Reabra em **Como organizar com grupos**. SAP e Excel sao exemplos ilustrativos de sistemas, nao novos conectores nem logos oficiais. Grupos vazios aparecem como areas de destino. Soltar no grupo destacado associa a tabela; soltar fora conserva o grupo atual.

Seu diagrama e salvo automaticamente neste computador para o mesmo modelo: grupos, imagens, cores e posicoes. Exporte o JSON para guardar uma copia ou importar depois. Confira a mensagem de diagrama salvo.

As setas dos relacionamentos agora ficam sobre a curva e giram conforme sua direcao local, inclusive em ligacoes diagonais ou invertidas. Setas SVG maiores, de 36 × 26 unidades, sempre pretas com contorno branco de 3 unidades, independentemente da cor da linha. O filtro unidirecional continua do destino para a origem; o bidirecional mostra duas setas opostas. O filtro automatico conserva o indicador de interrogacao. Esta alteracao e apenas visual.

O cabecalho animado do Power Portal agora incorpora o nome do arquivo, o status da conexao e os cinco botoes de leitura/importacao/busca/atualizacao. A faixa separada abaixo do banner foi removida para liberar espaco. O conteudo se reorganiza dentro do cabecalho em janelas menores e nos oito idiomas, incluindo arabe. Confirmacoes, avisos e comportamento das atualizacoes foram preservados.

O Mapa de relacionamentos agora fica imediatamente depois do TV Tool no menu lateral e na galeria inicial. O bloco generico Dados reais do modelo foi removido do Gerador de Tabela Calendario e da Biblioteca de Componentes. Os controles proprios de leitura e envio continuam; o botao de periodo real usa o calendario selecionado dentro da ferramenta. As capas da pagina inicial foram redesenhadas como ilustracoes vetoriais locais sem texto embutido. Titulos, descricoes e acoes ficam fora das imagens e acompanham o idioma selecionado. Arraste uma coluna de origem para outra tabela para abrir o dialogo de relacionamento real e escolher a coluna de destino. Soltar em uma coluna ja a preseleciona. Revise cardinalidade, filtro e estado ativo; depois valide e aplique com confirmacao nativa e backup BIM.

**1.8.5 — Correções no início da atualização**

Desempenho de Atualização fica imediatamente abaixo de Mapa de relacionamentos no menu lateral e na galeria inicial. A identificação do botão nativo ignora as abas Home duplicadas das visualizações de consultas DAX e TMDL, evitando “Ambiguous Power BI control: home”. Se o controle não estiver disponível, selecione Relatório, Dados ou Modelo no Power BI.

<a name="download-and-install"></a>
## Download e instalação

<a name="option-1-install-with-a-few-clicks"></a>
### Opção 1: instalar com poucos cliques

1. [Baixe o Power Portal Desktop 1.8.8 para Windows x64](https://github.com/luisgnserra/powerportaldesktop/releases/download/v1.8.8/PowerPortal-Setup-1.8.8-x64.exe).
2. Execute o instalador e aprove a solicitação de administrador do Windows.
3. Escolha a pasta de instalação e o idioma padrão.
4. Conclua a instalação, feche e abra novamente o Power BI Desktop.
5. Abra um PBIX e selecione **Ferramentas externas > Power Portal**.

**O Windows pode avisar que o editor é desconhecido:** a versão 1.8.8 não possui assinatura digital. Prossiga somente se confiar nesta distribuição. Se sua organização bloquear programas sem assinatura, procure a TI em vez de contornar a política.

[Versão mais recente](https://github.com/luisgnserra/powerportaldesktop/releases/latest) · [Guia de instalação](docs/pt-BR/INSTALLATION.md) · [Configuração](docs/pt-BR/CONFIGURATION.md) · [Solução de problemas](docs/pt-BR/TROUBLESHOOTING.md)

<a name="launch-from-power-bis-external-tools-ribbon"></a>
### Abrir pela guia Ferramentas externas do Power BI

O instalador adiciona **Power Portal** à guia **Ferramentas externas** do Power BI Desktop. Clique no ícone com o PBIX aberto para iniciar o aplicativo complementar e ler automaticamente o modelo local desse arquivo.

![Power Portal instalado na guia Ferramentas externas do Power BI Desktop](docs/images/powerbi-external-tools.png)

O print original da guia está em português: **Ferramentas externas** corresponde a **External Tools** em inglês. O Power Portal abre em uma **janela separada conectada ao Power BI**, não como um visual do relatório ou um novo painel interno do Power BI.

![Início do Power Portal 1.8.8, menu completo e aviso de conexão ao iniciar](docs/images/pt-BR/home.png)

**Já está com o Power BI aberto?** Ao iniciar por um atalho, o Power Portal detecta modelos locais abertos e mostra um aviso de conexão. Escolha **Localizar modelos abertos**, selecione seu arquivo e conecte. Assim você poderá consultar os dados e enviar as alterações compatíveis, com confirmação.

Depois de conectado, o status fica resumido no cabeçalho em vez de ocupar uma faixa separada.

[Veja as doze ferramentas, telas de conexão e ações diretas no Power BI no guia ilustrado](docs/pt-BR/SCREENSHOTS.md).

<a name="new-relationship-map"></a>
### Novo: mapa de relacionamentos

Entenda as ligações reais entre tabelas em um canvas com movimentação livre. Organize Fatos, Dimensões e grupos de negócio personalizados com cores, ícones e nomes amigáveis; salve os layouts automaticamente e exporte/importe JSON.

![Mapa com grupos Fatos e Dimensões e edição de relacionamentos reais](docs/images/pt-BR/relationship-map.png)

Crie, edite, ative/desative e exclua relacionamentos no modelo conectado do Power BI **após confirmação e backup dos metadados**. A personalização visual fica no Power Portal; ela não renomeia tabelas nem modifica o layout nativo do Power BI. [Tutorial completo de relacionamentos](docs/pt-BR/RELATIONSHIPS.md).

Na 1.8.8, clique ou arraste entre colunas exatas para preparar uma ligação; use botão direito nas linhas para cor, edição e exclusão confirmada. Grupos aceitam imagens locais e mais de 30 ícones. Tabelas automáticas de data/hora ficam ocultas por padrão com opção de exibição. Atualize a partir do Power BI após edições externas ou acione a detecção nativa com backup prévio e etapa separada de revisão/conclusão.

<a name="built-in-update-checks"></a>
### Verificação de atualizações integrada

A partir da **1.6.2**, o aplicativo instalado verifica a Release oficial mais recente no GitHub ao abrir. Se houver uma versão estável mais nova, mostra **Atualizar agora**. Na 1.6.4, o aviso ganhou destaque, animação e permanece visível durante a rolagem, respeitando a preferência por movimento reduzido. Não fica uma linha permanente de “aplicativo atualizado”. Clique para baixar, verificar SHA-256/tamanho e iniciar o instalador automaticamente.

O Windows solicita autorização de administrador. Somente o Power Portal fecha; o Power BI permanece aberto. Salve/exporte primeiro as edições das ferramentas ainda não enviadas. Falhas de download ou autorização cancelada deixam um erro explícito e uma opção de tentar novamente.

![Aviso de nova versão e botão Atualizar agora](docs/images/pt-BR/update-available.png)

O print usa um **aviso futuro simulado da 1.8.8** para ilustrar a interface, não para anunciar uma versão publicada. **A versão 1.8.8 já está publicada:** usuários da 1.6.2 ou superior podem reabrir o aplicativo ou clicar em **Verificar atualizações** para recebê-la. [Guia de atualização](docs/pt-BR/UPDATES.md).

**Está na 1.6.1 ou anterior? Instale a 1.6.2 manualmente uma vez** para habilitar o recurso. Você também pode usar **Verificar atualizações** para repetir uma verificação que falhou ou foi feita sem internet. O atualizador nunca instala apenas porque você abriu o aplicativo.

<a name="option-2-install-from-powershell"></a>
### Opção 2: instalar pelo PowerShell

Abra o **Windows PowerShell 5.1 ou PowerShell 7 no Windows**:

```powershell
$script = Join-Path $env:TEMP 'Install-PowerPortal.ps1'
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/luisgnserra/powerportaldesktop/v1.8.8/install.ps1' -OutFile $script
# Review the downloaded script before running it.
Get-Content -LiteralPath $script
& $script
```

O auxiliar baixa a **versão 1.8.8**, verifica o SHA-256 fixado e abre o mesmo instalador. Não instala Node.js, PHP, SDK do .NET nem compila nada.

Para instalação sem interação, execute o mesmo auxiliar em uma **janela do PowerShell como administrador**:

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -Silent
```

Para somente baixar e verificar o checksum, sem instalar:

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -DownloadOnly
```

Se a execução de scripts estiver bloqueada, siga a política da sua organização ou use o instalador executável. Consulte as [instruções completas de linha de comando](docs/pt-BR/INSTALLATION.md#command-line-installation).

<a name="requirements"></a>
## Requisitos

- Windows 10 ou 11, **x64**.
- Power BI Desktop com suporte a Ferramentas externas. Esta instalação não é para Power BI Service, macOS, Windows ARM64 ou Power BI Report Server.
- Permissão de administrador para instalar e registrar a ferramenta externa.
- Internet para baixar o instalador; ferramentas locais e prévias incluídas funcionam sem internet.
- Relatórios publicados/privados no TV Tool exigem internet e a conta Microsoft, licença e permissões correspondentes.

O aplicativo inclui os componentes de execução necessários. Você não precisa de ferramentas de desenvolvimento.

<a name="included-tools"></a>
## Ferramentas incluídas

| Ferramenta | O que faz |
|---|---|
| Gerador de temas | Importação de JSON destacada, prévia local em tempo real, exportação JSON e envio direto com confirmação no final da página. |
| TV Tool | Abre um exemplo oficial funcional no navegador, apresenta páginas de relatórios publicados ou imagens locais, configura tempos/transições e exporta HTML. |
| Gerador de calendário | Lê metadados e datas de calendários existentes, exporta scripts ou cria uma tabela calendário calculada com confirmação e backup. |
| Checklist de performance | Avalia um relatório com o checklist do portal e os metadados disponíveis do modelo. |
| Biblioteca de componentes | Monta componentes HTML/DAX e cria uma medida HTML no modelo conectado. |
| Calculadora de contraste | Verifica o contraste de cores segundo os limites WCAG. |
| Analisador PBIP/PBIR | Inspeciona metadados de projetos locais, com pontuações heurísticas e contagens disponíveis de páginas/visuais. |
| Documentador de modelo | Exporta tabelas, colunas, medidas e relacionamentos para Markdown ou JSON. |
| Auditor de medidas | Revisa medidas do modelo ou DAX fornecido com verificações heurísticas. |
| Formatador DAX | Formata localmente, exporta/copia ou atualiza uma medida selecionada no modelo conectado, com confirmação. |
| Mapa de relacionamentos | Arrasta caixas de tabelas, agrupa/personaliza ligações, salva layouts visuais e aplica alterações confirmadas de relacionamentos diretamente no Power BI. |
| Desempenho de Atualização | Meça a atualizacao nativa. Compare tempos e linhas. |

Também inclui uma galeria inicial, menu lateral retrátil com as doze ferramentas visíveis sem rolagem nos tamanhos suportados, informações de propriedade/desenvolvimento e uma área de consultoria e treinamentos com os dois vídeos em destaque. **Consultoria e Treinamentos** fica abaixo de **Sobre o desenvolvimento**.

<a name="changes-that-interact-directly-with-your-open-power-bi-file"></a>
### Alterações que interagem diretamente com seu arquivo aberto no Power BI

| Ação | Interação direta |
|---|---|
| Atualizar/ler modelo e consultar amostras | Lê o modelo local selecionado; não o modifica. |
| Enviar tema diretamente | Aplica o JSON na janela selecionada do relatório, com confirmação, importação visível e verificação. |
| Criar calendário no Power BI | Cria uma nova tabela calculada, com backup dos metadados e confirmação. Atualize no Desktop depois. |
| Criar medida HTML no Power BI | Cria uma medida na tabela selecionada, com backup e confirmação. Adicione manualmente um visual HTML compatível. |
| Atualizar medida no Power BI | Atualiza o DAX da medida selecionada, com backup, confirmação e verificação de alterações concorrentes. |
| Criar/editar/excluir relacionamentos no Power BI | Altera ligações entre colunas de tabelas, cardinalidade, direção dos filtros e estado ativo, com backup, confirmação e verificação de estado desatualizado. |
| Desempenho de Atualização | A atualizacao nativa consulta as fontes e substitui os dados importados. Salve uma copia do PBIX. Resolva credenciais e erros no Power BI; o rastreamento nao cancela a atualizacao nem inclui todas as consultas auxiliares do Power Query. |

**Conectar não grava alterações. Salve uma cópia do PBIX primeiro, revise cada confirmação e depois salve o PBIX você mesmo.** [Prints e exemplos passo a passo](docs/pt-BR/SCREENSHOTS.md#direct-interactions-with-the-open-power-bi-file).

<a name="eight-languages"></a>
## Oito idiomas

Português, inglês, espanhol, mandarim em chinês simplificado, francês, japonês, hindi e árabe. As bandeiras ocupam no máximo duas linhas; o árabe usa layout da direita para a esquerda.

Use as bandeiras no topo desta página para selecionar o idioma da documentação. Todos os guias e prints do aplicativo estão disponíveis nesses oito idiomas. Os prints são capturados no aplicativo real no idioma selecionado; nomes de objetos do modelo e DAX permanecem inalterados. A imagem verdadeira da guia do Power BI permanece em português em todos os guias, com explicação no idioma selecionado.

O instalador sugere o idioma da interface do Windows. A seleção posterior do usuário é salva localmente e tem prioridade sobre o padrão da instalação. Nomes do modelo, dados e DAX não são traduzidos.

<a name="important-limits-and-data-safety"></a>
## Limites importantes e segurança dos dados

- **Salve uma cópia do PBIX antes de fazer alterações.** Gravações confirmadas criam backups locais dos metadados, mas eles não substituem um backup completo do PBIX.
- A aplicação de temas usa **Automação de Interface do Windows visível** e exige confirmação. Não há uma API genérica suportada para gravar temas em um PBIX aberto no Desktop; os diálogos não são ocultados.
- O TOM conecta ao modelo semântico, não aos filtros da página ativa, páginas ou posicionamento de visuais. Uma medida HTML não adiciona automaticamente um visual ao relatório.
- Pontuações da análise de relatórios e auditoria de medidas são heurísticas, não medições do desempenho dos visuais.
- Dados do modelo local não são enviados ao site do Power Portal. O atualizador solicita apenas metadados/instaladores oficiais de Releases do GitHub, nunca o conteúdo do modelo. Links externos abertos pelo usuário, apresentações online e fontes DirectQuery podem exigir rede.
- Exportações da documentação, backups dos metadados e registros de alterações podem conter detalhes confidenciais do modelo. Armazene e compartilhe de forma adequada.

Leia o [guia de uso e segurança](docs/pt-BR/USAGE.md) antes de modificar um modelo.

<a name="consulting-complete-data-solutions-and-training"></a>
## Consultoria, soluções completas de dados e treinamentos

A Excelência oferece consultoria em Power BI, Microsoft Fabric, engenharia de dados, soluções de dados de ponta a ponta e **treinamentos In Company**.

- [Agende uma conversa pelo WhatsApp](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0)
- E-mail: [contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)
- [Treinamentos Power BI In Company](https://www.consultoriaexcelencia.com.br/educacao/treinamentos-power-bi)
- [Vídeo em destaque 1](https://www.youtube.com/watch?v=bIxmIaYmt0c)
- [Vídeo em destaque 2](https://www.youtube.com/watch?v=FNo7F7kh6h4)
- [Blog da Excelência](https://consultoriaexcelencia.com.br/blog) · [Cursos online](https://ead.consultoriaexcelencia.com.br/)

Responsável pelo desenvolvimento: **Luis Gustavo Nascimento Serra**.
[LinkedIn](https://www.linkedin.com/in/luisgnserra/) · [YouTube: Mais Que Planilhas](https://www.youtube.com/MaisQuePlanilhas)

Microsoft, Power BI e Microsoft Fabric são marcas da Microsoft. A identificação MVP é pessoal e não implica propriedade, patrocínio ou endosso da Microsoft.

<a name="support-and-distribution"></a>
## Suporte e distribuição

[Solução de problemas e suporte](docs/pt-BR/TROUBLESHOOTING.md) · [Notas de versão](CHANGELOG.pt-BR.md) · [Aviso de distribuição](DISTRIBUTION.pt-BR.md) · [Manutenção das Releases](docs/pt-BR/RELEASING.md)

Use os **Assets das Releases** para baixar o aplicativo. Os arquivos ZIP/TAR automáticos “Source code” do GitHub contêm apenas a documentação e o auxiliar de instalação deste repositório de distribuição, não o aplicativo nem seu código-fonte.

<a name="refresh-performance"></a>
## Desempenho de Atualização

Meça a atualizacao nativa. Compare tempos e linhas. [Desempenho de Atualização](docs/pt-BR/REFRESH-ANALYSIS.md).

Conecte ao PBIX correto, abra Desempenho de Atualização e clique em Atualizar e analisar. Confira o nome do arquivo e confirme. O rastreamento inicia antes de acionar Página Inicial > Atualizar nativo; nao atualiza tabelas sequencialmente via TOM. Mantenha o Power BI aberto e resolva credenciais, erros ou cancelamento nele. Um backup BIM nao restaura dados atualizados.

A conclusao automatica exige termino observado dos comandos de atualizacao e janela do Power BI pronta. Feche os dialogos nativos de resultado. Concluir captura manualmente sempre indica analise incompleta, nao comprova sucesso nem cancela a atualizacao. Erros do mecanismo/rastreamento sao explicitos. Uma captura interrompida nao e apresentada como concluida.

<a name="animated-home-cards"></a>
## Cards animados na pagina inicial

Os doze cards iniciais agora usam o mesmo azul-marinho do menu (#041e43), com cenas vetoriais originais sem texto. Cada ferramenta mantem sua ilustracao central, enriquecida com paineis de dados, graficos, banco de dados, orbitas, grade e satelites flutuantes. Linhas de sinal se movem suavemente. As capas nao carregam imagens, scripts ou servicos externos.

Passe o mouse ou foque um card pelo teclado para ver moldura e brilho dourados, reflexo de luz, cena realcada, seta circular de abertura e acao dourada. Pressionar gera feedback imediato sem atrasar a navegacao. Enter/Espaco continuam abrindo a mesma ferramenta. A preferencia de reduzir movimentos do Windows/navegador interrompe animacoes, preservando realce estatico e foco visivel. Titulos e acoes ficam fora da imagem e seguem o idioma selecionado. Os prints mostram estados estaticos normal/hover, nao videos.

![Mouse / foco pelo teclado](docs/images/pt-BR/home-hover.png)

