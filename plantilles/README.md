# Plantilles de documents administratius (UD2.AO) – format .odt

Plantilles professionals en **format ODT** (OpenDocument Text) creades amb LibreOffice.

## Fitxers

Els fitxers `.fodt` (Flat ODF) es poden obrir directament amb **LibreOffice Writer** i després desar-los com a `.odt`.

| Fitxer | Document |
|--------|----------|
| 01_Anunci_Escola_Municipal_Mao | Anunci Ajuntament de Maó – matriculació cursos (Ceràmica, Música, Dibuix) |
| 02_Carta_Comanda_Xerox | Carta IES Joan Ramis i Ramis → Xerox Menorca (2 multifuncions) |
| 03_Certificat_1r_SMX | Certificat cursant 1r SMX |
| 04_Circular_IBI_Recaptacio | Circular Servei de Recaptació – termini IBI |
| 05_Citacio_Hisenda_Model_061 | Citació Hisenda Model 061 |
| 06_Contracte_Compravenda_Vivenda | Contracte compravenda vivenda |

## Estils aplicats

- Tipografies: Liberation Sans (títols) / Liberation Serif (cos)
- Capçaleres amb nom de l'entitat + adreça
- Peus de pàgina amb número de pàgina
- Marges A4 (2-2,5 cm)
- Colors corporatius per a cada tipus d'entitat
- Paràgrafs justificats, llistes amb sagnat
- Ortografia revisada en català (placeholders `[...]` per omplir)

## Com obtenir els .odt

1. Descarrega els `.fodt` d'aquesta carpeta `plantilles/`
2. Obre'ls amb LibreOffice Writer
3. Fitxer → Anomena i desa → tria format **ODF Text Document (.odt)**

O regenera-ho tot amb:

```bash
python3 crear_plantilles.py
```

Repositori: https://github.com/pcaldas21400-design/UD2.AO
