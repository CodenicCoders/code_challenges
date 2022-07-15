
**NOTE: TRANSLATE TO ENGLISH WITH GOOGLE TRANSLATE**

**Fury Road**

Kailangan mong pumunta sa iyong trabaho sa lalong madaling panahon. Ang daan sa 
iyong ruta patungo sa trabaho maaaring binubuo ng dalawang uri ng ibabaw: 
aspalto o buhangin. Upang gawing simple ang paglalarawan, ito ay ilalarawan ng 
isang string R na binubuo lamang ng mga titik: "A" para sa isang segment ng 
aspalto at "S" para sa isang segment ng buhangin. Ang lahat ng mga segment ay 
kumakatawan parehong distansya. Halimbawa, ang R = "SAAS" ay naglalarawan ng 
isang kalsada na binubuo ng buhangin, aspalto, aspalto at buhangin na mga 
segment.

Kapag naglalakad ka, kailangan mo ng 20 minuto upang dumaan sa isang bahagi ng 
aspalto at 30 minuto sa pamamagitan ng isang segment ng buhangin. Mayroon ka 
ring electric scooter, na nangangailangan ng 5 minuto upang dumaan sa isang 
bahagi ng aspalto at 40 minuto sa pamamagitan ng a segment ng buhangin.

Sinimulan mo ang iyong paglalakbay sa scooter, ngunit sa anumang punto maaari 
kang bumaba sa scooter at maglakad para sa natitirang bahagi ng paglalakbay. 
Ano ang pinakamaikling oras kung saan ka makakapagtrabaho?

Sumulat ng isang function:

class Solution { public int solution(String R); }

na, na binigyan ng string R ng haba N, na kumakatawan sa daan patungo sa 
trabaho, ay nagbabalik ng pinakamababang oras na kailangan mong pumasok sa trabaho.

Mga halimbawa:

1. Given R = "ASAASS", ang iyong function ay dapat bumalik sa 115. Sumakay ka sa scooter
sa unang apat na segment ("ASAA") sa 5 + 40 + 5 + 5 = 55 at pagkatapos ay magpapatuloy ka
paa sa pamamagitan ng "SS" sa 30 + 30 = 60. Sa kabuuan, ang iyong paglalakbay ay aabot ng 55 + 60 =
115.

2. Given R = "SSA", ang function ay dapat bumalik sa 80. Hindi ka sumakay sa
scooter, at maglalakad ka sa 30 + 30 + 20 = 80.

3. Given R = "SSSSAAA", dapat bumalik ang function na 175. Sumakay ka sa scooter
sa lahat ng oras sa 40 + 40 + 40 + 40 + 5 + 5 + 5 = 175.

Sumulat ng isang mahusay na algorithm para sa mga sumusunod na pagpapalagay:

Ang N ay isang integer sa loob ng hanay [1..100,000];
string R ay binubuo lamang ng mga character na "S" at/o "A".