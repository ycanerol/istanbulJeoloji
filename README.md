Bu harita Twitter'da gördüğüm <a href="https://twitter.com/Paleosismolog/status/1183796422300311552" target="_blank">şu paylaşım</a>'dan
esinelenerek hazırlanmıştır. Veri İstanbul Büyükşehir Belediyesi tarafından oluşturulmuştur.Haritayı hazırlamaktaki temel amaç beklenen büyük İstanbul depremi öncesi zeminin jeolojik yapısı hakkında bir fikir vermektir.


Kullanım için, eğer İstanbul içerisinde an itibariyle bulunduğunuz konumun jeolojisini merak ediyorsanız sol üstte bulunan "Beni bul" butonuna tıklayabilirsiniz. Eğer İstanbul'da değilseniz ya da İstanbul'da bulunduğunuz konum dışında bir konuma göz atmak istiyorsanız yine solda üstteki mercek sembolüne tıklayarak adres yazabilir (Örn:"Abide-i Hürriyet Cd. No:10" yazıp enter'a bastığınızda çıkan seçeneklerden seçim yapabilirsiniz) ya da merceğin altındaki simgeye tıklayıp oradan uydu seçeneğini seçerek de merak ettiğiniz adresi bulabilirsiniz.

İletişim: mapelse@outlook.com

## Konuma bağlantı / Linking to a location

Harita, adres çubuğundaki görünümü paylaşılabilir bir bağlantı olarak tutar; başka bir uygulama da belirli bir noktaya bağlantı verebilir.
The map keeps its current view in the URL, and other apps can link to a specific point.

```
# Görünüm / view (no marker) — leaflet-hash convention
https://jeoloji.baltar.xyz/#<zoom>/<lat>/<lon>
https://jeoloji.baltar.xyz/#14/41.1216/28.8026

# İşaretli nokta / point with marker (+ optional popup label)
https://jeoloji.baltar.xyz/?lat=<lat>&lon=<lon>[&z=<zoom>][&marker=0|1][&label=<text>]
https://jeoloji.baltar.xyz/?lat=41.1216&lon=28.8026&label=Ev%20ilan%C4%B1
```

- `z` verilmezse 16 kabul edilir; yakınlaştırma haritanın izin verdiği aralığa (9–14) sıkıştırılır.
  Missing `z` defaults to 16; zoom is clamped to the map's range (9–14).
- Sorgu biçiminde işaret varsayılan olarak gösterilir (`marker=0` ile kapatılır); `label` düz metin olarak gösterilir (URL-encode edin).
  The query form shows a marker by default (`marker=0` hides it); `label` is shown as plain text (URL-encode it).
- Sorgu biçimi uygulandıktan sonra adres `#zoom/lat/lon` biçimine çevrilir; haritayı kaydırdıkça adres güncellenir. İşaret bu biçimde saklanmaz.
  After the query form is applied the URL switches to `#zoom/lat/lon`, which updates as you pan/zoom. The marker is not kept in the hash.
- Geçersiz değerler yok sayılır ve varsayılan görünüm açılır. Bağlantıyla açıldığında yan panel kapalı başlar.
  Invalid values are ignored (default view). When opened via a link, the side panel starts collapsed.
- Sol taraftaki bağlantı (link) düğmesi geçerli görünümün bağlantısını panoya kopyalar.
  The link button on the left copies a link to the current view.
