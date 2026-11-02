# Solução de problemas e suporte

<!-- language-selector -->
[🇺🇸 English](../TROUBLESHOOTING.md) · [🇧🇷 Português](TROUBLESHOOTING.md) · [🇪🇸 Español](../es/TROUBLESHOOTING.md) · [🇨🇳 简体中文](../zh-CN/TROUBLESHOOTING.md) · [🇫🇷 Français](../fr/TROUBLESHOOTING.md) · [🇯🇵 日本語](../ja/TROUBLESHOOTING.md) · [🇮🇳 हिन्दी](../hi/TROUBLESHOOTING.md) · [🇸🇦 العربية](../ar/TROUBLESHOOTING.md)
<!-- /language-selector -->

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
| SmartScreen/editor desconhecido | A 1.7.3 não é assinada. Confira checksum e origem; procure a TI se o dispositivo bloquear programas sem assinatura. |
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

- Versão do Power Portal (1.7.3 para esta Release).
- Versão Windows e versão/edição Power BI Desktop.
- Método de instalação (assistente ou PowerShell).
- Passos para reproduzir e erro exato visível.
- Se havia um ou vários modelos abertos.

**Nunca publique PBIX/BIM, detalhes de fontes, credenciais, dados confidenciais ou backups/logs sem tratamento em issues públicas.** Prints também podem revelar nomes ou dados; oculte-os antes de compartilhar.

Para distribuição e assuntos confidenciais, use o e-mail do suporte, não uma issue pública.
