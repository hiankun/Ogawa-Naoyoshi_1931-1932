# sin chengka ê mi̍hkiāⁿ

* Tī `csv_data` lāité, ū bô-kāng format ê tòng-àn:
  * TJTST.csv: goânté ê CSV
  * TJTST.ods: kā TJTST.csv choán chò thong-iōng ê [ODS tòng-àn](https://en.wikipedia.org/wiki/OpenDocument)
  * TJTST.xls: kā TJTST.csv choán chò [MS](https://en.wikipedia.org/wiki/Microsoft) ê [XLS tòng-àn](https://en.wikipedia.org/wiki/Microsoft_Excel#File_formats)
  * TJTST_tab.csv: kā TJTST.csv lāibīn ê khang-pe̍h choán chò TAB (ánne ētàng khah khinsang tha̍k).
  * TJTST_tab_concat.csv: chénglí TJTST_tab.csv lāibīn ê tiâuba̍k; nā chún-kóng sī kāng chi̍t-ê tiâuba̍k ê lōeiông, tō saⁿ-kap chò kāng chi̍t-hâng.

* Tī `tools` lāité ê `tjtst_dnld.sh`, ētàng tángló͘ (download) 「原冊掃描」ê tô͘ tòng-àn.
  Kanna tī Ubuntu ê BASH lāité sú-iōng--kòe, Windows èngkai sī bô tè ēng.
  (iOS góa tō bô liáukái ah.)

* Nā beh ti̍tchiap liâm khì 台日大辭典 ê bó͘ chi̍t-ê phian-hō tiâu-bo̍k (chúnkóng sī `12345`),
  ētàng tiám ēkha ê liânkiat, chiah koh kā `id=1` kái chò `id=12345`:

  [http://taigi.fhl.net/dict/search.php?DETAIL=1&LIMIT=id=1](http://taigi.fhl.net/dict/search.php?DETAIL=1&LIMIT=id=1)
  
  á-sī:

  [http://minhakka.ling.sinica.edu.tw/taijittian/search.php?DETAIL=1&LIMIT=id=1](http://minhakka.ling.sinica.edu.tw/taijittian/search.php?DETAIL=1&LIMIT=id=1)

</hr>
[ēkha sī goânté hit-ê Project ê README.md]

# 台日大辭典台語譯本
台日大辭典是1931,1932小川尚義編的。內底的閣有2005林俊育長老拍的字。

中央研究院語言學研究所「閩客語典藏」計畫，有提供[線頂辭典](http://minhakka.ling.sinica.edu.tw/taijittian/)！！

## 原始資料庫資料
原始資料，由`pgsql`dump出來的

## csv資料
由`原始資料庫資料`處理而來，處理環境是Linux Mint 17

1. `TJTST.sql.bz2`解壓縮，得到`TJTST.sql`
2. 安裝`pgsql`，`sudo apt-get install -y postgresql-9.3`
3. 匯入sql到`pgsql`，`cat TJTST.sql | psql`
4. 匯出做csv，進去`psql`，閣來輸入 `\copy (Select * From dic order by id) To '/path/TJTST.csv' With CSV DELIMITER ',' HEADER;`
5. 就可以得到`/path/TJTST.csv'`
