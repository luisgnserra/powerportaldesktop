# Prints e interações com o Power BI

<!-- language-selector -->
[🇺🇸 English](../SCREENSHOTS.md) · [🇧🇷 Português](SCREENSHOTS.md) · [🇪🇸 Español](../es/SCREENSHOTS.md) · [🇨🇳 简体中文](../zh-CN/SCREENSHOTS.md) · [🇫🇷 Français](../fr/SCREENSHOTS.md) · [🇯🇵 日本語](../ja/SCREENSHOTS.md) · [🇮🇳 हिन्दी](../hi/SCREENSHOTS.md) · [🇸🇦 العربية](../ar/SCREENSHOTS.md)
<!-- /language-selector -->

[Voltar ao início](../../README.pt-BR.md) · [Instalar](INSTALLATION.md) · [Guia de segurança](USAGE.md)

**Prints do aplicativo: Power Portal Desktop 1.7.0, interface em português.**
Os prints usam **metadados e valores de consulta sintéticos de demonstração**, não um PBIX de cliente. Estados conectados ilustram ações suportadas; nenhum modelo de cliente foi alterado para produzir as imagens. Rótulos nativos do seletor de arquivos podem seguir o idioma do Windows. O print verdadeiro da guia do Power BI foi fornecido pelo proprietário e recortado para remover o título privado do arquivo.

<a name="open-power-portal-from-external-tools"></a>
## Abrir o Power Portal em Ferramentas externas

Após instalar, reinicie o Power BI Desktop, abra um PBIX e clique em **Ferramentas externas > Power Portal**.

![Power Portal na guia verdadeira Ferramentas externas do Power BI](../images/powerbi-external-tools.png)

A guia em português **Ferramentas externas** corresponde a **External Tools** em inglês. O instalador registra o ícone nessa guia. Clicar abre **uma janela separada do Power Portal conectada ao modelo do arquivo aberto**. É um aplicativo complementar externo, não visual do relatório, painel incorporado ou extensão interna da Microsoft.

<a name="home-and-navigation"></a>
## Início e navegação

![Galeria inicial, onze ferramentas e aviso inicial](../images/pt-BR/home.png)

O início mostra as dez capas oficiais e a capa nova do mapa de relacionamentos exclusivo do Desktop, com descrições curtas. As onze ferramentas cabem no menu **sem rolagem de navegação** nos tamanhos suportados. **Consultoria e Treinamentos** fica abaixo de **Sobre o desenvolvimento**, com os logos de propriedade abaixo. Bandeiras ficam em duas linhas.

![Menu recolhido mantém ícones, bandeiras, informações e consultoria acessíveis](../images/pt-BR/collapsed-sidebar.png)

Recolha o menu para ampliar a área de trabalho; a preferência persiste. Ícones mantêm nomes acessíveis e dicas. A área principal e os formulários das ferramentas ainda podem rolar; a mudança sem rolagem se aplica ao catálogo do menu.

<a name="connect-to-a-file-already-open-in-power-bi"></a>
## Conectar a um arquivo já aberto no Power BI

![Aviso inicial e seleção explícita do arquivo aberto](../images/pt-BR/connect-open-model.png)

Ao iniciar por um atalho Windows, o aplicativo detecta os modelos locais disponíveis e explica que pode conectar diretamente ao arquivo aberto. Escolha **Localizar modelos abertos**, confira o nome e clique em **Conectar ao modelo selecionado**. Com vários arquivos, escolha explicitamente o desejado.

Iniciar pela guia Ferramentas externas transmite automaticamente a conexão daquela instância do Desktop e lê seus metadados. **Conectar não grava alterações.**

<a name="new-version-notification"></a>
## Aviso de nova versão

![Nova versão disponível com Atualizar agora e aviso de autorização/edições não enviadas](../images/pt-BR/update-available.png)

O print usa um **resultado futuro sintético da 1.7.1** para mostrar o aviso na 1.7.0. Não afirma que a 1.7.1 foi publicada. Usuários da 1.6.2 ou superior podem receber agora o aviso real da 1.7.0.

Na 1.6.4, a faixa âmbar fica visível durante a rolagem e anima suavemente, exceto quando movimento reduzido está habilitado. Não há faixa permanente “aplicativo atualizado” ocupando espaço.

O aplicativo instalado verifica a Release estável oficial mais recente ao iniciar. Clique em **Atualizar agora** para baixar/verificar o instalador e aprove a solicitação de administrador Windows. Ele atualiza a pasta existente e fecha somente o Power Portal. **Conectar ou verificar não instala nada.** Salve/exporte primeiro edições não enviadas e reabra o aplicativo quando a instalação terminar.

**Verificar atualizações** repete a checagem a qualquer momento. Falhas de internet/limites/checksum/UAC aparecem explicitamente sem desabilitar ferramentas locais. [Guia completo](UPDATES.md).

<a name="direct-interactions-with-the-open-power-bi-file"></a>
## Interações diretas com o arquivo aberto no Power BI

Estas ações não se limitam a baixar texto ou JSON:

| Tela/ação | Lê ou altera o Power BI? | Proteção |
|---|---|---|
| Atualizar modelo do Power BI | Lê tabelas, colunas, medidas e relacionamentos do modelo semântico selecionado. | Sem gravação. |
| Consultar dados/intervalos de datas/amostras | Lê valores reais pelo mecanismo local. | Consultas estruturadas e limitadas; não usa filtros da página ativa. |
| Enviar tema diretamente para o Power BI | Aplica o JSON gerado à janela selecionada do relatório. | Confirmação, importação visível e verificação do tema exportado. |
| Criar calendário no Power BI | Cria nova tabela de datas calculada no modelo. | Confirmação e backup dos metadados; atualizar depois no Desktop. |
| Criar medida HTML no Power BI | Cria nova medida na tabela escolhida. | Confirmação e backup; adicionar visual HTML manualmente. |
| Atualizar medida no Power BI | Grava o DAX formatado na medida existente selecionada. | Confirmação, backup e proteção contra mudanças concorrentes. |
| Aplicar/excluir relacionamento no Power BI | Cria, edita, ativa/desativa ou exclui o relacionamento entre colunas escolhido. | Confirmação nativa, backup, checagem de estado antigo e validação do mecanismo; propriedades RLS/integridade preservadas. |

**Salve uma cópia separada do PBIX antes de aplicar mudanças.** Confirme arquivo e expressão e depois salve o PBIX no Desktop. O aplicativo nunca salva o PBIX silenciosamente.

<a name="live-model-data"></a>
### Dados reais do modelo

![Seletores de tabela, coluna e medida e resultado consultado de demonstração](../images/pt-BR/live-model-data.png)

Selecione tabela/coluna/medida e consulte valor, contagem, amostra de coluna ou intervalo de datas. A conexão fica resumida no texto verde do cabeçalho; a dica lembra de salvar cópia do PBIX. Esse painel aparece onde é relevante, como calendários e componentes.

<a name="theme-generator"></a>
### Gerador de temas

![Importação JSON destacada e prévia do tema em tempo real](../images/pt-BR/theme-generator.png)

Use **Carregar tema do relatório (JSON)** em destaque, edite cores/fontes e veja a prévia. Exporte JSON ou role ao fim da página, abaixo do formulário e prévia, para **Enviar tema diretamente para o Power BI**.

![Botão de envio direto ao final do gerador](../images/pt-BR/theme-send.png)

Para começar pelo tema existente, salve seu JSON no Desktop e carregue aqui. Conectar ao modelo semântico não lê temas. O envio direto continua usando o **diálogo visível de importação**: não existe uma API genérica suportada do Desktop que o elimine. Não interaja com o Power BI durante a automação.

<a name="calendar-generator"></a>
### Gerador de calendário

![Seleção do calendário existente, exportação de amostra e criação no Power BI](../images/pt-BR/calendar-generator.png)

Leia expressão/intervalo de datas/amostra do calendário, exporte DAX ou JSON amostrado e gere um novo calendário. **Criar calendário no Power BI** cria uma nova tabela calculada com backup e confirmação, não substitui a existente selecionada.

Atualize no Desktop após criar. A reversão protegida só fica disponível se a tabela criada ainda coincidir e não tiver dependências.

<a name="component-library"></a>
### Biblioteca de componentes

![Catálogo de componentes e barra de criação direta da medida HTML](../images/pt-BR/components.png)

Escolha a tabela de destino e nome novo para a medida. O construtor usa nomes de campos/medidas e permite **Criar medida HTML no Power BI**. A medida é gravada depois de confirmar.

Um visual HTML compatível deve ser adicionado manualmente e receber a medida; esse botão não coloca um visual na página.

<a name="dax-formatter"></a>
### Formatador DAX

![Selecionar medida, formatar e atualizar diretamente no Power BI](../images/pt-BR/dax-formatter.png)

Selecione a medida existente, formate e escolha **Atualizar medida no Power BI** para enviar o DAX a ela. Copiar/exportar são ações separadas. A atualização recusa mudanças concorrentes da expressão e exige confirmação.

<a name="remaining-tools"></a>
## Demais ferramentas

<a name="relationship-map"></a>
### Mapa de relacionamentos

![Caixas arrastáveis, grupos Fatos/Dimensões e indicadores de relacionamento](../images/pt-BR/relationship-map.png)

A nova ferramenta exclusiva do Desktop mostra ligações reais, cardinalidades, setas de filtros e linhas inativas tracejadas. Arraste caixas/grupos livremente, use zoom/deslocamento, escolha nomes amigáveis/ícones e personalize cores de grupos/linhas. Layouts salvam automaticamente por modelo e exportam/importam JSON sem enviar gravações.

![Campos com ações de Aplicar e Excluir](../images/pt-BR/relationship-editor.png)

Selecione uma linha para inspecionar colunas, cardinalidade, filtros e estado ativo. **Aplicar relacionamento no Power BI** ou **Excluir relacionamento no Power BI** grava cada edição após confirmação nativa e backup. Projetos importados são somente leitura. Estilos não renomeiam tabelas nem mudam o diagrama nativo. [Passo a passo completo e limites de segurança](RELATIONSHIPS.md).

<a name="power-bi-tv-tool"></a>
### Power BI TV Tool

![Exemplo TV Tool em ação destacado no topo](../images/pt-BR/tv-tool.png)

A faixa **TV Tool em ação** abre um [exemplo oficial funcional](https://www.powerportal.com.br/tv_tool/painel_exemplo_power_bi_tv_tool.html) no navegador padrão, exigindo internet, mas sem enviar dados locais do modelo. A apresentação ilustrativa local do formulário continua disponível.

Alterne páginas publicadas ou imagens locais, ajuste tempos/transições, visualize e exporte HTML. O TV **não** alterna páginas do PBIX local aberto. Relatórios privados publicados exigem login Microsoft/licenças/permissões adequados.

<a name="performance-checklist"></a>
### Checklist de performance

![Configuração do checklist e avaliação informada pelo modelo](../images/pt-BR/performance-checklist.png)

Revise itens apoiados no modelo e características manuais do relatório. Pontuações são orientação heurística, não medições de tempo dos visuais.

<a name="contrast-calculator"></a>
### Calculadora de contraste

![Calculadora de contraste de cores](../images/pt-BR/contrast-calculator.png)

Verifique legibilidade/contraste nos limites WCAG. É análise local e não muda automaticamente a formatação do relatório.

<a name="pbippbir-analyzer"></a>
### Analisador PBIP/PBIR

![Estrutura do modelo/projeto e resultados heurísticos](../images/pt-BR/project-analyzer.png)

Analise a estrutura disponível do projeto carregado. Uma conexão semântica ao vivo não fornece páginas/visuais, por isso dimensões indisponíveis são informadas como parciais. Metadados de projetos PBIR importados podem acrescentar contagens.

<a name="semantic-model-documenter"></a>
### Documentador do modelo semântico

![Documentação de tabelas/colunas/medidas com metadados sintéticos](../images/pt-BR/model-documenter.png)

Leia/exporte documentação de tabelas/colunas/medidas/relacionamentos em Markdown ou JSON. Não modifica o modelo. Exportações podem conter nomes e DAX confidenciais; armazene adequadamente.

<a name="measure-auditor"></a>
### Auditor de medidas

![Resultado da auditoria no modelo demonstrativo](../images/pt-BR/measure-auditor.png)

Audite medidas do modelo ou DAX fornecido com verificações heurísticas de nomes/tamanho/delimitadores. Não valida a semântica DAX nem mede desempenho real do relatório.

<a name="consulting-and-training"></a>
## Consultoria e treinamentos

![Área da Excelência de consultoria, treinamentos e contato](../images/pt-BR/consulting-training.png)

Conheça consultoria Power BI, Microsoft Fabric, engenharia de dados e soluções completas. Inclui treinamentos In Company, vídeos e contato. WhatsApp/e-mail abrem um rascunho ou página no navegador; nenhuma mensagem ou reunião é enviada automaticamente.

[Notas de versão](../../CHANGELOG.pt-BR.md) · [Solução de problemas](TROUBLESHOOTING.md)
