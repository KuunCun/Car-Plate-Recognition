% ANA PROGRAMDA OKUNAN PLAKA DEĞERİNİ KARŞILAŞTIRARAK...
% PLAKANIN HANGİ İLE AİT OLDUĞUNU TANIMLAR
function il = State_founder(final_output)

    if strncmp(final_output,'01',2)
    il = 'Adana';
    elseif strncmp(final_output,'02',2)
    il = 'Adıyaman';
    elseif strncmp(final_output,'03',2)
    il = 'Afyon';
    elseif strncmp(final_output,'04',2)
    il = 'Ağrı';
    elseif strncmp(final_output,'05',2)
    il = 'Amasya';
    elseif strncmp(final_output,'06',2)
    il = 'Ankara';
    elseif strncmp(final_output,'07',2)
    il = 'Antalya';
    elseif strncmp(final_output,'08',2)
    il = 'Artvin';
    elseif strncmp(final_output,'09',2)
    il = 'Aydın';
    elseif strncmp(final_output,'10',2)
    il = 'Balıkesir';
    elseif strncmp(final_output,'11',2)
    il = 'Bilecik';
    elseif strncmp(final_output,'12',2)
    il = 'Bingöl';
    elseif strncmp(final_output,'13',2)
    il = 'Bitlis';
    elseif strncmp(final_output,'14',2)
    il = 'Bolu';
    elseif strncmp(final_output,'15',2)
    il = 'Burdur';
    elseif strncmp(final_output,'16',2)
    il = 'Bursa';
    elseif strncmp(final_output,'17',2)
    il = 'Çanakkale';
    elseif strncmp(final_output,'18',2)
    il = 'Çankırı';
    elseif strncmp(final_output,'19',2)
    il = 'Çorum';
    elseif strncmp(final_output,'20',2)
    il = 'Denizli';
    elseif strncmp(final_output,'21',2)
    il = 'Diyarbakır';
    elseif strncmp(final_output,'22',2)
    il = 'Edirne';
    elseif strncmp(final_output,'23',2)
    il = 'Elazığ';
    elseif strncmp(final_output,'24',2)
    il = 'Erzincan';
    elseif strncmp(final_output,'25',2)
    il = 'Erzurum';
    elseif strncmp(final_output,'26',2)
    il = 'Eskişehir';
    elseif strncmp(final_output,'27',2)
    il = 'Gaziantep';
    elseif strncmp(final_output,'28',2)
    il = 'Giresun';
    elseif strncmp(final_output,'29',2)
    il = 'Gümüşhane';
    elseif strncmp(final_output,'30',2)
    il = 'Hakkari';
    elseif strncmp(final_output,'31',2)
    il = 'Hatay';
    elseif strncmp(final_output,'32',2)
    il = 'Isparta';
    elseif strncmp(final_output,'33',2)
    il = 'Mersin';
    elseif strncmp(final_output,'34',2)
    il = 'İstanbul';
    elseif strncmp(final_output,'35',2)
    il = 'İzmir';
    elseif strncmp(final_output,'36',2)
    il = 'Kars';
    elseif strncmp(final_output,'37',2)
    il = 'Kastamonu';
    elseif strncmp(final_output,'38',2)
    il = 'Kayseri';
    elseif strncmp(final_output,'39',2)
    il = 'Kırklareli';
    elseif strncmp(final_output,'40',2)
    il = 'Kırşehir';
    elseif strncmp(final_output,'41',2)
    il = 'Kocaeli';
    elseif strncmp(final_output,'42',2)
    il = 'Konya';
    elseif strncmp(final_output,'43',2)
    il = 'Kütahya';
    elseif strncmp(final_output,'44',2)
    il = 'Malatya';
    elseif strncmp(final_output,'45',2)
    il = 'Manisa';
    elseif strncmp(final_output,'46',2)
    il = 'Kahramanmaraş';
    elseif strncmp(final_output,'47',2)
    il = 'Mardin';
    elseif strncmp(final_output,'48',2)
    il = 'Muğla';
    elseif strncmp(final_output,'49',2)
    il = 'Muş';
    elseif strncmp(final_output,'50',2)
    il = 'Nevşehir';
    elseif strncmp(final_output,'51',2)
    il = 'Niğde';
    elseif strncmp(final_output,'52',2)
    il = 'Ordu';
    elseif strncmp(final_output,'53',2)
    il = 'Rize';
    elseif strncmp(final_output,'54',2)
    il = 'Sakarya';
    elseif strncmp(final_output,'55',2)
    il = 'Samsun';
    elseif strncmp(final_output,'56',2)
    il = 'Siirt';
    elseif strncmp(final_output,'57',2)
    il = 'Sinop';
    elseif strncmp(final_output,'58',2)
    il = 'Sivas';
    elseif strncmp(final_output,'59',2)
    il = 'Tekirdağ';
    elseif strncmp(final_output,'60',2)
    il = 'Tokat';
    elseif strncmp(final_output,'61',2)
    il = 'Trabzon';
    elseif strncmp(final_output,'62',2)
    il = 'Tunceli';
    elseif strncmp(final_output,'63',2)
    il = 'Şanlıurfa';
    elseif strncmp(final_output,'64',2)
    il = 'Uşak';
    elseif strncmp(final_output,'65',2)
    il = 'Van';
    elseif strncmp(final_output,'66',2)
    il = 'Yozgat';
    elseif strncmp(final_output,'67',2)
    il = 'Zonguldak';
    elseif strncmp(final_output,'68',2)
    il = 'Aksaray';
    elseif strncmp(final_output,'69',2)
    il = 'Bayburt';
    elseif strncmp(final_output,'70',2)
    il = 'Karaman';
    elseif strncmp(final_output,'71',2)
    il = 'Kırıkkale';
    elseif strncmp(final_output,'72',2)
    il = 'Batman';
    elseif strncmp(final_output,'73',2)
    il = 'Şırnak';
    elseif strncmp(final_output,'74',2)
    il = 'Bartın';
    elseif strncmp(final_output,'75',2)
    il = 'Ardahan';
    elseif strncmp(final_output,'76',2)
    il = 'Iğdır';
    elseif strncmp(final_output,'77',2)
    il = 'Yolava';
    elseif strncmp(final_output,'78',2)
    il = 'Karabük';
    elseif strncmp(final_output,'79',2)
    il = 'Kilis';
    elseif strncmp(final_output,'80',2)
    il = 'Osmaniye';
    elseif strncmp(final_output,'81',2)
    il = 'Düzce';
    else
    il = 'Tanımlanamadı';
    end
end

