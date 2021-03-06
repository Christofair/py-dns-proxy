<map version="freeplane 1.9.13">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="DNS" FOLDED="false" ID="ID_1704410330" CREATED="1646841316360" MODIFIED="1646869895296"><hook NAME="MapStyle" background="#ff9999" zoom="0.727">
    <properties edgeColorConfiguration="#808080ff,#000000ff,#ff0033ff,#009933ff,#3333ffff,#ff6600ff,#cc00ccff,#ffbf00ff,#00ff99ff,#0099ffff,#996600ff,#000000ff,#cc0066ff,#33ff00ff,#ff9999ff,#0000ccff,#cccc00ff,#0099ccff,#006600ff,#ff00ccff,#00cc00ff,#0066ccff,#00ffffff" show_icon_for_attributes="true" show_note_icons="true" associatedTemplateLocation="file:/A:/mapy_mysli_i_inne/inżynieria%20oprogramowania.mm" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt" TEXT_SHORTENED="true">
<font SIZE="24"/>
<richcontent CONTENT-TYPE="plain/" TYPE="DETAILS"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<font SIZE="9"/>
<stylenode LOCALIZED_TEXT="default" ID="ID_122166021" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#000000" STYLE="bubble" SHAPE_VERTICAL_MARGIN="0 pt" NUMBERED="false" FORMAT="STANDARD_FORMAT" TEXT_ALIGN="CENTER" MAX_WIDTH="120 pt" MIN_WIDTH="120 pt" VGAP_QUANTITY="2 pt" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1 px" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#808080" BORDER_DASH_LIKE_EDGE="false" BORDER_DASH="SOLID">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_122166021" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="Arial" SIZE="9" BOLD="true" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="bezier" COLOR="#808080" WIDTH="3" DASH="SOLID"/>
<richcontent CONTENT-TYPE="plain/html" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/html"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details">
<font SIZE="11" BOLD="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes" COLOR="#000000" BACKGROUND_COLOR="#ffffff">
<font SIZE="9" BOLD="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT">
<font BOLD="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<font SIZE="9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" UNIFORM_SHAPE="true" MAX_WIDTH="120 pt" MIN_WIDTH="120 pt">
<font SIZE="24" ITALIC="true"/>
<edge STYLE="bezier" WIDTH="3"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<font SIZE="24"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS" HIDDEN="true">
<html>
  <head>
    
  </head>
  <body>
    <p>
      RFC 1035
    </p>
    <p>
      RFC 1034
    </p>
  </body>
</html></richcontent>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<hook NAME="AutomaticEdgeColor" COUNTER="0" RULE="FOR_COLUMNS"/>
<node TEXT="RESOLVER" POSITION="right" ID="ID_620728345" CREATED="1646841320756" MODIFIED="1646847310062" COLOR="#ff00ff">
<font SIZE="12" BOLD="true"/>
<node TEXT="PROGRAM, KTÓRY KOMUNIKUJE SIĘ Z SERWERAMI DNS W CELU ROZWIĄZANIA NAZW NA ADRESY IP" ID="ID_404260444" CREATED="1646841324271" MODIFIED="1646841352905"/>
</node>
<node TEXT="FORMAT WIADOMOŚCI" POSITION="right" ID="ID_300044314" CREATED="1646841449290" MODIFIED="1646871583457">
<node TEXT="HEADER" ID="ID_581439787" CREATED="1646841467301" MODIFIED="1646841678619"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      MA STAŁY ROZMIAR RÓWNY 12BAJTÓW(96BITÓW)
    </p>
  </body>
</html></richcontent>
<node TEXT="FIELDS" ID="ID_1828554840" CREATED="1646841469957" MODIFIED="1646841496585"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      OPISUJĄ NASTĘPUJĄCE PO NAGŁÓWKU DANE
    </p>
  </body>
</html></richcontent>
<node TEXT="ID" ID="ID_1926475097" CREATED="1646841946544" MODIFIED="1646841948418">
<node TEXT="16BITOWA LICZBA IDENTYFIKUJĄCA ZAPYTANIE" ID="ID_36316784" CREATED="1646842328570" MODIFIED="1646842356485">
<node TEXT="NASTĘPNIE FLAGA QR OKREŚLA CZY TO ZAPYTANIE (QUERY) CZY ODPOWIEDŹ (RESPONSE)" ID="ID_697415863" CREATED="1646842357173" MODIFIED="1646842396940"/>
</node>
</node>
<node TEXT="FLAGS" ID="ID_1556425743" CREATED="1646841948762" MODIFIED="1646841950245">
<node TEXT="SEKCJA FLAG W RFC 1035" ID="ID_288308224" CREATED="1646842225784" MODIFIED="1646842309824" LINK="https://datatracker.ietf.org/doc/html/rfc1035#section-4.1.1" MAX_WIDTH="160 pt"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      https://datatracker.ietf.org/doc/html/rfc1035#section-4.1.1
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="QDCOUNT" ID="ID_317894782" CREATED="1646841497444" MODIFIED="1646841979105">
<node TEXT="ILOŚĆ WPISÓW W SEKCJI &quot;QUESTION&quot;" ID="ID_1620101664" CREATED="1646842183744" MODIFIED="1646843508298"/>
</node>
<node TEXT="ANCOUNT" ID="ID_1443883534" CREATED="1646841979637" MODIFIED="1646841981948">
<node TEXT="ILOŚĆ RR-ów W SEKCJI &quot;ANSWER&quot;" ID="ID_1064114082" CREATED="1646842098580" MODIFIED="1646843510383"/>
</node>
<node TEXT="NSCOUNT" ID="ID_1885036294" CREATED="1646841982104" MODIFIED="1646841985479">
<node TEXT="ILOŚĆ NAZW SERWERÓW W SEKCJI &quot;AUTHORITY RECORDS&quot;" ID="ID_420376885" CREATED="1646842008361" MODIFIED="1646843512303"/>
</node>
<node TEXT="ARCOUNT" ID="ID_882370014" CREATED="1646841985760" MODIFIED="1646841988322">
<node TEXT="ILOŚĆ RR-ów W SEKCJI &quot;ADDITIONAL RECORDS&quot;" ID="ID_430064463" CREATED="1646841991024" MODIFIED="1646843513892"/>
</node>
</node>
</node>
<node TEXT="RESPONSES" ID="ID_281480" CREATED="1646841459053" MODIFIED="1646841462474"/>
<node TEXT="QUERIES" ID="ID_437503098" CREATED="1646841454367" MODIFIED="1646841458850"/>
<node TEXT="PODSTAWOWE POLA WSPÓLNE JEDNAK &quot;QNAME&quot; ROZSZERZA NIEZNACZNIE POLE &quot;NAME&quot;" ID="ID_1305897821" CREATED="1646842528007" MODIFIED="1646844847879">
<node TEXT="QCLASS | CLASS" ID="ID_925588067" CREATED="1646842517338" MODIFIED="1646842522290">
<node TEXT="* 255 (QCLASS)" ID="ID_182531780" CREATED="1646842832480" MODIFIED="1646843299043"/>
</node>
<node TEXT="QTYPE | TYPE" ID="ID_99446126" CREATED="1646842513168" MODIFIED="1646843789438">
<node TEXT="QTYPE" ID="ID_1948219128" CREATED="1646872926907" MODIFIED="1646872951725"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      DODATKOWE
    </p>
  </body>
</html></richcontent>
<node TEXT="AXFR" ID="ID_29602272" CREATED="1646872931340" MODIFIED="1646872943997"/>
<node TEXT="MAILB" ID="ID_359162996" CREATED="1646872953313" MODIFIED="1646872956629"/>
<node TEXT="*" ID="ID_1208115014" CREATED="1646872956910" MODIFIED="1646872957586"/>
</node>
<node TEXT="A" ID="ID_1502158157" CREATED="1646842594348" MODIFIED="1646842655156"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      POSZUKIWANIE IPv4 Z NAZWY
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="AAAA" ID="ID_424033907" CREATED="1646842595988" MODIFIED="1646873408605">
<icon BUILTIN="help"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      POSZUKIWANIE IPv6 Z NAZWY
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="CNAME" ID="ID_1051784239" CREATED="1646842598081" MODIFIED="1646842600034"/>
<node TEXT="PTR" ID="ID_688606322" CREATED="1646842600346" MODIFIED="1646842637222"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      ODNOSI SIĘ DO POSZUKIWANIA NAZWY Z ADRESU IP
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="MX" ID="ID_34728917" CREATED="1646842602096" MODIFIED="1646842619604"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      ODNOSI SIĘ DO MEJLI
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="HINFO" ID="ID_1504259748" CREATED="1646872302296" MODIFIED="1646872328366"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      IDENTYFIKUJE CPU I OS
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="SOA" ID="ID_346608122" CREATED="1646872336759" MODIFIED="1646872411390"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      IDENTYFIKUJE POCZĄTEK PRZESTRZENI AUTHORITY (zone of authority)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="QNAME | NAME" ID="ID_1145693121" CREATED="1646842503498" MODIFIED="1646870903423" LINK="#ID_1380249800">
<node TEXT="PRZYKŁADOWE&#xa;DOMENY" ID="ID_211341554" CREATED="1646871412994" MODIFIED="1646871420812">
<node TEXT="JUSTJOIN.IT" ID="ID_1411874188" CREATED="1646871424707" MODIFIED="1646871430311"/>
<node TEXT="TWOJA.STARA.DOMENA.NET" ID="ID_34077350" CREATED="1646871430888" MODIFIED="1646871437194"/>
</node>
</node>
</node>
<node TEXT="DŁUGOŚĆ WIADOMOŚCI NIE MOŻE PRZEKRACZAĆ 512 BAJTÓW ZE WZGLĘDU NA UDP" ID="ID_293015819" CREATED="1646871270167" MODIFIED="1646871306248">
<icon BUILTIN="help"/>
</node>
<node TEXT="KOMPRESJA WIADOMOŚCI" ID="ID_1571073290" CREATED="1646871568335" MODIFIED="1646871590208">
<node TEXT="https://datatracker.ietf.org/doc/html/rfc1035#section-4.1.4" ID="ID_1113670435" CREATED="1646871638919" MODIFIED="1646871640807"/>
</node>
<node TEXT="RR - RESOURCE RECORDS" ID="ID_367421652" CREATED="1646842702825" MODIFIED="1646847310060" COLOR="#ff00ff">
<font SIZE="12" BOLD="true"/>
<node TEXT="FORMAT" ID="ID_682321433" CREATED="1646842872554" MODIFIED="1646842876084">
<node TEXT="NAME / OWNER" ID="ID_836319078" CREATED="1646842879631" MODIFIED="1646872595936">
<node TEXT="NAZWA DOMENY KTÓREJ ZADANY RR NALEŻY (owner)" ID="ID_250202377" CREATED="1646871038106" MODIFIED="1646872545015"/>
</node>
<node TEXT="TYPE" ID="ID_1383750581" CREATED="1646842890893" MODIFIED="1646872625890">
<node TEXT="DWUBAJTOWA LICZBA OKREŚLAJĄCA ZNACZENIE DANYCH W POLU RDATA" ID="ID_911265859" CREATED="1646871063147" MODIFIED="1646871087268"/>
</node>
<node TEXT="CLASS" ID="ID_385477600" CREATED="1646842892050" MODIFIED="1646872622681">
<node TEXT="DWUBAJTOWA LICZBA OKREŚLAJĄCA KLASĘ DANYCH W POLU RDATA" ID="ID_1240853410" CREATED="1646871096848" MODIFIED="1646871120770"/>
</node>
<node TEXT="TTL" ID="ID_540383688" CREATED="1646842893659" MODIFIED="1646842894908">
<node TEXT="CZAS PRZEZ JAKI MOŻNA PRZECHOWYWAĆ (CACHE) TĘ ODPOWIEDŹ" ID="ID_1820672195" CREATED="1646843804171" MODIFIED="1646843824893"/>
</node>
<node TEXT="RDLENGTH" ID="ID_825934988" CREATED="1646842895112" MODIFIED="1646842898579">
<node TEXT="DŁUGOŚĆ POLA &quot;RDATA&quot; W BAJTACH" ID="ID_533972522" CREATED="1646843828080" MODIFIED="1646843864368"/>
</node>
<node TEXT="RDATA" ID="ID_345019318" CREATED="1646842898876" MODIFIED="1646842900453">
<node TEXT="ZAWIERA DANE RÓŻNIĄCE SIĘ W ZALEŻNOŚCI OD WARTOŚCI PÓL TYPU (type) I KLASY (class)" ID="ID_156201575" CREATED="1646850924987" MODIFIED="1646850949549"/>
</node>
</node>
</node>
</node>
<node TEXT="MASTER FILES" POSITION="left" ID="ID_757351111" CREATED="1646846923225" MODIFIED="1646847310063" COLOR="#ff00ff">
<font SIZE="12" BOLD="true"/>
<node TEXT="PLIKI TEKSTOWE, W KTÓRYCH PRZECHOWYWANE SĄ WPISY" ID="ID_853426076" CREATED="1646846935627" MODIFIED="1646846995010"/>
<node TEXT="EDYTOWANE ZA POMOCĄ ZWYKŁEGO EDYTORA TEKSTU" ID="ID_1981252010" CREATED="1646846995695" MODIFIED="1646847021297"/>
<node TEXT="MOGĄ BYĆ WYMIENIANE POMIĘDZY SERWERAMI PRZEZ FTP, MAIL ITD." ID="ID_573460863" CREATED="1646847036576" MODIFIED="1646847074049"/>
</node>
<node TEXT="AUTORITY" POSITION="left" ID="ID_1811691396" CREATED="1646841522564" MODIFIED="1646872063719"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      SERWER, KTÓRY MOŻE ZWRÓCIĆ IDEALNĄ ODPOWIEDŹ NA ZAPYTANIE
    </p>
  </body>
</html></richcontent>
<node TEXT="DATAGRAM, KTÓRY SPEŁNIA WARUNEK PASOWANIA DO KAŻDEJ KLASY W ZAPYTANIU JEST &quot;AUTHORITATIVE&quot;" ID="ID_982049390" CREATED="1646841534645" MODIFIED="1646872022131">
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="PROTOKOŁY" POSITION="left" ID="ID_1215122774" CREATED="1646842930895" MODIFIED="1646842938783">
<node TEXT="TOR" ID="ID_350329331" CREATED="1646842939471" MODIFIED="1646842940908"/>
<node TEXT="DNSCRYPT" ID="ID_136097430" CREATED="1646843063806" MODIFIED="1646843067743"/>
<node TEXT="OBLIVIOUS DNS-over-HTTPS" ID="ID_842304503" CREATED="1646843067961" MODIFIED="1646843092602"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;ODoH&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="HTTPS" ID="ID_947354852" CREATED="1646842941064" MODIFIED="1646843060776"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;DOH&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="TCP" ID="ID_1713360620" CREATED="1646842943423" MODIFIED="1646843028681"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;Do53/TCP
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="UDP" ID="ID_1988672704" CREATED="1646842944938" MODIFIED="1646843012606"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;Do53&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="TLS" ID="ID_1755008055" CREATED="1646842949828" MODIFIED="1646842969042"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;DoT&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="DOMAIN NAME SPACE" POSITION="left" ID="ID_58176489" CREATED="1646847173177" MODIFIED="1646869852976" COLOR="#ff00ff">
<font SIZE="12" BOLD="true"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      STRUKTURA DRZEWA
    </p>
  </body>
</html></richcontent>
<node TEXT="W TEJ STRUKTURZE GAŁĄZIE(węzeł(node)) I LIŚCIE(leaf) NIE SĄ ROZRÓŹNIALNE" ID="ID_1325778864" CREATED="1646849613106" MODIFIED="1646850577927"/>
<node TEXT="KAŻDY WĘZEŁ LUB LIŚĆ ODNOSI SIĘ DO ZBIORU KTÓRY MOŻE BYĆ PUSTY" ID="ID_311997748" CREATED="1646849397952" MODIFIED="1646850498926"/>
<node TEXT="KAŻDY WĘZEŁ (node)POSIADA ETYKIETĘ (label)" ID="ID_694436683" CREATED="1646849767638" MODIFIED="1646849795840">
<node TEXT="ETYKIETA MOŻE POSIADAĆ MAX 63 ZNAKI (bytes) (octets)" ID="ID_160444311" CREATED="1646850410948" MODIFIED="1646850436988"/>
</node>
<node TEXT="KORZEŃ(root) TO NAJWYŻSZA DOMENA ZAWIERAJĄCA PUSTĄ ETYKIETĘ" ID="ID_438853042" CREATED="1646850702243" MODIFIED="1646850739380"/>
<node TEXT="NAZWA DOMENY (domain name)" ID="ID_1380249800" CREATED="1646850630931" MODIFIED="1646850645557">
<node TEXT="CIĄG ETYKIET, W KTÓRYM KAŻDĄ POJEDYNCZĄ ETYKIETĘ POPRZEDZA BAJT OKREŚLAJĄCY DŁUGOŚĆ ETYKIETY" ID="ID_792298398" CREATED="1646870731723" MODIFIED="1646871202303"/>
<node TEXT="TO LISTA ETYKIET Z WĘZŁÓW OD ZADANEGO LIŚCIA DO KORZENIA" ID="ID_446293493" CREATED="1646850646387" MODIFIED="1646850699149"/>
<node TEXT="SUMA DŁUGOŚCI ETYKIET NIE MOŻE PRZEKRACZAĆ 255 ZNAKÓW" ID="ID_1877430545" CREATED="1646850744827" MODIFIED="1646850767309"/>
<node TEXT="KOŃCZY SIĘ ETYKIETĄ O DŁUGOŚCI ZEROWEJ" ID="ID_1682442097" CREATED="1646870908373" MODIFIED="1646870925194"/>
</node>
<node TEXT="WĘZŁY NA TYM SAMYM POZIOMIE W DRZEWIE NIE MOGĄ POSIADAĆ TEJ SAMEJ NAZWY" ID="ID_239935573" CREATED="1646850838819" MODIFIED="1646869913864">
<font NAME="Arial"/>
<node TEXT="ALE NAZWA NA RÓŻNEJ WYSOKOŚCI MOŻE SIĘ POWTÓRZYĆ" ID="ID_574602415" CREATED="1646850870995" MODIFIED="1646850908534"/>
</node>
</node>
</node>
</map>
