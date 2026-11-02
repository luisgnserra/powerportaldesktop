# Solução de problemas e suporte

<!-- language-selector -->
[🇺🇸 English](../TROUBLESHOOTING.md) · [🇧🇷 Português](TROUBLESHOOTING.md) · [🇪🇸 Español](../es/TROUBLESHOOTING.md) · [🇨🇳 简体中文](../zh-CN/TROUBLESHOOTING.md) · [🇫🇷 Français](../fr/TROUBLESHOOTING.md) · [🇯🇵 日本語](../ja/TROUBLESHOOTING.md) · [🇮🇳 हिन्दी](../hi/TROUBLESHOOTING.md) · [🇸🇦 العربية](../ar/TROUBLESHOOTING.md)
<!-- /language-selector -->

**1.8.6 — Acompanhe a atualização dentro do Power Portal**

Inicie Atualizar e analisar no Power Portal e acompanhe cartões ao vivo com cada tabela, estado observado, fase do mecanismo, tempo de atividade e o último texto de progresso nativo disponível do Power BI. O Power Portal recupera o foco após iniciar e, se o Power BI reaparecer em primeiro plano, após a conclusão nativa. Não toma repetidamente o foco de outros aplicativos. Ver no Power BI abre o arquivo selecionado sem iniciar outra atualização; essa escolha desativa o retorno automático do foco nessa captura.

O Power BI continua sendo o mecanismo de atualização. Sua janela pode aparecer brevemente: não se trata de uma API suportada de processamento de PBIX sem janela. Credenciais, erros e cancelamento permanecem no Power BI; nenhum diálogo é ocultado ou dispensado automaticamente. O texto nativo mantém o idioma do Power BI e informa o horário da última leitura. A ausência de texto é explícita; o rastreamento do mecanismo continua se a leitura da janela falhar. Fases encerradas não comprovam a conclusão da tabela, não há percentuais inventados e as linhas finais são contadas apenas após a captura. Histórico e JSON incluem os estados nativos observados; revise as exportações antes de compartilhar. O aplicativo empacotado foi testado com atualização real autorizada: 4/4 tabelas medidas, 4/4 contagens de linhas, estados nativos ao vivo, foco devolvido ao Portal, botão Ver no Power BI funcional e histórico preservado após recarregar. Nenhum PBIX foi salvo automaticamente; as imagens usam dados sintéticos.

**1.8.5 — Correção das medições da atualização nativa**

Desempenho de Atualização agora reconhece o comando XML Refresh nativo usado pelo Power BI Desktop, inclusive dentro de Batch, além de XMLA Process e TMSL refresh. Antes, a atualização podia executar, mas seu progresso era descartado como não relacionado, deixando 0 tabelas medidas, contagens indisponíveis e refreshCompletionNotProven. Um resultado explícito de sucesso do mecanismo agora é aceito quando o campo opcional Error está ausente; códigos de erro diferentes de zero e erros XMLA continuam prevalecendo. O progresso ainda exige correlação exata de requisição/atividade, excluindo consultas dos visuais não relacionadas.

Antes do primeiro comando reconhecido, a interface informa que aguarda eventos de atualização do Power BI. Conclusão não confirmada agora mostra orientação traduzida em vez de somente um código técnico. Atualize o aplicativo, conecte ao PBIX correto e execute Atualizar e analisar novamente; relatórios antigos incompletos são preservados e não são reclassificados como sucesso. O aplicativo empacotado foi validado de ponta a ponta numa atualização real autorizada, com atividade por tabela, contagens, conclusão automática e histórico preservado após recarregar. Os prints não contêm dados nem nomes de modelos do usuário; os exemplos da documentação continuam sintéticos.

**1.8.5 — Baixar atualizações pelo navegador**

Quando houver uma versão nova, o aviso de atualização agora oferece Baixar pelo navegador ao lado de Atualizar agora. O botão abre no navegador padrão o endereço oficial do instalador detectado no GitHub, sem fechar o Power Portal nem iniciar a instalação. Execute o instalador baixado manualmente quando desejar. A opção continua disponível após um erro na atualização automática. Falhas ao abrir o navegador são exibidas. Atualizar agora continua baixando pelo app, verificando SHA-256 e tamanho e solicitando autorização do Windows. Downloads pelo navegador não passam pela verificação automática do app: compare o SHA-256 publicado antes de executar o instalador. Os dois botões e a orientação estão traduzidos nos oito idiomas.

[Voltar ao início](../../README.pt-BR.md)

| Problema | Ação recomendada |
|---|---|
| Power Portal não aparece em Ferramentas externas | Conclua a instalação como administrador, reabra o Desktop e confira o [local de registro](CONFIGURATION.md#external-tools-registration). Reexecute o instalador oficial para reparar. |
| Não existe a guia Ferramentas externas | Confira edição/versão do Power BI Desktop com a TI. O pacote se destina ao Desktop compatível com ferramentas externas, não Service nem Report Server. |
| A ferramenta externa não abre mais | Reinicie o Desktop; o executável pode ter sido movido ou bloqueado. Reinstale para reparar o caminho. Não remova manualmente o `--` inicial dos argumentos. |
| Sem modelo carregado / falha na conexão | Abra um PBIX no Desktop e inicie pela guia, ou use **Localizar modelos abertos**. Reconecte após reiniciar o Desktop; portas antigas expiram. |
| Nome errado / vários modelos | Selecione explicitamente o modelo correto e confira o alvo da confirmação antes de gravar. Títulos das janelas podem omitir o caminho completo. |
| Falha ao importar PBIX bruto | Abra o PBIX no Power BI e conecte localmente. Use BIM/PBIP/TMDL/ZIP para importações suportadas somente leitura. |
| O diálogo de temas ainda aparece | É esperado: a importação de temas usa Automação de Interface visível. Não há API genérica sem diálogo suportada nesta versão. |
| Automação de tema falha | Guarde o JSON, confira a janela, não interaja durante a importação e importe manualmente pelo menu Temas do Power BI. Informe erro exato e versão do Desktop sem publicar PBIX. |
| Tema existente não carregou com o modelo | Salve o JSON do tema atual no Desktop e importe no gerador. TOM não lê o tema do relatório. |
| Medida HTML existe, mas não há visual | Adicione visual HTML compatível e atribua a medida manualmente. |
| Calendário ainda não tem linhas | Atualize o modelo no Desktop e leia novamente. Confira DAX/intervalo de datas. |
| Reversão do calendário recusada | A tabela mudou ou tem dependências. Não force remoção; use a cópia do PBIX ou busque ajuda com o backup. |
| Idioma não muda após reinstalar | A preferência salva do usuário tem prioridade. Troque a bandeira no menu. |
| Configuração inválida de idioma padrão | Feche o aplicativo e peça a um administrador para corrigir `powerportal-defaults.json` com JSON UTF-8 válido e código suportado. |
| Script PowerShell bloqueado | Revise e siga a política de execução da organização. Alternativamente, use o assistente EXE. Não desative controles empresariais. |
| `-Silent` pede PowerShell administrador | Feche o terminal, abra PowerShell com **Executar como administrador** e tente novamente. |
| SHA-256 não coincide | **Não execute o arquivo.** Remova/mova o download inválido, baixe o Asset oficial novamente e compare o checksum publicado. |
| Download GitHub falha | Confira conexão, proxy/firewall e URL da Release. A TI pode distribuir o EXE verificado por canal aprovado. |
| PowerShell informa erro de conexão/TLS no envio | Use a linha TLS 1.2 documentada antes de baixar o auxiliar no Windows PowerShell e tente novamente. O atualizador nativo já usa HTTPS/TLS de forma independente. |
| SmartScreen/editor desconhecido | A 1.8.9 não é assinada. Confira checksum e origem; procure a TI se o dispositivo bloquear programas sem assinatura. |
| Editor de relacionamentos somente leitura | Importar projeto permite apenas organização visual. Conecte a um modelo local ao vivo para criar/editar/excluir. |
| Relacionamento mudou desde a leitura | Leia o modelo novamente e revise a ligação atualizada. Edições antigas são rejeitadas para não substituir outra alteração. |
| Relacionamento duplicado ou segunda ligação ativa | Use pares diferentes de colunas ou desative a ligação ativa entre essas tabelas antes de ativar outra. |
| Erro de tipo/unicidade/ambiguidade | Iguale tipos de colunas e inspecione chaves/caminhos no Desktop. TOM/Power BI valida o modelo; não contorne o erro. |
| Falha ao salvar diagrama | Confira espaço e permissões no perfil do aplicativo e use Tentar salvar novamente. Exporte cópia JSON separada se necessário. |
| Diagrama diferente após renomear/copiar PBIX | Perfis usam nomes de janela/arquivo e linhagem; nomes/identidades podem mudar ou coincidir entre cópias. Importe o layout exportado no modelo desejado. |
| Atualizações não são verificadas ao iniciar | Versões 1.6.1 e anteriores precisam de atualização manual única para 1.6.2. A execução de desenvolvimento/código-fonte não atualiza intencionalmente. |
| Verificação falha/sem internet/HTTP 403 ou 429 | Ferramentas locais continuam disponíveis. Confira internet/proxy/firewall e tente **Verificar atualizações**. A API GitHub pode aplicar limites. |
| Atualizar agora falha no checksum/tamanho | O instalador não foi executado. Tente de novo ou baixe manualmente a Release oficial; não execute arquivo de cache corrompido. |
| Autorização Windows cancelada | O Power Portal permanece disponível. Tente **Atualizar agora** quando puder aprovar UAC ou peça permissão à TI. |
| Atualização bloqueada por operação do modelo | Aguarde terminar a gravação/tema confirmados e repita. Salve/exporte edições não enviadas antes. |
| Não aparece aviso inicial de conexão | A detecção exige modelo semântico local aberto, não apenas a tela de boas-vindas do Desktop. Use **Localizar modelos abertos** após abrir PBIX. Se falhar, confira o erro visível e reconecte. |
| Instalador não fecha o aplicativo aberto | Salve seu trabalho, feche manualmente o Power Portal e tente novamente. Somente o executável exato instalado é alvo. O Power BI não fecha. |
| Botão e-mail não faz nada | Configure cliente padrão, use **Copiar e-mail** ou escreva manualmente ao endereço abaixo. |
| Relatório TV online não entra/carrega | Confira conta Microsoft, permissões, licença, restrições de incorporação e internet. Use imagens locais para TV offline. |

<a name="contact-support"></a>
## Contatar o suporte

Escreva para **[contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)** ou [fale com a Excelência no WhatsApp](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0).

Inclua:

- Versão do Power Portal (1.8.9 para esta Release).
- Versão Windows e versão/edição Power BI Desktop.
- Método de instalação (assistente ou PowerShell).
- Passos para reproduzir e erro exato visível.
- Se havia um ou vários modelos abertos.

**Nunca publique PBIX/BIM, detalhes de fontes, credenciais, dados confidenciais ou backups/logs sem tratamento em issues públicas.** Prints também podem revelar nomes ou dados; oculte-os antes de compartilhar.

Para distribuição e assuntos confidenciais, use o e-mail do suporte, não uma issue pública.

<a name="native-launch-and-recovery"></a>
## Acionamento nativo e recuperação

Desempenho de Atualização fica imediatamente abaixo de Mapa de relacionamentos no menu lateral e na galeria inicial. A identificação do botão nativo ignora as abas Home duplicadas das visualizações de consultas DAX e TMDL, evitando “Ambiguous Power BI control: home”. Se o controle não estiver disponível, selecione Relatório, Dados ou Modelo no Power BI.

Atualizar permanece bloqueado enquanto a confirmação, validação e preparação do rastreamento estão pendentes; Concluir captura fica oculto até a captura estar pronta. Isso impede um segundo acionamento com o erro indevido “Finish the active Power BI operation before refreshing”. Uma falha comprovadamente anterior ao acionamento nativo encerra o rastreamento, verifica a limpeza e permite nova tentativa. Se o acionamento já puder ter ocorrido, o erro fica visível e a captura permanece pendente: confira o Power BI, termine a atualização e feche os diálogos antes de Concluir captura. Solicitações repetidas retomam a captura existente, sem iniciar outra atualização. Operações realmente em andamento ainda precisam terminar primeiro.
