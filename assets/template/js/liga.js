(function(){'use strict';function supportsProperty(p){var prefixes=['Webkit','Moz','O','ms'],i,div=document.createElement('div'),ret=p in div.style;if(!ret){p=p.charAt(0).toUpperCase()+p.substr(1);for(i=0;i<prefixes.length;i+=1){ret=prefixes[i]+p in div.style;if(ret){break;}}}
return ret;}
var icons;if(!supportsProperty('fontFeatureSettings')){icons={'star':'&#xe9a7;','rate':'&#xe9a7;','star_outline':'&#xe9a8;','star_half':'&#xe9a9;','format_underline':'&#xe9ab;','underline':'&#xe9ab;','external_link':'&#xe9ac;','arrow_top_right':'&#xe9ad;','menu_add':'&#xe9a6;','menu_plus':'&#xe9a6;','menu':'&#xe967;','hamburger-menu':'&#xe967;','google_plus':'&#xe971;','twitter':'&#xe99a;','tweet':'&#xe99a;','bird':'&#xe99a;','facebook':'&#xe9a0;','fb':'&#xe9a0;','circle_fill':'&#xe9a1;','pin_alt':'&#xe9a2;','format_italics':'&#xe9a3;','minus_sm':'&#x2d;','substract_sm':'&#x2d;','minus':'&#xe9a5;','substract':'&#xe9a5;','format_textbox':'&#xe933;','trash_alt':'&#xe934;','bin_alt':'&#xe934;','close_lg':'&#xe95c;','close':'&#xe966;','cross':'&#xe966;','circle':'&#xe98c;','collapse':'&#xe98d;','expand':'&#xe98e;','side_menu':'&#xe98f;','home':'&#xe990;','house':'&#xe990;','heart_outline':'&#xe991;','<3':'&#xe991;','heart':'&#xe992;','love':'&#xe992;','pin':'&#xe993;','location':'&#xe994;','map_alt':'&#xe995;','mountain':'&#xe995;','hill':'&#xe995;','map':'&#xe996;','grid_alt':'&#xe997;','note':'&#xe998;','trash':'&#xe999;','bin':'&#xe999;','send':'&#xe99b;','sent':'&#xe99b;','spam':'&#xe99c;','vote':'&#xe99c;','inbox_all':'&#xe99d;','inbox':'&#xe99e;','link_alt':'&#xe99f;','paint_brush':'&#xe9aa;','brush':'&#xe9aa;','exit':'&#xe900;','log out':'&#xe900;','sign out':'&#xe900;','layout':'&#xe901;','window':'&#xe902;','rotate_shape':'&#xe903;','desktop':'&#xe904;','laptop':'&#xe904;','card':'&#xe905;','drag':'&#xe906;','folder':'&#xe907;','history':'&#xe908;','shapes':'&#xe909;','shapes_alt':'&#xe90a;','mic':'&#xe90b;','volume':'&#xe90c;','sound':'&#xe90c;','tag':'&#xe90d;','page_add':'&#xe90e;','page':'&#xe90f;','pages':'&#xe90f;','transition':'&#xe910;','printer':'&#xe911;','drag_handle':'&#xe912;','calendar':'&#xe913;','clipboard':'&#xe914;','play':'&#xe915;','flag':'&#xe916;','torch':'&#xe917;','dislike':'&#xe918;','like':'&#xe919;','thumbs_up':'&#xe919;','menu_level':'&#xe91a;','time':'&#xe91b;','clock':'&#xe91b;','watch':'&#xe91b;','stop_watch':'&#xe91c;','timer':'&#xe91c;','alert_help':'&#xe91d;','help':'&#xe91d;','alert_warning':'&#xe91e;','warning':'&#xe91e;','danger':'&#xe91e;','alert_info':'&#xe91f;','alert':'&#xe91f;','filter':'&#xe920;','grid':'&#xe921;','column':'&#xe922;','opacity':'&#xe923;','water':'&#xe923;','droplet':'&#xe923;','drop':'&#xe923;','droplet_off':'&#xe924;','cursor':'&#xe925;','settings_small':'&#xe926;','settings':'&#xe927;','cog':'&#xe927;','globe':'&#xe928;','world':'&#xe928;','earth':'&#xe928;','flash':'&#xe929;','effects':'&#xe92a;','magic':'&#xe92a;','magical':'&#xe92a;','eye_off':'&#xe92b;','eye':'&#xe92c;','see':'&#xe92c;','save':'&#xe92d;','edit':'&#xe92e;','pen':'&#xe92e;','pencil':'&#xe92e;','draw':'&#xe92f;','list_numbers':'&#xe930;','list_bullets':'&#xe931;','paint_bucket':'&#xe932;','paint':'&#xe932;','format_clear':'&#xe935;','format_strike_through':'&#xe936;','format_highlight':'&#xe937;','format_bold':'&#xe938;','text_size':'&#xe939;','text_add':'&#xe93a;','text_A':'&#xe93b;','text_indent_decrease':'&#xe93c;','text_indent_increase':'&#xe93d;','text_align_center':'&#xe93e;','text_align_justify':'&#xe93f;','text_align_left':'&#xe940;','text_align_right':'&#xe941;','bulb':'&#xe942;','idea':'&#xe942;','code':'&#xe943;','mail':'&#xe944;','email':'&#xe944;','person':'&#xe945;','social':'&#xe945;','human':'&#xe945;','users':'&#xe946;','user_add':'&#xe947;','add_user':'&#xe947;','user_profile':'&#xe948;','user':'&#xe949;','tick_circle':'&#xe94a;','tick':'&#xe94b;','chart_add':'&#xe94c;','chart_alt':'&#xe94d;','chart_pie':'&#xe94e;','chart':'&#xe94f;','table_add':'&#xe950;','table':'&#xe951;','crop':'&#xe952;','cloud_off':'&#xe953;','cloud_success':'&#xe954;','cloud':'&#xe955;','upload_alt':'&#xe956;','upload':'&#xe957;','download_alt':'&#xe958;','download':'&#xe959;','bookmark':'&#xe95a;','paw':'&#xe95b;','animal':'&#xe95b;','quote':'&#xe95d;','keyboard':'&#xe95e;','camera':'&#xe95f;','color':'&#xe960;','color_palette':'&#xe960;','cut':'&#xe961;','scissors':'&#xe961;','add_circle':'&#xe962;','add_sm':'&#x2b;','plus_sm':'&#x2b;','add':'&#xe964;','plus':'&#xe964;','close_ circle':'&#xe965;','link_off':'&#xe968;','link':'&#xe969;','refresh_alt1':'&#xe96a;','refresh_alt':'&#xe96b;','refresh_disable':'&#xe96c;','refresh':'&#xe96d;','search':'&#xe96e;','chat_alt':'&#xe96f;','chat':'&#xe970;','comment_edit':'&#xe972;','comment':'&#xe973;','comment_alt':'&#xe974;','redo':'&#xe975;','undo':'&#xe976;','disable':'&#xe977;','database':'&#xe978;','image':'&#xe979;','picture':'&#xe979;','media':'&#xe979;','shield_lock':'&#xe97a;','lock_outline':'&#xe97b;','unlock':'&#xe97c;','lock':'&#xe97d;','copy':'&#xe97e;','more_horizontal':'&#xe97f;','more':'&#xe97f;','more_vertical':'&#xe980;','stepper':'&#xe981;','arrow_down':'&#xe982;','arrow_up':'&#xe983;','arrow_right':'&#xe984;','arrow_left':'&#xe985;','chevron_down':'&#xe986;','chevron_up':'&#xe987;','chevron_right':'&#xe988;','chevron_left':'&#xe989;','drop_up':'&#xe98a;','arrow_drop_up':'&#xe98a;','drop_down':'&#xe98b;','arrow_drop_down':'&#xe98b;','0':0};delete icons['0'];window.icomoonLiga=function(els){var classes,el,i,innerHTML,key;els=els||document.getElementsByTagName('*');if(!els.length){els=[els];}
for(i=0;;i+=1){el=els[i];if(!el){break;}
classes=el.className;if(/pg-/.test(classes)){innerHTML=el.innerHTML;if(innerHTML&&innerHTML.length>1){for(key in icons){if(icons.hasOwnProperty(key)){innerHTML=innerHTML.replace(new RegExp(key,'g'),icons[key]);}}
el.innerHTML=innerHTML;}}}};window.icomoonLiga();}}());
