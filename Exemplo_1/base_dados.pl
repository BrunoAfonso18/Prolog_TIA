% ------- estrutura da base de dados --------

%comida(tipo_comida,nome,[caracteristicas],vegetariana_sim/nao,categoria_preco,preco,loja,[nome_ingrediente,nome_ingrediente,nome_ingrediente]).

% fonte: https://cardapiovirtual.pt/oubela/

comida(pizza,transmontana,[carne],vegetariana_nao,entre_10_15,10.50,oubela,[tomate,mozzarella,queijo,alheira,grelos,ovo]).
comida(pizza,vegetariana,[vegetariana],vegetariana_sim,entre_10_15,10.50,oubela,[tomate,mozzarella,tomate_cherry,cebola_roxa,cebolinho]).
comida(pizza,parma,[carne],vegetariana_nao,entre_10_15,10.50,oubela,[tomate,mozzarella,rucula,presunto,creme_balsamico]).
comida(pizza,pepperoni,[carne,picante],vegetariana_nao,entre_10_15,10.50,oubela,[tomate,mozzarella,pepperoni,azeitonas_pretas]).
comida(pizza,calzone,[carne],vegetariana_nao,entre_10_15,10.50,oubela,[tomate,mozzarella,bacon,cogumelos,salpicao]).
comida(francesinha,vegetariana,[vegetariana],vegetariana_sim,entre_5_10,9.50,oubela,[queijo,tofu,beringela,courgete,ovo,molho_especial]).
comida(francesinha,frango,[carne],vegetariana_nao,entre_5_10,9.0,oubela,[queijo,fiambre,salpicao,bacon,bife_frango,ovo,molho_especial]).
comida(cachorro,especial,[carne],vegetariana_nao,entre_5_10,9.0,oubela,[queijo,fiambre,salpicao,salsicha,ovo,molho_especial]).
comida(hamburger,especial,[carne],vegetariana_nao,entre_5_10,9.0,oubela,[queijo,fiambre,salpicao,bacon,novilho,ovo,molho_especial]).
comida(salada,salmao,[carne],vegetariana_nao,entre_5_10,8.50,oubela,[massa,alface,rucula,frutos_secos,salmao_fumado,molho_mostarda,mel]).
comida(salada,bacalhau,[peixe],vegetariana_nao,entre_5_10,8.50,oubela,[massa,alface,rucula,tomate_cherry,ovo_cozido,grao_bico,bacalhau]).
comida(salada,vegetariana,[vegetariana],vegetariana_sim,entre_5_10,8.50,oubela,[massa,alface,rucula,frutos_secos,beringela,courgete,tofu]).
comida(salada,frango,[carne],vegetariana_nao,entre_5_10,8.0,oubela,[massa,alface,rucula,tomate_cherry,ovo_estrelado,alface,frango,creme_balsamico]).

% fonte: https://www.mcdonalds.pt/produtos/mcmenu
% fonte: https://www.pricelisto.com/menu-prices/mcdonalds-pt

comida(hamburger,big_mac,[carne],vegetariana_nao,entre_1_5,3.70,mcdonalds,[carne_vaca,queijo,pepino,cebola,alface]).
comida(hamburger,cbo,[carne],vegetariana_nao,entre_5_10,5.90,mcdonalds,[frango,cebola,bacon,alface,pao]).
comida(hamburger,bouble_heeseburger,[carne],vegetariana_nao,entre_1_5,3.55,mcdonalds,[carne_vaca,queijo,maionese,pao]).
comida(hamburger,big_tasty,[carne],vegetariana_nao,entre_1_5,3.55,mcdonalds,[bacon,queijo]).
comida(hamburger,filet_o_fish,[peixe],vegetariana_nao,entre_1_5,3.55,mcdonalds,[filete_peixe,queijo,molho_tartaro]).   
comida(hamburger,mcroyal_deluxe,[carne],vegetariana_nao,entre_1_5,4.60,mcdonalds,[carne_vaca,tomate,alface,maionese]).
comida(hamburger,mcchicken,[carne],vegetariana_nao,entre_1_5,3.55,mcdonalds,[frango,alface,maionese]).

% fonte: https://www.telepizza.pt

comida(pizza,farinheira,[carne],vegetariana_nao,entre_15_20,15.30,telepizza,[massa,farinheira,bacon,ananas]).
comida(pizza,burguer_supreme,[carne],vegetariana_nao,entre_15_20,18.50,telepizza,[massa,carne_de_vaca,queijo_cheddar,tomate_cherry,molho_kebab,crispy_bacon,ketchup]).
comida(pizza,mexicana_spicy,[carne],vegetariana_nao,entre_15_20,16.90,telepizza,[massa,molho_mexicano_spicy,topping_para_pizza,crispy_bacon,pimento_verde,milho]).
comida(pizza,lasanha_carne,[carne],vegetariana_nao,entre_15_20,18.50,telepizza,[massa_fina,molho_de_tomate,oregaos,topping_para_pizza,carne,cebola,molho_carbonara,topping_vegetal]).
comida(pizza,pimentango,[carne],vegetariana_nao,entre_15_20,16.90,telepizza,[massa,pimento,frango_marinado,molho_kebab]).
comida(pizza,bitoque,[carne],vegetariana_nao,entre_15_20,16.90,telepizza,[massa,carne,extra_carne,cebola,ovo_estrelado_a_cavalo]).
comida(pizza,texana,[vegetariana],vegetariana_sim,entre_15_20,16.90,telepizza,[massa_telepizza,molho_de_tomate,topping_para_pizza,quadrados_molho_barbecue]).
comida(pizza,kebab,[carne],vegetariana_nao,entre_15_20,16.90,telepizza,[massa,molho_de_tomate,oregaos,topping_para_pizza,frango_marinado,carne,tomate_cherry,molho_kebab]).
comida(pizza,rainha,[carne],vegetariana_nao,entre_15_20,15.30,telepizza,[massa_telepizza,molho_carbonara,topping_para_pizza,chourico,ananas]).
comida(pizza,funny_bacon,[bacon],vegetariana_nao,entre_10_15,13.70,telepizza,[massa_telepizza,molho_de_tomate,oregaos,topping_para_pizza,bacon,cogumelos]).
comida(pizza,hot_pepperoni,[carne],vegetariana_nao,entre_10_15,13.70,telepizza,[massa_telepizza,molho_de_tomate,oregaos,pepperoni,extra_topping_para_pizza]).
comida(pizza,crispy_bacon,[bacon],vegetariana_nao,entre_15_20,16.90,telepizza,[topping_para_pizza,bacon,crispy_bacon,molho_barbecue]).
comida(pizza,burguer,[carne],vegetariana_nao,entre_15_20,16.90,telepizza,[massa_telepizza,molho_de_tomate,oregaos,topping_para_pizza,carne,cebola,bacon,extra_topping_para_pizza]).
comida(pizza,camarao,[atum,camarao],vegetariana_nao,entre_15_20,16.90,telepizza,[massa_telepizza,molho_de_tomate,oregaos,topping_para_pizza,camarao,atum,ananas,extra_camarao]).
comida(pizza,tuna,[atum],vegetariana_nao,entre_10_15,13.70,telepizza,[atum_acamado,massa_com_molho_de_tomate,oregaos,topping_para_pizza,azeitonas]).
comida(pizza,atlantica,[atum,camarao],vegetariana_nao,entre_15_20,18.50,telepizza,[massa,molho_carbonara,camarao,atum,ananas,extra_camarao]).
comida(pizza,maritima,[atum],vegetariana_nao,entre_15_e_20,15.30,telepizza,[massa,molho_carbonara,topping_para_pizza,atum,cebola]).
comida(pizza,cool_cheese,[fiambre],vegetariana_nao,entre_10_15,13.70,telepizza,[massa,fiambre,cool_cheese]).
comida(pizza,formaggio,[queijo],vegetariana_sim,entre_15_20,16.90,telepizza,[massa,queijo_provolone,queijo_suico_curado,queijo_de_cabra,molho_carbonara]).
comida(pizza,quatro_queijos,[queijo],vegetariana_sim,entre_15_20,16.90,telepizza,[massa,melhores_queijos,molho_de_tomate,oregaos]).
comida(pizza,carbonara_eq,[bacon],vegetariana_nao,entre_15_20,18.50,telepizza,[molho_carbonara,cogumelos,bacon,extra_topping_para_pizza]).
comida(pizza,vulcano,[nachos],vegetariana_nao,entre_15_20,18.50,telepizza,[massa,vulcao_de_queijo_cheddar_extra,nachos,dois_ingredientes_escolha]).
comida(pizza,vulcano_kebabb,[nachos],vegetariana_nao,entre_15_20,18.50,telepizza,[vulcao_de_molho_kebabb,queijo_cheddar,nachos,dois_ingredientes_escolha ]).
comida(pizza,coracao,[queijo],vegetariana_nao,entre_15_20,16.90,telepizza,[massa_formato_coracao,molho_de_tomate,oregaos,topping_para_pizza,queijo_de_cabra,tomate_cherry,queijo_cheddar_extra]).
comida(pizza,bacana_supreme,[queijo_suico],vegetariana_nao,entre_15_20,18.50,telepizza,[queijo_suico_curado,finissima_tortilha,bacon,ananas,cogumelos]).
comida(pizza,europa,[bacon],vegetariana_nao,entre_15_20,16.90,telepizza,[molho_de_tomate,oregaos,topping_para_pizza,bacon,tomate_cherry,cogumelos,topping_vegetal]).
comida(pizza,soberba,[molho_carbonara],vegetariana_nao,entre_15_20,16.90,telepizza,[massa,molho_carbonara,topping_para_pizza,bacon,cogumelos,molho_barbecue]).
comida(pizza,bacana,[cogumelos],vegetariana_nao,entre_15_20,16.90,telepizza,[massa_telepizza,molho_de_tomate,oregaos,topping_para_pizza,bacon,cogumelos,ananas,extra_topping_para_pizza]).

% fonte: https://camada.pt/

comida(francesinha,lombo,[carne],vegetariana_nao,entre_10_15,11.67,camada,[queijo,ovo,bife_lombo,bacon,salsichao,chourico,molho_especial]).
comida(francesinha,cachorro,[carne],vegetariana_nao,entre_5_10,9.31,camada,[queijo,cebola_frita,salsicha,bacon,salsichao,chourico,molho_especial]).
comida(francesinha,alheira,[carne],vegetariana_nao,entre_10_15,10.49,camada,[queijo,ovo,hamburger_alheira,bacon,salsichao,chourico,molho_especial]).
comida(francesinha,frango,[carne],vegetariana_nao,entre_10_15,10.49,camada,[queijo,ovo,bife_frango,bacon,salsichao,chourico,molho_especial]).
comida(francesinha,hamburger,[carne],vegetariana_nao,entre_10_15,10.49,camada,[queijo,ovo,hamburger,bacon,salsichao,chourico,molho_especial]).
comida(francesinha,vegetariana,[vegetariana],vegetariana_sim,entre_10_15,10.49,camada,[queijo,salsicha_soja,hamburger_vegetariano,molho_especial]).
comida(salada,frango,[carne],vegetariana_nao,entre_10_15,9.55,camada,[tomate_cherry,frango,maca,amendoim,alface,manjericao,rucula]).

% fonte: https://www.ilfiume.pt

comida(pizza,il_fiume,[carne],vegetariana_nao,entre_10_15,13.95,il_fiume,[queijo_ricotta,chourico,presunto,rucula,parmesao,cogumelos_frescos,fiambre,ovo,tomate_cherry,cebola,azeitonas,pimento_verde]).
comida(pizza,salsiccia,[carne],vegetariana_nao,entre_5_10,9.50,il_fiume,[salsicha_toscana,cogumelos,mozzarella,molho_de_tomate]).
comida(pizza,diavola,[carne],vegetariana_nao,entre_5_10,9.50,il_fiume,[salame_picante,oregaos]).
comida(pizza,di_modena,[carne],vegetariana_nao,entre_10_15,12.50,il_fiume,[presunto_di_parma,pesto,provolone,tomate_cherry]).
comida(pizza,norvegia,[carne],vegetariana_nao,entre_10_15,14.50,il_fiume,[salmao_fumado,rucula,parmesao,tomate_cherry,vinagrete_de_manga]).
comida(pizza,salame,[carne],vegetariana_nao,entre_10_15,10.50,il_fiume,[base_creme_fraiche,cebola,cogumelos,mozzarella,salame_picante,rucula,parmesao,azeite_de_alho]).
comida(pizza,peperoncino,[vegetariana],vegetariana_sim,entre_10_15,14.00,il_fiume,[base_pesto,mozzarella,pimento_recheado,cebola,azeitonas,rucula,parmesao]).
comida(pizza,pescador,[carne],vegetariana_nao,entre_5_10,8.00,il_fiume,[base_tomate,camarao,rucula]).
comida(pizza,margarita,[vegetariana],vegetariana_sim,entre_5_10,7.45,il_fiume,[tomate_cherry,manjericao]).
comida(pizza,prosciutto,[carne],vegetariana_nao,entre_5_10,8.50,il_fiume,[fiambre,tomate_cherry,oregaos]).
comida(pizza,pepperoni,[carne],vegetariana_nao,entre_5_10,9.50,il_fiume,[cogumelos_frescos,pepperoni,pimento,oregaos]).
comida(pizza,vecchio,[carne],vegetariana_nao,entre_5_10,9.50,il_fiume,[tomate_cherry,ovo,fiambre,cebola,oregaos,azeitonas,pimento]).
comida(pizza,elegante,[carne],vegetariana_nao,entre_10_15,11.50,il_fiume,[presunto,parmesao,rucula,tomate_cherry]).
comida(pizza,funghi,[vegetariana],vegetariana_sim,entre_5_10,8.50,il_fiume,[azeitonas,cogumelos_frescos,oregaos]).
comida(pizza,siciliana,[carne],vegetariana_nao,entre_5_10,9.50,il_fiume,[bacon,azeitonas,cogumelos_frescos,oregaos]).
comida(pizza,enamorata,[carne],vegetariana_nao,entre_10_15,10.50,il_fiume,[camarao,atum,abacaxi]).
comida(pizza,americana,[carne],vegetariana_nao,entre_5_10,9.00,il_fiume,[fiambre,bacon,oregaos]).
comida(pizza,a_pizzaiolo,[carne],vegetariana_nao,entre_5_10,9.50,il_fiume,[fiambre,cogumelos_frescos,manjericao]).
comida(pizza,tres_queijos,[vegetariana],vegetariana_sim,entre_10_15,10.50,il_fiume,[parmesao,gorgonzola,rucula]).
comida(pizza,siracusa,[carne],vegetariana_nao,entre_5_10,9.00,il_fiume,[base_tomate,mozzarella,atum,cebola,azeitonas]).
comida(pizza,iberica,[carne],vegetariana_nao,entre_10_15,10.50,il_fiume,[fiambre,chourico,cebola,cogumelos_frescos,pimento,azeitonas,oregaos]).
comida(pizza,genova,[carne],vegetariana_nao,entre_10_15,12.95,il_fiume,[camarao,cogumelos_frescos,bacon,abacaxi]).
comida(pizza,carbonara,[carne],vegetariana_nao,entre_5_10,9.50,il_fiume,[base_creme_fraiche,cebola,mozzarella,parmesao,bacon,natas,ovo]).
comida(pizza,carbonara,[carne],vegetariana_nao,entre_5_10,9.50,il_fiume,[frango,carne_picada,cebola,bacon,molho_barbecue]).
comida(pizza,vegan,[vegetariana],vegetariana_sim,entre_10_15,11.50,il_fiume,[molho_de_tomate,mozzarella_vegan,alcachofras,pimento,cebola,espargos,cogumelos_frescos,azeitonas,tomate_cherry]).

% fonte: https://www.biradosnamorados.pt/  vem sempre acompanhados com batata | machadinha 2 molhos _1 e _2

comida(hamburger,vira,[carne],vegetariana_nao,entre_10_15,13.80,bira_dos_namorados,[hamburger_picanha_maturada,alface_iceberg,tomate,compota_de_cebola_com_bacon,queijo_pecorino_trufado,maionese_de_alho_negro,pao_brioche_com_manteiga_de_alho]).
comida(hamburger,moda_das_saias,[carne],vegetariana_nao,entre_5_10,9.00,bira_dos_namorados,[hamburger_frango,queijo_mozzarella_de_bufala,rucula,tomate,pesto_de_manjericao,pao_de_hamburguer]).
comida(hamburger,malhao,[carne],vegetariana_nao,entre_5_10,8.90,bira_dos_namorados,[hamburger_vaca,queijo_gouda,alface_iceberg,tomate,cogumelos_shiitake_e_pleurotus,maionese_de_alho,pao_de_hamburguer]).
comida(hamburger,machadinha_1,[carne],vegetariana_nao,entre_5_10,8.90,bira_dos_namorados,[hamburger_vaca,alheira_grelhada,cebola_frita,ovo_estrelado,molho_barbecue,pao_de_hamburguer]).
comida(hamburger,machadinha_2,[carne],vegetariana_nao,entre_5_10,8.90,bira_dos_namorados,[hamburger_vaca,alheira_grelhada,cebola_frita,ovo_estrelado,maionese_de_alho,pao_de_hamburguer]).
comida(hamburger,chamarrita,[carne],vegetariana_nao,entre_5_10,9.00,bira_dos_namorados,[hamburger_vaca,queijo_cheddar,bacon,rucula,molho_barbecue,bolo_do_caco_da_madeira]).
comida(hamburger,bailinho,[carne],vegetariana_nao,entre_5_10,8.90,bira_dos_namorados,[hamburger_vaca,queijo_da_ilha,bacon,banana_caramelizada,maionese_de_alho_assado,bolo_do_caco_da_madeira]).
comida(hamburger,birazinha,[carne,picante],vegetariana_nao,entre_10_15,10.50,bira_dos_namorados,[hamburger_vaca,linguica,bacon,ovo_estrelado,queijo_gouda,molho_especial,pao_de_hamburguer]).
comida(hamburger,birazinha,[carne,picante],vegetariana_nao,entre_10_15,10.50,bira_dos_namorados,[hamburger_vaca,linguica,bacon,ovo_estrelado,queijo_gouda,molho_especial,pao_de_hamburguer]).
comida(hamburger,cana_verde,[vegetariana],vegetariana_sim,entre_5_10,8.90,bira_dos_namorados,[hamburger_quinoa,grao_bico,beterraba,alface,pickles_caseiros_de_rabanete,rodela_ananas_grelhado,maionese_vegan_de_abacate,bolo_do_caco_da_madeira_de_beterraba]).
comida(hamburger,regadinho,[vegetariana],vegetariana_sim,entre_5_10,8.90,bira_dos_namorados,[hamburger_alheira_vegetariana_panada,cogumelo_portobello,alface,maionese_vegan_de_abacate_e_lima,bolo_do_caco_da_madeira_de_beterraba]).
comida(hamburger,daca_para_pequenotes,[carne,junior],vegetariana_nao,entre_5_10,6.60,bira_dos_namorados,[hamburger_vaca,tomate,alface_iceberg,queijo_gouda,pao_de_hamburguer]).
comida(hamburger,daca_para_catraios,[carne,junior],vegetariana_nao,entre_5_10,6.60,bira_dos_namorados,[hamburger_vaca,queijo_cheddar,molho_de_ketchup,pao_de_hamburguer]).