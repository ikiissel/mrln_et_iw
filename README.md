# Merlinil põhinev üksiksõnade kõnesüntesaator

==============================================================================

      Merlin: The Neural Network (NN) based Speech Synthesis System
              https://github.com/CSTR-Edinburgh/merlin

==============================================================================

             Morfoloogiline analüsaator ja ühestaja                
                 Copyright (c) 2015, Filosoft                      
              https://github.com/Filosoft/vabamorf                 

==============================================================================
## SISEND

  * `<` silp on kolmandas vältes; asetseb vahetult silbi tuuma moodustava täishääliku ees
  * `?` silp on rõhuline; asetseb vahetult silbi tuuma moodustava täishääliku ees (silbi rõhulisust märgitakse ainult sellisel juhul, kui rõhuline silp on midagi muud kui võiks ennustada, ja ennustamine käib järgmiselt: kui sõnas on kolmandas vältes silp, siis rõhk on sellel; muidu, kui sõnas on pika täishääliku või täishäälikuühendiga silp, siis rõhk on sellel; muidu on rõhk esimesel silbil) 
  * `]` eelmine häälik on palataliseeritud
  * `_` liitsõnapiir

## INSTALL

- välised sõltuvused
```sh
sudo apt-get update
sudo apt-get install build-essential csh automake realpath sox
```

- anaconda3 installimine https://docs.anaconda.com/anaconda/install/linux/

- tööriistad
```sh
cd tools
./compile_tools.sh
```

- python
```sh
conda env create -f mrln_et.yml
conda activate mrln_et
```

- süntees
```sh
python ${merlin_dir}/src/run_merlin.py ${merlin_dir} ${temp_dir} ${voice} ${in_text} ${out_wav}
```
- vaata näidet failis `mrln.sh`

- Hääl on saadaval https://arhiiv.eki.ee/~indrek/mahukadasjad/evas_art_48k.tar.xz Allalaaditud hääled tuleks lahti pakkida `voices/` kausta.


