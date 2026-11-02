# Notas de versão

<!-- language-selector -->
[🇺🇸 English](CHANGELOG.md) · [🇧🇷 Português](CHANGELOG.pt-BR.md) · [🇪🇸 Español](CHANGELOG.es.md) · [🇨🇳 简体中文](CHANGELOG.zh-CN.md) · [🇫🇷 Français](CHANGELOG.fr.md) · [🇯🇵 日本語](CHANGELOG.ja.md) · [🇮🇳 हिन्दी](CHANGELOG.hi.md) · [🇸🇦 العربية](CHANGELOG.ar.md)
<!-- /language-selector -->

<a name="189"></a>
## 1.8.9

**Amostra do calendário e atalho para atualização nativa**

No Gerador de Tabela Calendário, a amostra real (até 50 linhas) agora fica abaixo de Gerar script. Atualizar no Power BI fica ao lado desse botão e, com conexão ativa, abre Desempenho de Atualização e inicia o mesmo fluxo nativo de atualização dos dados com confirmação. Acompanhe ali estados das tabelas, tempos e contagens de linhas. Isso atualiza o modelo inteiro; não aplica o script gerado, não cria nem substitui a tabela calendário e não salva o PBIX. Criar calendário no Power BI continua sendo uma ação separada. O botão fica desabilitado sem conexão, funciona pelo teclado e está traduzido nos oito idiomas. Cancelamento e erros usam o fluxo de atualização existente. A amostra continua sendo a última leitura solicitada: use Ler calendário selecionado para consultá-la novamente após atualizar. Testes no aplicativo empacotado verificaram posição, oito traduções, bloqueio offline, conexão exata, cancelamento, erros visíveis, nova tentativa e criação de calendário preservada. Nenhuma atualização real foi iniciada nesses testes; os prints usam dados sintéticos.

<a name="188"></a>
## 1.8.8

**Linhas dinâmicas e envio de temas verificado**

No Mapa de relacionamentos, Estilo das linhas alterna entre Curvas e Retas com ângulos de 90 graus. As extremidades usam dinamicamente as bordas superior/inferior ou esquerda/direita voltadas uma para a outra, considerando o tamanho real das caixas. Nas laterais, mantém a altura da coluna relacionada. Setas pretas com borda branca acompanham trechos retos sem ficar inclinadas nos cantos. O estilo é salvo automaticamente e acompanha o JSON exportado; layouts antigos continuam com curvas. Isso não altera o layout nativo do Power BI nem calcula desvios globais de obstáculos.

Enviar tema diretamente para o Power BI devolve o foco ao Power Portal após a importação nativa e durante a verificação por exportação, somente quando o Power BI estiver em primeiro plano. Após verificar o tema aplicado, mostra o Power BI; erros também mostram a janela selecionada para revisão. Diálogos nativos podem aparecer brevemente e não são ocultados: o Desktop não oferece API suportada de temas sem diálogos. Trocas assíncronas de guia após a importação são tratadas antes da confirmação. Um teste real autorizado no aplicativo empacotado verificou importação/exportação, retorno ao Portal e ativação final do Power BI; depois restaurou o tema Padrão original, sem salvar o PBIX. Todos os prints da documentação usam dados sintéticos.

<a name="187"></a>
## 1.8.7

**Seleção de cores mais clara e confiável**

As onze cores do tema agora possuem uma amostra nativa visível e um botão Selecionar cor ao lado do campo HEX editável. Clique na amostra ou no botão, ou use Enter/Espaço com o botão em foco. O seletor não depende mais de um campo invisível sem tamanho nem de clique duplo no HEX. A edição manual, importação de temas, prévia em tempo real e exportação JSON continuam disponíveis. Falhas ao abrir são mostradas explicitamente. A abertura nativa foi verificada repetidamente no aplicativo Windows, além dos onze botões por mouse/teclado e dos textos nos oito idiomas.

Análise Atualização agora se chama Desempenho de Atualização no menu, na página inicial, no título da ferramenta e nos oito idiomas. A alteração é apenas de nome: atualização nativa, progresso ao vivo, tempos, linhas, histórico local e compatibilidade JSON/CSV permanecem iguais. As análises salvas continuam disponíveis, sem migração ou necessidade de atualizar os dados. As imagens usam dados sintéticos.

<a name="186"></a>
## 1.8.6

**Acompanhe a atualização dentro do Power Portal**

Inicie Atualizar e analisar no Power Portal e acompanhe cartões ao vivo com cada tabela, estado observado, fase do mecanismo, tempo de atividade e o último texto de progresso nativo disponível do Power BI. O Power Portal recupera o foco após iniciar e, se o Power BI reaparecer em primeiro plano, após a conclusão nativa. Não toma repetidamente o foco de outros aplicativos. Ver no Power BI abre o arquivo selecionado sem iniciar outra atualização; essa escolha desativa o retorno automático do foco nessa captura.

O Power BI continua sendo o mecanismo de atualização. Sua janela pode aparecer brevemente: não se trata de uma API suportada de processamento de PBIX sem janela. Credenciais, erros e cancelamento permanecem no Power BI; nenhum diálogo é ocultado ou dispensado automaticamente. O texto nativo mantém o idioma do Power BI e informa o horário da última leitura. A ausência de texto é explícita; o rastreamento do mecanismo continua se a leitura da janela falhar. Fases encerradas não comprovam a conclusão da tabela, não há percentuais inventados e as linhas finais são contadas apenas após a captura. Histórico e JSON incluem os estados nativos observados; revise as exportações antes de compartilhar. O aplicativo empacotado foi testado com atualização real autorizada: 4/4 tabelas medidas, 4/4 contagens de linhas, estados nativos ao vivo, foco devolvido ao Portal, botão Ver no Power BI funcional e histórico preservado após recarregar. Nenhum PBIX foi salvo automaticamente; as imagens usam dados sintéticos.

<a name="185"></a>
## 1.8.5

**Correção das medições da atualização nativa**

Análise Atualização agora reconhece o comando XML Refresh nativo usado pelo Power BI Desktop, inclusive dentro de Batch, além de XMLA Process e TMSL refresh. Antes, a atualização podia executar, mas seu progresso era descartado como não relacionado, deixando 0 tabelas medidas, contagens indisponíveis e refreshCompletionNotProven. Um resultado explícito de sucesso do mecanismo agora é aceito quando o campo opcional Error está ausente; códigos de erro diferentes de zero e erros XMLA continuam prevalecendo. O progresso ainda exige correlação exata de requisição/atividade, excluindo consultas dos visuais não relacionadas.

Antes do primeiro comando reconhecido, a interface informa que aguarda eventos de atualização do Power BI. Conclusão não confirmada agora mostra orientação traduzida em vez de somente um código técnico. Atualize o aplicativo, conecte ao PBIX correto e execute Atualizar e analisar novamente; relatórios antigos incompletos são preservados e não são reclassificados como sucesso. O aplicativo empacotado foi validado de ponta a ponta numa atualização real autorizada, com atividade por tabela, contagens, conclusão automática e histórico preservado após recarregar. Os prints não contêm dados nem nomes de modelos do usuário; os exemplos da documentação continuam sintéticos.

<a name="184"></a>
## 1.8.4

**Baixar atualizações pelo navegador**

Quando houver uma versão nova, o aviso de atualização agora oferece Baixar pelo navegador ao lado de Atualizar agora. O botão abre no navegador padrão o endereço oficial do instalador detectado no GitHub, sem fechar o Power Portal nem iniciar a instalação. Execute o instalador baixado manualmente quando desejar. A opção continua disponível após um erro na atualização automática. Falhas ao abrir o navegador são exibidas. Atualizar agora continua baixando pelo app, verificando SHA-256 e tamanho e solicitando autorização do Windows. Downloads pelo navegador não passam pela verificação automática do app: compare o SHA-256 publicado antes de executar o instalador. Os dois botões e a orientação estão traduzidos nos oito idiomas.

<a name="183"></a>
## 1.8.3

**Prévia do tema com linhas suaves**

O gráfico de linhas do gerador de temas agora usa curvas cúbicas suaves em vez de segmentos retos, tanto com dados de exemplo como com dados do modelo conectado. As curvas passam pelos pontos originais sem criar picos entre os valores; cores, marcadores e dicas são preservados. A mudança afeta somente a prévia: o JSON exportado e a formatação das linhas dos visuais existentes no Power BI não são alterados.

<a name="182"></a>
## 1.8.2

**Correções no início da atualização**

Análise Atualização fica imediatamente abaixo de Mapa de relacionamentos no menu lateral e na galeria inicial. A identificação do botão nativo ignora as abas Home duplicadas das visualizações de consultas DAX e TMDL, evitando “Ambiguous Power BI control: home”. Se o controle não estiver disponível, selecione Relatório, Dados ou Modelo no Power BI.

Atualizar permanece bloqueado enquanto a confirmação, validação e preparação do rastreamento estão pendentes; Concluir captura fica oculto até a captura estar pronta. Isso impede um segundo acionamento com o erro indevido “Finish the active Power BI operation before refreshing”. Uma falha comprovadamente anterior ao acionamento nativo encerra o rastreamento, verifica a limpeza e permite nova tentativa. Se o acionamento já puder ter ocorrido, o erro fica visível e a captura permanece pendente: confira o Power BI, termine a atualização e feche os diálogos antes de Concluir captura. Solicitações repetidas retomam a captura existente, sem iniciar outra atualização. Operações realmente em andamento ainda precisam terminar primeiro.

<a name="181"></a>
## 1.8.1

**Cards animados na pagina inicial**

Os doze cards iniciais agora usam o mesmo azul-marinho do menu (#041e43), com cenas vetoriais originais sem texto. Cada ferramenta mantem sua ilustracao central, enriquecida com paineis de dados, graficos, banco de dados, orbitas, grade e satelites flutuantes. Linhas de sinal se movem suavemente. As capas nao carregam imagens, scripts ou servicos externos.

Passe o mouse ou foque um card pelo teclado para ver moldura e brilho dourados, reflexo de luz, cena realcada, seta circular de abertura e acao dourada. Pressionar gera feedback imediato sem atrasar a navegacao. Enter/Espaco continuam abrindo a mesma ferramenta. A preferencia de reduzir movimentos do Windows/navegador interrompe animacoes, preservando realce estatico e foco visivel. Titulos e acoes ficam fora da imagem e seguem o idioma selecionado. Os prints mostram estados estaticos normal/hover, nao videos.

<a name="180"></a>
## 1.8.0

**Análise Atualização** — Meça a atualizacao nativa. Compare tempos e linhas.

Conecte ao PBIX correto, abra Análise Atualização e clique em Atualizar e analisar. Confira o nome do arquivo e confirme. O rastreamento inicia antes de acionar Página Inicial > Atualizar nativo; nao atualiza tabelas sequencialmente via TOM. Mantenha o Power BI aberto e resolva credenciais, erros ou cancelamento nele. Um backup BIM nao restaura dados atualizados.

A atividade observada e a uniao dos intervalos do mecanismo identificados exatamente por tabela, sem somar fases aninhadas duas vezes. Nao representa apenas consulta a fonte nem um caminho critico comprovado. O total observado vai do acionamento ate a deteccao da conclusao, inclui sobrecarga de interface/verificacao e exclui a contagem posterior de linhas. Eventos sem tabela identificada aparecem separadamente.

A conclusao automatica exige termino observado dos comandos de atualizacao e janela do Power BI pronta. Feche os dialogos nativos de resultado. Concluir captura manualmente sempre indica analise incompleta, nao comprova sucesso nem cancela a atualizacao. Erros do mecanismo/rastreamento sao explicitos. Uma captura interrompida nao e apresentada como concluida.

Linhas sao contadas depois da captura, fora do cronometro. DirectQuery/DirectLake nao sao consultados. Falta de evento nao significa tempo zero. Guarde ate 30 analises por modelo neste computador; nenhuma e enviada ao portal.

<a name="175"></a>
## 1.7.5

- O Mapa de relacionamentos agora fica imediatamente depois do TV Tool no menu lateral e na galeria inicial.
- O bloco generico Dados reais do modelo foi removido do Gerador de Tabela Calendario e da Biblioteca de Componentes. Os controles proprios de leitura e envio continuam; o botao de periodo real usa o calendario selecionado dentro da ferramenta.
- As capas da pagina inicial foram redesenhadas como ilustracoes vetoriais locais sem texto embutido. Titulos, descricoes e acoes ficam fora das imagens e acompanham o idioma selecionado.
- Arraste uma coluna de origem para outra tabela para abrir o dialogo de relacionamento real e escolher a coluna de destino. Soltar em uma coluna ja a preseleciona. Revise cardinalidade, filtro e estado ativo; depois valide e aplique com confirmacao nativa e backup BIM.

<a name="assets"></a>
### Assets

- `PowerPortal-Setup-1.7.5-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="174"></a>
## 1.7.4

- O cabecalho animado do Power Portal agora incorpora o nome do arquivo, o status da conexao e os cinco botoes de leitura/importacao/busca/atualizacao. A faixa separada abaixo do banner foi removida para liberar espaco. O conteudo se reorganiza dentro do cabecalho em janelas menores e nos oito idiomas, incluindo arabe. Confirmacoes, avisos e comportamento das atualizacoes foram preservados.

<a name="assets-1"></a>
### Assets

- `PowerPortal-Setup-1.7.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="173"></a>
## 1.7.3

- As setas dos relacionamentos agora ficam sobre a curva e giram conforme sua direcao local, inclusive em ligacoes diagonais ou invertidas.
- Setas SVG maiores, de 36 × 26 unidades, sempre pretas com contorno branco de 3 unidades, independentemente da cor da linha.
- O filtro unidirecional continua do destino para a origem; o bidirecional mostra duas setas opostas. O filtro automatico conserva o indicador de interrogacao. Esta alteracao e apenas visual.

<a name="assets-2"></a>
### Assets

- `PowerPortal-Setup-1.7.3-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="172"></a>
## 1.7.2

- A introducao aparece na primeira visita ao mapa em cada execucao do aplicativo. Reabra em **Como organizar com grupos**. SAP e Excel sao exemplos ilustrativos de sistemas, nao novos conectores nem logos oficiais. Grupos vazios aparecem como areas de destino. Soltar no grupo destacado associa a tabela; soltar fora conserva o grupo atual.
- Separe tabelas por sistema, assunto, fatos ou dimensoes. Crie um grupo e arraste a tabela pelo titulo para dentro dele. O grupo de destino fica destacado.
- Seu diagrama e salvo automaticamente neste computador para o mesmo modelo: grupos, imagens, cores e posicoes. Exporte o JSON para guardar uma copia ou importar depois. Confira a mensagem de diagrama salvo.
- A organizacao visual nao altera tabelas, fontes de dados nem o layout nativo do Power BI. Para remover uma tabela do grupo, selecione Sem grupo no painel.

<a name="assets-3"></a>
### Assets

- `PowerPortal-Setup-1.7.2-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="171"></a>
## 1.7.1

- Prepare relacionamentos clicando ou arrastando entre colunas exatas; revise o rascunho laranja tracejado e aplique com confirmação/backup. Pares existentes abrem a edição, sem duplicatas.
- Menu com botão direito na linha para editar, cores locais e exclusão confirmada.
- Mais de 30 ícones, imagens locais PNG/JPEG nos grupos e arraste pelo fundo. Imagens são normalizadas e embutidas nos diagramas salvos/exportados.
- Tabelas automáticas de data/hora ocultas por padrão com preferência salva; tabelas comuns ocultas continuam visíveis. Expanda qualquer tabela para selecionar todas as colunas.
- Atualize o diagrama após alterações no Power BI preservando personalizações visuais que permanecem.
- Detecção nativa do Desktop com confirmação/backup BIM prévios e conclusão/revisão explícitas; gravações, troca de modelo e atualizações bloqueadas até concluir.
- Documentação em oito idiomas e 19 prints por idioma atualizados para 1.7.1. Imagem verdadeira da guia Power BI compartilhada em português.

<a name="assets-4"></a>
### Assets

- `PowerPortal-Setup-1.7.1-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="170"></a>
## 1.7.0

- Novo **Mapa de relacionamentos** exclusivo do Desktop, a décima primeira ferramenta: caixas arrastáveis, deslocamento/zoom, cardinalidade/direção dos filtros e ligações inativas tracejadas.
- Grupos Fatos/Dimensões/negócios personalizados com nomes, ícones, cores e arraste coletivo. Títulos amigáveis e linhas coloridas.
- Salvamento automático de layout visual por modelo e importação/exportação JSON validada, com falhas visíveis e nova tentativa. Propriedades visuais não renomeiam objetos nem alteram o diagrama nativo Power BI.
- Criação, edição, ativação/desativação e exclusão de relacionamentos ao vivo pelo TOM. Cada edição exige confirmação nativa explícita, backup e proteção contra estado antigo; configurações RLS/integridade existentes são preservadas.
- Projetos importados continuam somente leitura; relacionamentos não suportados e falhas de validação são explícitos.
- Interface em oito idiomas, menu compacto com onze itens sem rolagem, instalador atualizado e guias em inglês com 20 prints.

<a name="assets-5"></a>
### Assets

- `PowerPortal-Setup-1.7.0-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="164"></a>
## 1.6.4

- Exemplo destacado no topo do TV Tool abre o painel oficial funcional no navegador; slides ilustrativos locais continuam disponíveis.
- Aviso de atualização com cores mais fortes, versão maior, faixa fixa e animação suave respeitando movimento reduzido.
- Sem linha permanente “aplicativo atualizado”. Conexão compacta no cabeçalho, com lembrete de cópia do PBIX na dica.
- Importação de tema JSON destacada; **Enviar tema diretamente para o Power BI** agora fica ao final. Removidos parágrafos redundantes da ferramenta, mantendo confirmação e limites documentados da automação.
- Textos novos em oito idiomas. Instalador, auxiliar, checksum e 18 prints atualizados, incluindo envio de tema no final.

<a name="assets-6"></a>
### Assets

- `PowerPortal-Setup-1.6.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="163"></a>
## 1.6.3

- Incremento de versão estável para usuários da 1.6.2 testarem o aviso real e o fluxo **Atualizar agora**.
- Sem alterações funcionais; mesmo atualizador com consentimento e dez ferramentas.
- Instalador/checksum/auxiliar, documentação e prints atualizados para 1.6.3.

Mantenha a 1.6.2 instalada para testar: reabra ou clique em **Verificar atualizações**. Escolha **Atualizar agora** só quando estiver pronto para instalar. O mantenedor não atualizou a instalação local do usuário durante a publicação.

<a name="assets-7"></a>
### Assets

- `PowerPortal-Setup-1.6.3-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="162"></a>
## 1.6.2

- Verificação ao iniciar da Release oficial estável mais recente no aplicativo instalado.
- **Atualizar agora** baixa e verifica EXE x64 exato com digest SHA-256/tamanho do Asset GitHub e inicia instalador silencioso elevado na pasta atual.
- Instala só após clique e autorização Windows. Power BI não fecha; há aviso de edições não enviadas.
- Proteção de concorrência atualização/gravação, downloads HTTPS limitados, erros explícitos offline/checksum/UAC e controles de nova tentativa.
- Avisos em oito idiomas, **Verificar atualizações** manual, prints atualizados e guia de atualização em inglês.

O aplicativo permanece sem assinatura. Instale manualmente a 1.6.2 uma vez se estiver na 1.6.1 ou anterior. Reabra o Power Portal ao terminar a atualização.

<a name="assets-8"></a>
### Assets

- `PowerPortal-Setup-1.6.2-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

Validados comparação de versões, Release oficial, rejeição por hash/tamanho em fluxo, limpeza de parciais, argumentos do instalador, consentimento/idiomas/erros da interface e registro empacotado. Não houve atualização real nem gravação em modelo de cliente nos testes automatizados.

<a name="161"></a>
## 1.6.1

- Catálogo do menu cabe na altura suportada sem rolagem, nos oito idiomas e modos expandido/recolhido.
- **Consultoria e Treinamentos** movido abaixo de **Sobre o desenvolvimento**, acima dos logos.
- Aviso inicial detecta modelos abertos ao iniciar independentemente e oferece conexão explícita.
- Aviso conectado explica consulta e alterações confirmadas, com lembrete de cópia e botão de atualizar modelo.
- Documentação ilustrada em inglês cobre guia Ferramentas externas, todas as ferramentas, seleção, consultas e botões de envio direto.
- Instalador, auxiliar PowerShell fixado, checksums e manifesto permanecem sincronizados.

Validado menu em alturas de 680, 768 e 900 pixels, nos oito idiomas, inicialização/seleção/atualização sem gravações e registro/fechamento empacotados. Prints usam dados sintéticos; nenhum arquivo de cliente foi alterado.

<a name="assets-9"></a>
### Assets

- `PowerPortal-Setup-1.6.1-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

O aplicativo permanece sem assinatura. Envio de temas ainda usa automação visível do Desktop. Veja o [guia ilustrado](docs/pt-BR/SCREENSHOTS.md) e o [guia de uso/segurança](docs/pt-BR/USAGE.md).

<a name="160"></a>
## 1.6.0

Primeira publicação do instalador neste repositório exclusivo de distribuição.

- Consultoria em Power BI, Microsoft Fabric, engenharia de dados e soluções completas.
- Link In Company, dois vídeos, contato WhatsApp/e-mail e opção de copiar e-mail.
- Oito idiomas incluídos: português, inglês, espanhol, mandarim em chinês simplificado, francês, japonês, hindi e árabe.
- Preferência salva por usuário, bandeiras em duas linhas e árabe da direita para a esquerda.
- Seleção de idioma com bandeiras e sugestão do Windows no instalador.
- Dez ferramentas existentes, galeria, navegação retrátil, propriedade/desenvolvimento e integração local.
- Envio de tema confirmado pela automação Windows visível; exportação/verificação do tema mantidas.
- Documentação de instalação/configuração/segurança/solução de problemas em inglês e auxiliar PowerShell que verifica checksum.

<a name="distribution-assets"></a>
### Assets de distribuição

- `PowerPortal-Setup-1.6.0-x64.exe` — instalador NSIS Windows x64.
- `SHA256SUMS.txt` — checksum do instalador.
- `install.ps1` — auxiliar versionado de download/instalação.

<a name="known-limitations"></a>
### Limitações conhecidas

Instalador sem assinatura. Envio de tema ainda usa diálogo visível do Desktop. Visuais não são posicionados pelo TOM. Calendários exigem atualização no Desktop. Não há atualizador automático, catálogo winget/Chocolatey, MSI, macOS, ARM64 ou pacote Report Server.

Nenhum modelo de usuário foi alterado na validação do auxiliar de distribuição desta versão.
