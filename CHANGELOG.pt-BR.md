# Notas de versão

<!-- language-selector -->
[🇺🇸 English](CHANGELOG.md) · [🇧🇷 Português](CHANGELOG.pt-BR.md) · [🇪🇸 Español](CHANGELOG.es.md) · [🇨🇳 简体中文](CHANGELOG.zh-CN.md) · [🇫🇷 Français](CHANGELOG.fr.md) · [🇯🇵 日本語](CHANGELOG.ja.md) · [🇮🇳 हिन्दी](CHANGELOG.hi.md) · [🇸🇦 العربية](CHANGELOG.ar.md)
<!-- /language-selector -->

<a name="172"></a>
## 1.7.2

- A introducao aparece na primeira visita ao mapa em cada execucao do aplicativo. Reabra em **Como organizar com grupos**. SAP e Excel sao exemplos ilustrativos de sistemas, nao novos conectores nem logos oficiais. Grupos vazios aparecem como areas de destino. Soltar no grupo destacado associa a tabela; soltar fora conserva o grupo atual.
- Separe tabelas por sistema, assunto, fatos ou dimensoes. Crie um grupo e arraste a tabela pelo titulo para dentro dele. O grupo de destino fica destacado.
- Seu diagrama e salvo automaticamente neste computador para o mesmo modelo: grupos, imagens, cores e posicoes. Exporte o JSON para guardar uma copia ou importar depois. Confira a mensagem de diagrama salvo.
- A organizacao visual nao altera tabelas, fontes de dados nem o layout nativo do Power BI. Para remover uma tabela do grupo, selecione Sem grupo no painel.

<a name="assets"></a>
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

<a name="assets-1"></a>
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

<a name="assets-2"></a>
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

<a name="assets-3"></a>
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

<a name="assets-4"></a>
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

<a name="assets-5"></a>
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

<a name="assets-6"></a>
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
