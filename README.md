# Custom Dockerfiles for DeepSpeech

Custom Dockerfiles I use for DeepSpeech training and inference

## Useful commands

```
$ docker run  -it   \
  --entrypoint /bin/bash \
  --name deepspeech-training-kathy-custom \
  --gpus all \
  --memory=8g \
  --mount type=bind,source="$(pwd)"/deepspeech-data,target=/DeepSpeech/deepspeech-data   501979231a7b
```


https://deepspeech.readthedocs.io/en/latest/Flags.html#training-flags


python3 DeepSpeech.py \
  --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
  --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
  --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
  --checkpoint_dir deepspeech-data/checkpoints-22Feb2021-id \
  --export_dir deepspeech-data/exported-model-22Feb2021-id \
  --train_cudnn true \
  --early_stop true \
  --es_epochs 10 \
  --es_min_delta 0.06 \
  --reduce_lr_on_plateau true \
  --plateau_epochs 5 \

python3 DeepSpeech.py \
  --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
  --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
  --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
  --checkpoint_dir deepspeech-data/checkpoints-true-id \
  --export_dir deepspeech-data/exported-model-true-id \
  --train_cudnn true \
  --early_stop true \
  --es_epochs 10 \
  --es_min_delta 0.06 \
  --reduce_lr_on_plateau true \
  --plateau_reduction 0.08 \
  --plateau_epochs 5 \
  --n_hidden 1024

  python3 DeepSpeech.py \
    --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
    --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
    --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
    --checkpoint_dir deepspeech-data/checkpoints-newscorer-id \
    --export_dir deepspeech-data/exported-model-newscorer-id \
    --train_cudnn true \
    --early_stop true \
    --es_epochs 30 \
    --es_min_delta 0.03 \
    --reduce_lr_on_plateau true \
    --plateau_reduction 0.2 \
    --plateau_epochs 3 \
    --n_hidden 2048 \
    --scorer deepspeech-data/indonesian-scorer/kenlm.scorer


    python3 lm_optimizer.py \
      deepspeech-data/indonesian-sentences.txt \
      --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
      --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
      --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
      --checkpoint_dir deepspeech-data/checkpoints-newscorer-id \
      --export_dir deepspeech-data/exported-model-newscorer-id



      python3 DeepSpeech.py \
        --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
        --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
        --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
        --checkpoint_dir deepspeech-data/checkpoints-5March-id \
        --export_dir deepspeech-data/exported-model-5March-id \
        --train_cudnn true \
        --early_stop true \
        --es_epochs 30 \
        --es_min_delta 0.03 \
        --reduce_lr_on_plateau true \
        --plateau_reduction 0.2 \
        --plateau_epochs 3 \
        --n_hidden 64 \
        --dropout_rate 0.4
        --deepspeech-data/indonesian-scorer/kenlm.scorer



        root@57e6bf4eeb1c:/DeepSpeech# python3 DeepSpeech.py \
        >         --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
        >         --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
        >         --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
        >         --checkpoint_dir deepspeech-data/checkpoints-8March-id \
        >         --export_dir deepspeech-data/exported-model-8March-id \
        >         --train_cudnn true \
        >         --early_stop true \
        >         --es_epochs 30 \
        >         --es_min_delta 0.03 \
        >         --reduce_lr_on_plateau true \
        >         --plateau_reduction 0.2 \
        >         --plateau_epochs 3 \
        >         --n_hidden 8 \
        >         --dropout_rate 0.4


        python3 DeepSpeech.py \
          --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
          --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
          --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
          --checkpoint_dir deepspeech-data/checkpoints-8March-id \
          --export_dir deepspeech-data/exported-model-8March-id \
          --train_cudnn true \
          --early_stop true \
          --es_epochs 30 \
          --es_min_delta 0.05 \
          --reduce_lr_on_plateau true \
          --plateau_reduction 0.2 \
          --plateau_epochs 5 \
          --n_hidden 8 \
          --dropout_rate 0.4 \
          --scorer deepspeech-data/indonesian-scorer/kenlm.scorer

          python3 DeepSpeech.py \
            --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
            --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
            --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
            --checkpoint_dir deepspeech-data/checkpoints-21March-id \
            --export_dir deepspeech-data/exported-model-21March-id \
            --train_cudnn true \
            --early_stop true \
            --es_epochs 60 \
            --es_min_delta 0.05 \
            --reduce_lr_on_plateau true \
            --plateau_reduction 0.3 \
            --plateau_epochs 5 \
            --n_hidden 256 \
            --dropout_rate 0.3 \
            --scorer deepspeech-data/indonesian-scorer/kenlm.scorer \
            --use_allow_growth \
            --train_batch_size 1 \
            --dev_batch_size 1 \
            --test_batch_size 1

            python3 DeepSpeech.py \
              --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
              --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
              --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
              --checkpoint_dir deepspeech-data/checkpoints-3April-id \
              --export_dir deepspeech-data/exported-model-3April-id \
              --summary_dir deepspeech-data/summary-3April-id \
              --train_cudnn true \
              --early_stop true \
              --es_epochs 30 \
              --es_min_delta 0.1 \
              --reduce_lr_on_plateau true \
              --plateau_reduction 0.05 \
              --plateau_epochs 5 \
              --n_hidden 2048 \
              --dropout_rate 0.4 \
              --scorer deepspeech-data/indonesian-scorer/kenlm.scorer \
              --use_allow_growth \
              --train_batch_size 1 \
              --dev_batch_size 1 \
              --test_batch_size 1 \
              -augment reverb[p=0.1,delay=50.0~30.0,decay=10.0:2.0~1.0] \
  --augment resample[p=0.1,rate=12000:8000~4000] \
  --augment codec[p=0.1,bitrate=48000:16000] \
  --augment volume[p=0.1,dbfs=-10:-40] \
  --augment pitch[p=0.1,pitch=1~0.2] \
  --augment tempo[p=0.1,factor=1~0.5] \
  --augment warp[p=0.1,nt=4,nf=1,wt=0.5:1.0,wf=0.1:0.2] \
  --augment frequency_mask[p=0.1,n=1:3,size=1:5] \
  --augment time_mask[p=0.1,domain=signal,n=3:10~2,size=50:100~40] \
  --augment dropout[p=0.1,rate=0.05] \
  --augment add[p=0.1,domain=signal,stddev=0~0.5] \
  --augment multiply[p=0.1,domain=features,stddev=0~0.5] \
              --cache_for_epochs 5 \
              --feature_cache deepspeech-data/feature_cache


            python3 DeepSpeech.py             --train_files
deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv
--dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv
--test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv
--checkpoint_dir deepspeech-data/checkpoints-21March-id             --export_dir
deepspeech-data/exported-model-21March-id             --train_cudnn true
--early_stop true             --es_epochs 40             --es_min_delta 0.05
--reduce_lr_on_plateau true             --plateau_reduction 0.1
--plateau_epochs 4             --n_hidden 256             --dropout_rate 0.3
--scorer deepspeech-data/indonesian-scorer/kenlm.scorer
--use_allow_growth             --train_batch_size 4 --dev_batch_size 4
--test_batch_size 4


python3 DeepSpeech.py \
  --train_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/train.csv \
  --dev_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/dev.csv \
  --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
  --load_checkpoint_dir deepspeech-data/deepspeech-0.9.3-checkpoint \
  --save_checkpoint_dir deepspeech-data/checkpoints-15May2021-id \
  --export_dir deepspeech-data/exported-model-15May2021-id \
  --train_cudnn true \
  --dropout_rate 0.2 \
  --learning_rate 0.00001 \
  --augment frequency_mask[p=0.8,n=2:4,size=2:4] \
  --augment time_mask[p=0.8,n=2:4,size=10:50,domain=spectrogram] \
  --epochs 100 \
  --drop_source_layers 2 \
  --use_allow_growth true


  LLENGUA=id
  LEARNING_RATE=0.00001
  DROPOUT=0.2
  #SPECAUG: 0, 1
  SPECAUG="  "
  #OFF_SPECAUG=""
  EPOCHS=100
  DROP_SOURCE_LAYERS=2


  I FINISHED optimization in 16:29:38.028580
I Loading best validating checkpoint from deepspeech-data/deepspeech-0.9.3-checkpoint/best_dev-1466475
I Loading variable from checkpoint: cudnn_lstm/rnn/multi_rnn_cell/cell_0/cudnn_compatible_lstm_cell/bias
I Loading variable from checkpoint: cudnn_lstm/rnn/multi_rnn_cell/cell_0/cudnn_compatible_lstm_cell/kernel
I Loading variable from checkpoint: global_step
I Loading variable from checkpoint: layer_1/bias
I Loading variable from checkpoint: layer_1/weights
I Loading variable from checkpoint: layer_2/bias
I Loading variable from checkpoint: layer_2/weights
I Loading variable from checkpoint: layer_3/bias
I Loading variable from checkpoint: layer_3/weights
I Loading variable from checkpoint: layer_5/bias
I Loading variable from checkpoint: layer_5/weights
I Loading variable from checkpoint: layer_6/bias
I Loading variable from checkpoint: layer_6/weights
Testing model on deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv
Test epoch | Steps: 1844 | Elapsed Time: 0:45:59                                      
Test on deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv - WER: 1.000000, CER: 0.636064, loss: 86.836922
--------------------------------------------------------------------------------
Best WER:
--------------------------------------------------------------------------------
WER: 0.500000, CER: 0.222222, loss: 5.571427
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_24023115.wav
 - src: "maumu apa"
 - res: "momu apa"
--------------------------------------------------------------------------------
WER: 0.666667, CER: 0.450000, loss: 33.983688
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20879216.wav
 - src: "mereka memborgol tom"
 - res: "mecamam burger tom"
--------------------------------------------------------------------------------
WER: 0.666667, CER: 0.363636, loss: 30.961182
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_24038157.wav
 - src: "bagaimana keadaan mary"
 - res: "begi manekada mary"
--------------------------------------------------------------------------------
WER: 0.750000, CER: 0.458333, loss: 45.856144
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_19967506.wav
 - src: "dia ingin menikah segera"
 - res: "the ingin mani gassigata"
--------------------------------------------------------------------------------
WER: 0.800000, CER: 0.562500, loss: 89.791321
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_19647936.wav
 - src: "mike tidak ikut berlatih kemarin"
 - res: "mike ilarical glotid moter"
--------------------------------------------------------------------------------
Median WER:
--------------------------------------------------------------------------------
WER: 1.100000, CER: 0.741379, loss: 138.724884
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20954832.wav
 - src: "setiap bulan saya menulis surat untuk teman di luar negeri"
 - res: "as it the arb were and sayamonoiso up of the tomanuarmanly"
--------------------------------------------------------------------------------
WER: 1.100000, CER: 0.476190, loss: 127.974380
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_19652987.wav
 - src: "apakah anda ingin makan disini atau membawa pulang makan disini"
 - res: "a pute handeringan mothen misiny at e mumber of wullan natandisin"
--------------------------------------------------------------------------------
WER: 1.100000, CER: 0.485294, loss: 123.017532
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20882981.wav
 - src: "toleransi dapat menjadi hal buruk jika dimanfaatkan oleh orang jahat"
 - res: "tolenanti dabaentet y help boop dikatiman far camol e or anjaad"
--------------------------------------------------------------------------------
WER: 1.111111, CER: 0.680556, loss: 194.562363
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20263241.wav
 - src: "faktor utama yang menyebabkan kekeringan adalah berkurangnya curah hujan"
 - res: "forthor with the miaming wer concucarin an and elangre crongatrahogen"
--------------------------------------------------------------------------------
WER: 1.111111, CER: 0.671875, loss: 172.987106
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_23677605.wav
 - src: "berapa banyak penerbangan ke boston yang ditawarkan dalam sehari"
 - res: "neverwen a lot a baland wastern ith oar condetem seaty"
--------------------------------------------------------------------------------
Worst WER:
--------------------------------------------------------------------------------
WER: 3.750000, CER: 1.444444, loss: 144.493790
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20954236.wav
 - src: "ulang tahunmu semakin dekat"
 - res: "the asseting in tem to e  a on on o was ati e ab a"
--------------------------------------------------------------------------------
WER: 4.000000, CER: 1.111111, loss: 33.746914
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20953138.wav
 - src: "perhatian"
 - res: "gat a happy an"
--------------------------------------------------------------------------------
WER: 4.000000, CER: 1.250000, loss: 32.820820
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20953200.wav
 - src: "benarkah"
 - res: "ibut not a ca"
--------------------------------------------------------------------------------
WER: 4.750000, CER: 2.200000, loss: 184.572235
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20953901.wav
 - src: "sekarang pukul tujuh pagi"
 - res: "in e ten e sumber men my dolli ate i e tar of tool to do on e b"
--------------------------------------------------------------------------------
WER: 7.666667, CER: 2.038462, loss: 210.143326
 - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20954194.wav
 - src: "jagalah kebersihan kelasmu"
 - res: "t i ta e o o o but o a ay ite tet of the mon e un gas i in te no"
--------------------------------------------------------------------------------
I Exporting the model...
I Loading best validating checkpoint from deepspeech-data/deepspeech-0.9.3-checkpoint/best_dev-1466475
I Loading variable from checkpoint: cudnn_lstm/rnn/multi_rnn_cell/cell_0/cudnn_compatible_lstm_cell/bias
I Loading variable from checkpoint: cudnn_lstm/rnn/multi_rnn_cell/cell_0/cudnn_compatible_lstm_cell/kernel
I Loading variable from checkpoint: layer_1/bias
I Loading variable from checkpoint: layer_1/weights
I Loading variable from checkpoint: layer_2/bias
I Loading variable from checkpoint: layer_2/weights
I Loading variable from checkpoint: layer_3/bias
I Loading variable from checkpoint: layer_3/weights
I Loading variable from checkpoint: layer_5/bias
I Loading variable from checkpoint: layer_5/weights
I Loading variable from checkpoint: layer_6/bias
I Loading variable from checkpoint: layer_6/weights
I Models exported at deepspeech-data/exported-model-15May2021-id
I Model metadata file saved to deepspeech-data/exported-model-15May2021-id/author_model_0.0.1.md. Before submitting the exported model for publishing make sure all information in the metadata file is correct, and complete the URL fields.


[I 2021-05-15 23:44:02,576] Trial 0 finished with value: 0.784433351821039 and parameters: {'lm_alpha': 0.5706453361923874, 'lm_beta': 2.0328716142321506}. Best is trial 0 with value: 0.784433351821039.


python3 generate_lm.py \
  --input_txt /DeepSpeech/deepspeech-data/indonesian-opus-scorer/indonesian-sentences.txt \
  --output_dir /DeepSpeech/deepspeech-data/indonesian-opus-scorer \
  --top_k 500000 --kenlm_bins /DeepSpeech/native_client/kenlm/build/bin/ \
  --arpa_order 5 --max_arpa_memory "85%" --arpa_prune "0|0|1" \
  --binary_a_bits 255 --binary_q_bits 8 --binary_type trie


  ./generate_scorer_package \
  --alphabet ../alphabet.txt  \
  --lm ../../deepspeech-data/indonesian-opus-scorer/lm.binary \
  --vocab ../../deepspeech-data/indonesian-opus-scorer/vocab-500000.txt \
  --package kenlm-indonesian-opus.scorer \
  --default_alpha 0.5706453361923874 \
  --default_beta 2.0328716142321506


  python3 DeepSpeech.py \
  --test_files deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv \
  --checkpoint_dir deepspeech-data/checkpoints-15May2021-id \
  --export_dir deepspeech-data/exported-model-15May2021-id \
  --scorer deepspeech-data/indonesian-opus-scorer/kenlm-indonesian-opus.scorer

  Test on deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/test.csv - WER: 0.337308, CER: 0.163337, loss: 35.282639
  --------------------------------------------------------------------------------
  Best WER:
  --------------------------------------------------------------------------------
  WER: 0.000000, CER: 0.000000, loss: 51.956173
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20953807.wav
   - src: "saya tidak pernah mendengar cerita menyeramkan sepanjang hidupku"
   - res: "saya tidak pernah mendengar cerita menyeramkan sepanjang hidupku"
  --------------------------------------------------------------------------------
  WER: 0.000000, CER: 0.000000, loss: 50.760746
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20952927.wav
   - src: "dari rumah ke sekolah makan waktu satu jam dengan kereta"
   - res: "dari rumah ke sekolah makan waktu satu jam dengan kereta"
  --------------------------------------------------------------------------------
  WER: 0.000000, CER: 0.000000, loss: 48.461937
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20882981.wav
   - src: "toleransi dapat menjadi hal buruk jika dimanfaatkan oleh orang jahat"
   - res: "toleransi dapat menjadi hal buruk jika dimanfaatkan oleh orang jahat"
  --------------------------------------------------------------------------------
  WER: 0.000000, CER: 0.000000, loss: 48.063599
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_24016279.wav
   - src: "aku akan menjemputnya malam ini"
   - res: "aku akan menjemputnya malam ini"
  --------------------------------------------------------------------------------
  WER: 0.000000, CER: 0.000000, loss: 46.709484
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_19967505.wav
   - src: "kalau pergi ke kedutaan anda turun di stasiun berikutnya"
   - res: "kalau pergi ke kedutaan anda turun di stasiun berikutnya"
  --------------------------------------------------------------------------------
  Median WER:
  --------------------------------------------------------------------------------
  WER: 0.285714, CER: 0.154762, loss: 68.576042
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_19800507.wav
   - src: "mengapa kamu tidak ikut memancing dengan kami akhir minggu ini jika kamu tidak sibuk"
   - res: "mengapa kamu tidak memancing dengan kami diminggu ini tidak kamu tidak sibuk"
  --------------------------------------------------------------------------------
  WER: 0.285714, CER: 0.244444, loss: 57.329037
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_22787928.wav
   - src: "aku tidak dapat membayangkan hidup tanpa kamu"
   - res: "aku tidak membayangkan hidup tanpa"
  --------------------------------------------------------------------------------
  WER: 0.285714, CER: 0.125000, loss: 56.721111
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20953594.wav
   - src: "apakah orang tuamu setuju kamu menjadi pramugari"
   - res: "apakah orang tuamu terbuka mu menjadi pramugari"
  --------------------------------------------------------------------------------
  WER: 0.285714, CER: 0.177778, loss: 51.183151
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_23821358.wav
   - src: "proses pemilihan jadwal saat ini sedang sulit"
   - res: "proses pembelanja dua saat ini sedang sulit"
  --------------------------------------------------------------------------------
  WER: 0.285714, CER: 0.108696, loss: 50.995544
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_23745418.wav
   - src: "sayangnya dia bertemu dengan wanita yang salah"
   - res: "sayangnya dia bertemu dengan wali perang salah"
  --------------------------------------------------------------------------------
  Worst WER:
  --------------------------------------------------------------------------------
  WER: 1.200000, CER: 0.404762, loss: 50.730019
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_19982391.wav
   - src: "mencintai kehidupan adalah mencintai tuhan"
   - res: "mencetak itu pangan telah mencitaiku han"
  --------------------------------------------------------------------------------
  WER: 1.250000, CER: 0.448276, loss: 26.796913
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_19699834.wav
   - src: "baca musiknya dengar fiksinya"
   - res: "tak causin nya dari sinya"
  --------------------------------------------------------------------------------
  WER: 1.333333, CER: 0.846154, loss: 115.509048
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20954194.wav
   - src: "jagalah kebersihan kelasmu"
   - res: "ketidakcakapan si hantu muncul"
  --------------------------------------------------------------------------------
  WER: 1.333333, CER: 0.571429, loss: 38.747044
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20867346.wav
   - src: "boleh kubawakan jasmu"
   - res: "bulan kedua kena mu"
  --------------------------------------------------------------------------------
  WER: 2.000000, CER: 0.444444, loss: 25.116688
   - wav: file://deepspeech-data/cv-corpus-6.1-2020-12-11/id/clips/common_voice_id_20953138.wav
   - src: "perhatian"
   - res: "dia hatian"
  --------------------------------------------------------------------------------
  I Exporting the model...
  I Loading best validating checkpoint from deepspeech-data/checkpoints-15May2021-id/best_dev-1558022
  I Loading variable from checkpoint: cudnn_lstm/rnn/multi_rnn_cell/cell_0/cudnn_compatible_lstm_cell/bias
  I Loading variable from checkpoint: cudnn_lstm/rnn/multi_rnn_cell/cell_0/cudnn_compatible_lstm_cell/kernel
  I Loading variable from checkpoint: layer_1/bias
  I Loading variable from checkpoint: layer_1/weights
  I Loading variable from checkpoint: layer_2/bias
  I Loading variable from checkpoint: layer_2/weights
  I Loading variable from checkpoint: layer_3/bias
  I Loading variable from checkpoint: layer_3/weights
  I Loading variable from checkpoint: layer_5/bias
  I Loading variable from checkpoint: layer_5/weights
  I Loading variable from checkpoint: layer_6/bias
  I Loading variable from checkpoint: layer_6/weights
  I Models exported at deepspeech-data/exported-model-15May2021-id
  I Model metadata file saved to deepspeech-data/exported-model-15May2021-id/author_model_0.0.1.md. Before submitting the exported model for publishing make sure all information in the metadata file is correct, and complete the URL fields.


  https://wortschatz.uni-leipzig.de/en/download/indonesian#ind_mixed_2013
