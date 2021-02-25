# Erkenntnis Bericht

**Ticket:** [VCMP-46](https://hinderlingvolkart.atlassian.net/browse/VCMP-46)  
**Seite:** [vps-asp.ch](https://www.vps-asp.ch)

## Probleme aus Kundensicht

1. Autoplay funktioniert auch nach einer Interaktion mit der Seite nicht immer
2. Safari hat Verzerrungen und Klickgeräusche nach Klick auf einem Sample

## Interpretation

1. Autoplay funktioniert auch nach einer Interaktion mit der Seite nicht immer
   - In Chrome [^1] spielen die Samples auch erst nach einer beliebigen Interaktion.
     Wie damit umgehen wird in einem in der Konsolenwarnung verlinkten [Artikel] von Google erklärt.
     Laut dem "Key Point" wird möglicherweise der `AudioContext` vor jeglicher Userinteraktion instanziert.
     Ein möglicher Umgang ist auch im vorher erwähnten [Artikel] beschrieben.
   - Statt einem heute üblichen `autoplay` Attribut wird die Funktionalität durch ein Script erzeugt.
2. Safari hat Verzerrungen und Klickgeräusche nach Klick auf einem Sample
   - Weil der `AudioContext` per skript erzeugt wird, wird auch eine standart mässige Samplingrate festgelegt.
     Diese stimmt dann nicht zwangsläufig mit allen Soundfiles überein, [mögliche Beschreibung](https://bugs.webkit.org/show_bug.cgi?id=211394#c30)
     Lösungsvorschäge:
     1. Für jedes Audiofile der `AudioContext` erneut in der entsprechenden Samplingrate erzeugt wird
     2. Mittels [Hüllkurve] die Klickgeräusche rausfiltern
   - Übertragungs-rate oder -weise vom Server zum Browser möglicherweise nicht ausreichend

Nach all dem bleibe ich im Glaube dass die Probleme hauptsächlich daher rühren, dass für Audio Autoplay damals ein Vorgehen gewählt wurde, dass heute klar nicht der Spezifikation entspricht. Wie Browser damit umgehen ist nicht über alle Browser gleich, daher ist schwehr zu auseinander zu halten wo jeweils Browserbug, Webseitenbug oder einfach auch eine falsche Erwartungshaltung seitens der Kundschaft abzugrenzen sind.

[^1]: Version 88.0.4324.150 (Official Build) (x86_64)

[artikel]: https://developers.google.com/web/updates/2017/09/autoplay-policy-changes#webaudio
[hüllkurve]: https://developer.mozilla.org/en-US/docs/Web/API/AudioParam/exponentialRampToValueAtTime
