# Power Portal Desktop

<!-- language-selector -->
[🇺🇸 English](README.md) · [🇧🇷 Português](README.pt-BR.md) · [🇪🇸 Español](README.es.md) · [🇨🇳 简体中文](README.zh-CN.md) · [🇫🇷 Français](README.fr.md) · [🇯🇵 日本語](README.ja.md) · [🇮🇳 हिन्दी](README.hi.md) · [🇸🇦 العربية](README.ar.md)
<!-- /language-selector -->

<div dir="rtl">

**أحد عشر أداة لـ Power BI Desktop في تطبيق Windows واحد.**

تملك **Excelência Consultoria e Educação** تطبيق Power Portal Desktop. يُثبَّت في شريط **External Tools** في Power BI Desktop ويفتح نافذة تطبيق مستقلة، على غرار أدوات نمذجة خارجية أخرى.

هذا **مستودع للتوزيع فقط**: المثبّتات ومساعدات التثبيت وقيم التحقق والوثائق. **لا يُنشر هنا الشيفرة المصدرية لتطبيق Power Portal.**

تظهر المقدمة عند أول زيارة للمخطط في كل جلسة. أعد فتحها عبر **كيفية التنظيم بالمجموعات**. SAP وExcel أمثلة توضيحية وليسا موصلات جديدة أو شعارات رسمية. تظهر المجموعات الفارغة كمناطق إفلات. الإفلات في مجموعة مبرزة يُسند الجدول إليها؛ والإفلات خارجها يُبقي مجموعته الحالية.

يُحفظ مخططك تلقائياً على هذا الكمبيوتر للنموذج نفسه: المجموعات والصور والألوان والمواضع. صدّر JSON للاحتفاظ بنسخة أو استيرادها لاحقاً. تحقق من رسالة حفظ المخطط.

<a name="download-and-install"></a>
## التنزيل والتثبيت

<a name="option-1-install-with-a-few-clicks"></a>
### الخيار 1: التثبيت ببضع نقرات

1. [نزّل Power Portal Desktop 1.7.2 لنظام Windows x64](https://github.com/luisgnserra/powerportaldesktop/releases/download/v1.7.2/PowerPortal-Setup-1.7.2-x64.exe).
2. شغّل المثبّت ووافق على طلب صلاحية مسؤول Windows.
3. اختر مجلد التثبيت واللغة الافتراضية.
4. أكمل التثبيت، ثم أغلق Power BI Desktop وأعد فتحه.
5. افتح ملف PBIX واختر **External Tools > Power Portal**.

**قد يعرض Windows تحذيراً بأن الناشر غير معروف:** الإصدار 1.7.2 غير موقّع رقمياً. لا تتابع إلا إذا كنت تثق بهذا التوزيع. إذا كان مؤسستك يحظر البرامج غير الموقّعة، فاتصل بفريق تقنية المعلومات بدلاً من تجاوز سياسته.

[أحدث إصدار](https://github.com/luisgnserra/powerportaldesktop/releases/latest) · [دليل التثبيت](docs/ar/INSTALLATION.md) · [الإعداد](docs/ar/CONFIGURATION.md) · [استكشاف الأخطاء وإصلاحها](docs/ar/TROUBLESHOOTING.md)

<a name="launch-from-power-bis-external-tools-ribbon"></a>
### التشغيل من شريط External Tools في Power BI

يضيف المثبّت **Power Portal** إلى **External Tools** في Power BI Desktop. انقر الأيقونة مع فتح PBIX لبدء التطبيق المرافق وقراءة النموذج المحلي للملف تلقائياً.

![Power Portal مثبت في شريط External Tools في Power BI Desktop](docs/images/powerbi-external-tools.png)

لقطة الشريط المرفقة باللغة البرتغالية: تعني **Ferramentas externas** عبارة **External Tools**. يفتح Power Portal **نافذة مستقلة متصلة بـ Power BI**، وليس مرئياً مضمنًا في تقرير أو لوحة داخلية جديدة في Power BI.

![الصفحة الرئيسية لـ Power Portal 1.7.2 والشريط الجانبي الكامل وإشعار الاتصال عند بدء التشغيل](docs/images/ar/home.png)

**هل Power BI مفتوح لديك بالفعل؟** عند التشغيل من اختصار، يكتشف Power Portal النماذج المحلية المفتوحة ويعرض إشعار اتصال. اختر **Find open models**، وحدد ملفك، ثم اتصل. يمكنك بعدها الاستعلام عن بياناته وإرسال التغييرات المدعومة إليه بعد التأكيد.

بعد الاتصال، تُلخّص الحالة في الترويسة بدلاً من شغلها شريطاً منفصلاً.

[اطّلع في الدليل المصوّر على الأدوات الإحدى عشرة وشاشات الاتصال والإجراءات المباشرة في Power BI](docs/ar/SCREENSHOTS.md).

<a name="new-relationship-map"></a>
### جديد: خريطة العلاقات (Relationship map)

افهم الروابط الفعلية بين الجداول على لوحة قابلة للسحب بحرية. نظّم مجموعات Facts وDimensions ومجموعات أعمال مخصصة بالألوان والأيقونات والأسماء الواضحة؛ واحفظ التخطيطات تلقائياً وصدّرها/استوردها بصيغة JSON.

![Relationship map مع مجموعتي Facts وDimensions وتحرير العلاقات الفعلية](docs/images/ar/relationship-map.png)

أنشئ العلاقات وعدّلها ونشّطها/عطّلها واحذفها في نموذج Power BI المتصل **بعد التأكيد والنسخ الاحتياطي للبيانات الوصفية**. يبقى التنسيق المرئي داخل Power Portal؛ ولا يعيد تسمية الجداول أو يغيّر التخطيط الأصلي في Power BI. [دليل العلاقات الكامل](docs/ar/RELATIONSHIPS.md).

في 1.7.2، انقر الأعمدة الدقيقة أو اسحب بينها لإعداد العلاقة؛ وانقر بزر الفأرة الأيمن على الخط لضبط اللون أو التحرير أو الحذف بعد التأكيد. تدعم المجموعات الصور المحلية وأكثر من 30 أيقونة. تُخفى جداول التاريخ/الوقت التلقائية افتراضياً مع مفتاح لإظهارها. حدّث المخطط بعد التحرير خارج Power BI، أو شغّل الكشف التلقائي الأصلي في Desktop بعد النسخ الاحتياطي المسبق، ثم أكمل المراجعة/الإنهاء المنفصلين.

<a name="built-in-update-checks"></a>
### التحقق المدمج من التحديثات

ابتداءً من **1.6.2**، يتحقق التطبيق المثبّت من أحدث إصدار رسمي على GitHub عند فتحه. إذا توفر إصدار مستقر أحدث، يظهر **Update now**. في 1.6.4 أصبح الشريط بارزاً ومتحركاً ويبقى ظاهراً أثناء التمرير، مع احترام تفضيلات تقليل الحركة. لا يظهر سطر دائم يقول «محدّث». انقر للتنزيل والتحقق من SHA-256 والحجم ثم بدء المثبّت تلقائياً.

يطلب Windows صلاحية المسؤول. يُغلق Power Portal وحده، ويبقى Power BI مفتوحاً. احفظ/صدّر تعديلات الأدوات غير المرسلة أولاً. يؤدي فشل التنزيل أو إلغاء التفويض إلى عرض خطأ صريح وخيار لإعادة المحاولة.

![إشعار إصدار جديد وزر Update now](docs/images/ar/update-available.png)

تستخدم لقطة الشاشة **محاكاة إشعار مستقبلي للإصدار 1.7.3** لعرض الواجهة، وليست إعلاناً عن إصدار منشور. **الإصدار 1.7.2 منشور الآن:** يمكن للمستخدمين الذين لديهم 1.6.2 أو أحدث إعادة فتح التطبيق أو النقر على **Check for updates** لتلقي التحديث. [دليل التحديث](docs/ar/UPDATES.md).

**هل تستخدم 1.6.1 أو إصداراً أقدم؟ ثبّت 1.6.2 يدوياً مرة واحدة لتفعيل هذه الميزة.** ويمكنك أيضاً استخدام **Check for updates** لإعادة محاولة التحقق بعد فشل أو انقطاع الاتصال. لا يثبّت المحدّث أي شيء لمجرد فتح التطبيق.

<a name="option-2-install-from-powershell"></a>
### الخيار 2: التثبيت من PowerShell

افتح **Windows PowerShell 5.1 أو PowerShell 7 على Windows**:

<div dir="ltr">

```powershell
$script = Join-Path $env:TEMP 'Install-PowerPortal.ps1'
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/luisgnserra/powerportaldesktop/v1.7.2/install.ps1' -OutFile $script
# Review the downloaded script before running it.
Get-Content -LiteralPath $script
& $script
```

</div>

ينزّل المساعد **الإصدار 1.7.2**، ويتحقق من قيمة SHA-256 المثبتة فيه، ثم يفتح المثبّت نفسه. ولا يثبّت Node.js أو PHP أو .NET SDK، ولا ينشئ أي شيء.

للتثبيت دون تدخل، شغّل المساعد نفسه من **نافذة PowerShell بصلاحية المسؤول**:

<div dir="ltr">

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -Silent
```

</div>

للتنزيل والتحقق من قيمة SHA-256 فقط دون التثبيت:

<div dir="ltr">

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -DownloadOnly
```

</div>

إذا حُظر تنفيذ البرنامج النصي، فاتبع سياسة مؤسستك أو استخدم المثبّت التنفيذي. راجع [تعليمات سطر الأوامر الكاملة](docs/ar/INSTALLATION.md#command-line-installation).

<a name="requirements"></a>
## المتطلبات

- Windows 10 أو 11، **x64**.
- Power BI Desktop يدعم External Tools. هذا ليس تثبيتاً لـ Power BI Service أو macOS أو Windows ARM64 أو Power BI Report Server.
- صلاحية مسؤول لتثبيت الأداة الخارجية وتسجيلها.
- اتصال بالإنترنت لتنزيل المثبّت؛ تعمل الأدوات المحلية والمعاينات المضمّنة دون اتصال.
- تتطلب تقارير Power BI المنشورة/الخاصة في TV Tool اتصالاً بالإنترنت وحساب Microsoft والترخيص والأذونات المناسبة.

يتضمن تطبيق سطح المكتب مكونات وقت التشغيل اللازمة. لا تحتاج إلى أدوات المطورين.

<a name="included-tools"></a>
## الأدوات المتضمنة

| الأداة | وظيفتها |
|---|---|
| Theme generator | استيراد JSON بارز، ومعاينة محلية مباشرة، وتصدير JSON، وإرسال مباشر مؤكد في نهاية الصفحة. |
| TV Tool | فتح مثال رسمي يعمل في المتصفح، وعرض صفحات التقارير المنشورة أو الصور المحلية، وضبط التوقيت والانتقالات، وتصدير HTML. |
| Calendar generator | قراءة بيانات وصفية وتواريخ تقويم موجود، وتصدير البرامج النصية أو إنشاء جدول تقويم محسوب بعد التأكيد والنسخ الاحتياطي. |
| Performance checklist | تقييم تقرير باستخدام قائمة التحقق في البوابة وبيانات النموذج الوصفية المتاحة. |
| Component library | إنشاء مكونات HTML/DAX وإنشاء مقياس HTML في نموذج متصل. |
| Contrast calculator | التحقق من تباين الألوان وفق عتبات WCAG. |
| PBIP/PBIR analyzer | فحص بيانات المشروع المحلية الوصفية، مع درجات استرشادية وعدد الصفحات/العناصر المرئية المتاحة. |
| Model documenter | تصدير الجداول والأعمدة والمقاييس والعلاقات إلى Markdown أو JSON. |
| Measure auditor | مراجعة مقاييس النموذج أو DAX المقدم باستخدام فحوص استرشادية. |
| DAX formatter | تنسيق محلي، أو تصدير/نسخ، أو تحديث مقياس متصل محدد بعد التأكيد. |
| Relationship map | سحب مربعات الجداول وتجميع الروابط وتنسيقها وحفظ التخطيطات المرئية وتطبيق تغييرات العلاقات المؤكدة مباشرةً على Power BI. |

يتضمن التطبيق أيضاً معرضاً رئيسياً وشريطاً جانبياً قابلاً للطي تظهر فيه الأدوات الإحدى عشرة كلها دون تمرير في أحجام النوافذ المدعومة، ومعلومات الملكية والتطوير، ومنطقة للاستشارات والتدريب تضم الفيديوهين المميزين. تقع **Consulting and training** أسفل **About the development**.

<a name="changes-that-interact-directly-with-your-open-power-bi-file"></a>
### الإجراءات التي تتفاعل مباشرة مع ملف Power BI المفتوح

| الإجراء | التفاعل المباشر |
|---|---|
| تحديث/قراءة النموذج والاستعلام عن عينات | يقرأ النموذج المحلي المحدد ولا يحرره. |
| إرسال theme مباشرةً إلى Power BI | يستورد JSON للـ theme إلى نافذة Desktop المحددة باستخدام UI Automation مرئي، مع التأكيد والتحقق. |
| إنشاء تقويم في Power BI | ينشئ جدولاً محسوباً جديداً مع نسخة احتياطية للبيانات الوصفية والتأكيد. حدّثه لاحقاً في Desktop. |
| إنشاء مقياس HTML في Power BI | ينشئ مقياساً في الجدول المحدد مع نسخة احتياطية وتأكيد. أضف بنفسك عنصراً مرئياً متوافقاً مع HTML. |
| تحديث مقياس في Power BI | يحدّث DAX للمقياس المحدد مع نسخة احتياطية وتأكيد وفحوص للتغييرات المتزامنة. |
| إنشاء/تحرير/حذف علاقات في Power BI | يغيّر علاقات أعمدة الجداول ودرجة العلاقة واتجاه التصفية وحالتها النشطة، مع نسخة احتياطية وتأكيد وفحوص للحالة القديمة. |

**الاتصال وحده لا يكتب أي تغييرات. احفظ نسخة من PBIX أولاً، وراجع كل تأكيد، واحفظ PBIX بنفسك بعد ذلك.** [لقطات الشاشة والأمثلة خطوة بخطوة](docs/ar/SCREENSHOTS.md#direct-interactions-with-the-open-power-bi-file).

<a name="eight-languages"></a>
## ثماني لغات

البرتغالية والإنجليزية والإسبانية والصينية المندرينية المبسطة والفرنسية واليابانية والهندية والعربية. لا تتجاوز الأعلام صفين؛ ويستخدم التطبيق تخطيطاً من اليمين إلى اليسار للعربية.

استخدم الأعلام أعلى هذه الصفحة لاختيار لغة الوثائق. تتوفر الأدلة ولقطات التطبيق باللغات الثماني. التُقطت اللقطات من التطبيق الفعلي باللغة المحددة؛ ولا تتغير أسماء عناصر النموذج أو DAX. تبقى صورة شريط Power BI الحقيقية باللغة البرتغالية في جميع الأدلة، مع توضيح ذلك باللغة المختارة.

يقترح المثبّت لغة واجهة Windows. ويُحفظ اختيار المستخدم اللاحق محلياً ويكون له الأولوية على لغة التثبيت الافتراضية. لا تُترجم أسماء النماذج أو البيانات أو DAX.

<a name="important-limits-and-data-safety"></a>
## حدود مهمة وسلامة البيانات

- **احفظ نسخة من PBIX قبل إجراء أي تغيير.** تنشئ الكتابات المؤكدة نسخاً احتياطية محلية للبيانات الوصفية، لكنها لا تحل محل النسخة الكاملة من PBIX.
- يستخدم تطبيق theme **أتمتة واجهة Windows المرئية** ويتطلب التأكيد. لا توجد واجهة عامة مدعومة لكتابة theme في PBIX مفتوح على Desktop؛ ولا تُخفى مربعات الحوار.
- يتصل TOM بالنموذج الدلالي، وليس بمرشحات التقرير النشطة أو صفحاته أو مواضع العناصر المرئية. لا يضيف مقياس HTML عنصراً مرئياً إلى التقرير تلقائياً.
- درجات تحليل التقارير وتدقيق المقاييس استرشادية، وليست قياساً للأداء المرئي الفعلي.
- لا تُرسل بيانات النموذج المحلي إلى موقع Power Portal. يطلب المحدّث بيانات إصدار/مثبّت من GitHub الرسمي فقط، وليس محتوى النموذج. وقد تتطلب الروابط الخارجية والعروض التقديمية عبر الإنترنت ومصادر DirectQuery اتصالاً بالشبكة.
- قد تتضمن صادرات الوثائق والنسخ الاحتياطية للبيانات الوصفية وسجلات التغييرات تفاصيل سرية عن النموذج. احتفظ بها وشاركها بعناية.

اقرأ [دليل الاستخدام والسلامة](docs/ar/USAGE.md) قبل تعديل نموذج.

<a name="consulting-complete-data-solutions-and-training"></a>
## الاستشارات وحلول البيانات المتكاملة والتدريب

تقدم Excelência استشارات Power BI وMicrosoft Fabric وهندسة البيانات وحلول البيانات الشاملة و**التدريب داخل الشركة (In Company)**.

- [رتّب محادثة عبر WhatsApp](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0)
- البريد الإلكتروني: [contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)
- [تدريب Power BI داخل الشركة](https://www.consultoriaexcelencia.com.br/educacao/treinamentos-power-bi)
- [الفيديو المميز 1](https://www.youtube.com/watch?v=bIxmIaYmt0c)
- [الفيديو المميز 2](https://www.youtube.com/watch?v=FNo7F7kh6h4)
- [مدونة Excelência](https://consultoriaexcelencia.com.br/blog) · [الدورات عبر الإنترنت](https://ead.consultoriaexcelencia.com.br/)

مسؤول التطوير: **Luis Gustavo Nascimento Serra**.
[LinkedIn](https://www.linkedin.com/in/luisgnserra/) · [YouTube: Mais Que Planilhas](https://www.youtube.com/MaisQuePlanilhas)

Microsoft وPower BI وMicrosoft Fabric علامات تجارية لشركة Microsoft. تعريف MVP شخصي ولا يعني الملكية أو الرعاية أو التأييد من Microsoft.

<a name="support-and-distribution"></a>
## الدعم والتوزيع

[استكشاف الأخطاء وإصلاحها والدعم](docs/ar/TROUBLESHOOTING.md) · [ملاحظات الإصدار](CHANGELOG.ar.md) · [إشعار التوزيع](DISTRIBUTION.ar.md) · [صيانة الإصدارات](docs/ar/RELEASING.md)

استخدم **Release assets** لتنزيل التطبيق. تحتوي أرشيفات ZIP/TAR التلقائية بعنوان "Source code" من GitHub على وثائق هذا المستودع الخاص بالتوزيع ومساعد التثبيت فقط، وليس التطبيق أو شيفرته المصدرية.

</div>
