:- dynamic (<==)/2.

nao<==[[area=campo], [area=cidade, disp=d_sim, ig=ig_sim], [area=cidade, disp=d_nao, tosse=tt_expetoracao, temp=temp_normal], [area=cidade, disp=d_nao, tosse=tt_expetoracao, temp=temp_alta, idade=idade15a17], [area=cidade, disp=d_nao, tosse=tt_nulo, rc=rc_normal], [area=cidade, disp=d_nao, tosse=tt_nulo, rc=rc_alt, ig=ig_sim]].
sim<==[[area=cidade, disp=d_sim, ig=ig_nao], [area=cidade, disp=d_nao, tosse=tt_sangue], [area=cidade, disp=d_nao, tosse=tt_expetoracao, temp=temp_alta, idade=idade18a25], [area=cidade, disp=d_nao, tosse=tt_nulo, rc=rc_alt, ig=ig_nao]].