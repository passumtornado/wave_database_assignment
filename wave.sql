
--BACKUP OF MY DATABASE FROM POSTGRESQL PGADMIN 4
PGDMP     
                    x            wavebusiness    12.3    12.3     -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            0           1262    16471    wavebusiness    DATABASE     �   CREATE DATABASE wavebusiness WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE wavebusiness;
                postgres    false            �            1259    16496    agent_transactions    TABLE     �   CREATE TABLE public.agent_transactions (
    atx_id integer NOT NULL,
    u_id integer NOT NULL,
    agent_id integer NOT NULL,
    amount numeric NOT NULL,
    fee_amount_scalar numeric NOT NULL,
    when_created timestamp without time zone NOT NULL
);
 &   DROP TABLE public.agent_transactions;
       public         heap    postgres    false            �            1259    16488    agents    TABLE     �   CREATE TABLE public.agents (
    agent_id integer NOT NULL,
    name text,
    country text NOT NULL,
    region text,
    city text,
    subcity text,
    when_created timestamp without time zone
);
    DROP TABLE public.agents;
       public         heap    postgres    false            �            1259    16518    atx_voulume_city_summary    TABLE     S   CREATE TABLE public.atx_voulume_city_summary (
    city text,
    volume bigint
);
 ,   DROP TABLE public.atx_voulume_city_summary;
       public         heap    postgres    false            �            1259    16524 %   atx_voulume_city_summary_with_country    TABLE     r   CREATE TABLE public.atx_voulume_city_summary_with_country (
    city text,
    volume bigint,
    country text
);
 9   DROP TABLE public.atx_voulume_city_summary_with_country;
       public         heap    postgres    false            �            1259    16480 	   transfers    TABLE     �  CREATE TABLE public.transfers (
    transfer_id integer NOT NULL,
    u_id integer NOT NULL,
    source_wallet_id integer NOT NULL,
    dest_wallet_id integer NOT NULL,
    send_amount_currency text NOT NULL,
    send_amount_scalar numeric NOT NULL,
    receive_amount_currency text NOT NULL,
    receive_amount_scalar numeric NOT NULL,
    kind text NOT NULL,
    dest_mobile text,
    dest_merchant_id integer,
    when_created timestamp without time zone NOT NULL
);
    DROP TABLE public.transfers;
       public         heap    postgres    false            �            1259    16472    users    TABLE     �   CREATE TABLE public.users (
    u_id integer NOT NULL,
    name text NOT NULL,
    mobile text NOT NULL,
    wallet_id integer NOT NULL,
    date timestamp without time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16504    wallets    TABLE     �   CREATE TABLE public.wallets (
    wallet_id integer NOT NULL,
    currency text NOT NULL,
    ledger_location text NOT NULL,
    date timestamp without time zone NOT NULL
);
    DROP TABLE public.wallets;
       public         heap    postgres    false            '          0    16496    agent_transactions 
   TABLE DATA           m   COPY public.agent_transactions (atx_id, u_id, agent_id, amount, fee_amount_scalar, when_created) FROM stdin;
    public          postgres    false    205          &          0    16488    agents 
   TABLE DATA           ^   COPY public.agents (agent_id, name, country, region, city, subcity, when_created) FROM stdin;
    public          postgres    false    204   U-       )          0    16518    atx_voulume_city_summary 
   TABLE DATA           @   COPY public.atx_voulume_city_summary (city, volume) FROM stdin;
    public          postgres    false    207   4       *          0    16524 %   atx_voulume_city_summary_with_country 
   TABLE DATA           V   COPY public.atx_voulume_city_summary_with_country (city, volume, country) FROM stdin;
    public          postgres    false    208   u4       %          0    16480 	   transfers 
   TABLE DATA           �   COPY public.transfers (transfer_id, u_id, source_wallet_id, dest_wallet_id, send_amount_currency, send_amount_scalar, receive_amount_currency, receive_amount_scalar, kind, dest_mobile, dest_merchant_id, when_created) FROM stdin;
    public          postgres    false    203   �4       $          0    16472    users 
   TABLE DATA           D   COPY public.users (u_id, name, mobile, wallet_id, date) FROM stdin;
    public          postgres    false    202   XX       (          0    16504    wallets 
   TABLE DATA           M   COPY public.wallets (wallet_id, currency, ledger_location, date) FROM stdin;
    public          postgres    false    206   .\       �
           2606    16503 *   agent_transactions agent_transactions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.agent_transactions
    ADD CONSTRAINT agent_transactions_pkey PRIMARY KEY (atx_id);
 T   ALTER TABLE ONLY public.agent_transactions DROP CONSTRAINT agent_transactions_pkey;
       public            postgres    false    205            �
           2606    16495    agents agents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.agents
    ADD CONSTRAINT agents_pkey PRIMARY KEY (agent_id);
 <   ALTER TABLE ONLY public.agents DROP CONSTRAINT agents_pkey;
       public            postgres    false    204            �
           2606    16487    transfers transfers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.transfers
    ADD CONSTRAINT transfers_pkey PRIMARY KEY (transfer_id);
 B   ALTER TABLE ONLY public.transfers DROP CONSTRAINT transfers_pkey;
       public            postgres    false    203            �
           2606    16479    users users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    202            �
           2606    16511    wallets wallets_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (wallet_id);
 >   ALTER TABLE ONLY public.wallets DROP CONSTRAINT wallets_pkey;
       public            postgres    false    206            '      x�u[Y�$;
�����@���S��������T�TrEؘ�p �S��%z�>��	�����;���:T�����7�7
[������k�I���l�x��f���|%�/��ҳsB���{�����:x�����m��5�Y����5Y���-�������KW�ױ��������غ�;���x�>��)�*V��j�GM���m뾾��*ѩȋ��A��
�{�8����T��i�L��%|�ʭ��;*o��i.������H�Yy���{��`F�ϒG�'���m%,��Y�{��{]�!�g	"��d:t�)�Y�6�Y�����K�@-l�+�49X�w	��j_ǭj�Wٹ��X%�Ke��d�[Ʃh�ӂ	��,y[c��Z��<K@,����F��ϒ�=�MOkf	���Y�֟>8�:���x���Y�ȷ��k���Y�A
�Y�i�%�@��.5����\zy��%�ı�8��z}����W����f�x�`��S��[�-�Ҁg	+�������,y���ݷ�?�<|����q��66@��ў% �Av�q�	�7���m*����+�J�}DӘě�t<=^��Rz�U]�iy�uȭ�s��Ac3�d�����=b
��W���"��gV^W�r����P狠��c���u7��.9��?o
4��˥��z�N IW`o~nʋ��부���$	�%�L�����^ٮ�v�3
�1���eTa����Y�wM�a�	Вɛ���PD�@��8���~{0P{���8�d�|�P��(~;兆U�VUx0��ϒ�Y�9;�� ����o�[�<K�U	�_=^���4�p �3�L|)\�C��h�20��b3"��TF1S�
'�着7����Μq�ʈ�fش�����A)=nPS��>S��Tp�%$9+���rzz�����L�?���Z,zmk����L�#��`��\��U?8.ݢ-�M,�+�U̼�P�?0ԖM��Xh �`�
-�y#c��E��_ɚ��y���J���@
��t�)��7C��
+�3����3!!��|9�YY���3v�Y9 ,[��g����������p�� �V#��b�S8~	�����*�|�)\��=�����r%g��)�1���q�~-<9 ;���|n���J����/�:E�'rX[���$"��)xr6�N��&��oI��~%��)Yʡ��1m˫G���2w��HG�V@d-¥E�� �
j��̾�)�Y�B�+a`C��J<
?a	b���V���v����z�0�/��������f
�X%���W��S�=9	�G-&�v*>K�ڙ!{U�w�	مv��f���\�����Fv�b�u����ެ�	�C)��.ȥƊ~��"
��[b=�5��E��;nzE.+)GLHW�E�ZS�\��}|��m8�/8[�Y�eE�!�uLS2��J�w���H�i��Z.�0v�}���E���ie�t�~�x�`�|���+.4J�����Y�>���q����SnT�;
0L�	�)Ƶ��#�ٯ����)��L��L+�zNBIj�K�=�l��������«��x���5׽EIxK��!c׭��g����o����H�H��"[��œ�"q�Z�p�YUЃ��&6Fub������5��`��c1z��Y|��.}�O

5�U�CU�i�P9�@��
K|r`_2S�]������4	$���'�NܠS2U�ܘVU�Ӥ�҉��ZhP��n�ja
�CS@�! 3���+c��|D�v%��λW�E~%+y��X��v�|�بK�Df7����!���wFEN�K�w!*�D��BkR��o�ʃ~4��(Uߢ��5�Q���䑿�Wt=�<KHhk:���1oe�H��o��.&�,&�2�pM���]0�ft��y��Z��zԄɣ���j�FUh������>K�����5F";Mx7=K��Jj����"��
)�~0��&۳�_=�����6nX��!
�j�_���'�L�4p٢���!��إ��A�� �D���qa`d�_���$��¼�|?*Jȃ�#!��߻�Z1�I�n���#��%��w�Z�@;��^oJ�v��Ӭ�v����N�4�El�"���;��"A��PRnJ����2�\�.i'�%y1�7�Sh2�K��!oڳc0�_>�c����A��^��ԣ��4�����0��i�Ez�~�C�f�G�ӏwIB���:a"��.\�;ͻ�"�d�|���'*�����h��d��ӱ�R�����.�&L���`��7�p��C�ƜEVV�������&Y�4i�EȤ�aaI`s%�y��V*��Ǧ��M��J�eq����'��&��T1���
��4
Aŉ�1[h�m-%���l�u��W��S��v���/rr��h;f@�:J
�;/�X�4�q2��̏r"qG�����4�0���﹄K�&���';��7KՖO��oU\�`?`����1�<aي��ۄ��2�e�j����:��׬@���L�t���W4A�!���������9�h5�%��K�w��IB�p쮮Z�B+rB��]4�B�ɦ���A�Z��t��sIq��ڛ��0U�]���^�iE�ۼ�t
���OH�T��Z��Y��U�׋�?c_���0 %�6/�[4K�`�C�_{JB���Ä_�W4ĊI�/
3/�;�2��ٸ�^�q>�c���z(�,VH��k����|L���k��M�0�3�q��B^B��Ƭ_��xL8"���)|	K�������� o��ϥf��0�p`l��D��ע
�,�<:uef�J���Yw�c�yV���̾��� {`�ú�	f�ɧ0��hh�&-��[V^��tF`�}��U�B�4����tSw�&�ℇ���dMk�*�2&'��Q1uv0�R����T1���=�^%�^��M�&��JK���q.���Z�D����deMʗKU� Hi_lUI*&��]��/ŵeҜ�H�4��r�1�z~���c�TϢ̓�(�e8I�X$�?NdtN�f�
�'r4_��-����ob�*�}EAG?�O�i��A��ӻ&��0oO���y�ki�8 f?��|5��R�4~
T�~�̍�wn'F�jʱ��e�ƀda$�ev"TL��1Ҡ�	ƟZ�<nc��6y��Ղ�t�hw�~z��������2�\��\;a>��U�91O�����+��%$��^\4G�,�^X��2��`N�dw� ߝ�!�3r��;Mۤ���gͰ���vf��(v�{�Dy.�g�+�?uؔ6�*0O~���T�P�H���}۴�
B!ȀӡqbG�Y{[ޯs���4�rv���tXSIi6*�
G��&�e���9в�ܞ?����1��\�e��M�t��r�ft���1~��~��s�9�2����-k�U�%�t��`��Y�
�sUo��,�r��f��
���3hD2�B��rOO4E���ҀC��|��e>!����*�۴�hcZ�ȆP��5��y&��k�BcH�=�+�47�:H��M�;5"�����[s<.
ŝ����4��is�D
誇�Q��:Y��2͍�\5���B�,����w!�^�C7�L��o����1/s6�R���/��O�Cȓ�����>��"�$�wH�z���7�3�p�0�D�M��P_�a܋/�ƗB�9�L`�+O��x�R=f	��!��<���� ԕ1�T�lM��01� �dX�H9��q�Z��Y+6���"��k#)&�n�2�"w�,Hz�[�/IL��I���힀��_O�42�]��P;�"c�ڭaI�ސ�h�~�A�(-<-��L�5ꢌ(
Qe�׎!�<hv��l�ǻ2�;	���3�w������ϣ�c+f~G�����Vf�G(�k�&�"C�^g��va8�T8�N
��.��M�tK89�bJ�|]�Y0gޓ�;NyO0Tf�SPo;��M��KPw�owUߍn	�f�W�v"�
�\����]ZR"�2Ecd�lm0R��)Bga�[@�����'H^?�`�Z -  ��ߙԿ�xW��w*�����#�̹�r|�z�"vHuf�z�&��݀8��s�	�wS4!���l��S���>#�Y暲�k�v1\��"$D1���nM�H8:g�!��ñ)*}�����{��Rj3�7Pw�ʦp���eln'�>D���$�Ϊ��ȓ`��ء��xC��I,o֗�1jh	 �v����'�/St�G���P{���	'�{h`hf
�M١9���V�>��ݕ�~�ZU��խ��MGi��5�Ÿ�5K?���f���uru��q�fV�!Yw�[s|�fVZ��׾��a��Dm���2k�r��r��31ø#�a-�\�߾��5�1{���O׺�Z�t�8@�n>�MG� �$\6���6��CdA�61T�u:1T�<tu�#����ɀ6c�|�QlK�����\,���9Mn\�zUR�j 
��ᄚvVm�t��44��p�e6
#C���9� 㡕�[xgeo��܉�K(
�\\�v����Giwt������r#�<�!�/jVC�mb?�}W�k�m�8G��UY�@~ ~q�n�������l���      &   �  x�UV�r7<�_�[NL�/�Ƈ�EY!e1N���$�X@�bEo�>=�K:��ARzgz�{&K�*�'U�}���]��
�����θ�*����⨝RdI:�� �$���Y�|�ĳ��'��C0�X���A�ʵ�̇(�r��f:H 3��x�����6�r��Q<�?Q	őq�Gm����VK��.��?72C=c��3�:J�r�A�~��E�op�T}�Q�MU�P�R3Θ�Je���k$��h����>�?�+�DQ�����M���*����"��	Jƃ$#�QN@c�>h��"��3� �wsq���YG�Z�P+p��:(|�NY�<e	�&���m"�S��Wm�??���v�$T��G�&���x	�E�e��)�����b��R.�s:�n�M��T�W/M�T�
�i�0�t�D0�؍�[�|	
ӫyz;e���~O#|���������P����ʲd6�!�4k�Vn��5��U���T-@y�/JХ)���A�K��*��c��K��x���9�Nױ��Vg%�<@�Q2�9O�ِ��f�TJ��<C�b��(UCjf�5|$�I��|�ui�J��aWP��5�4�WgЅ��FS(b�}�N�9]4�n��z���-�ƕrը5�s姦���ڝ�g��~0��S��>����g�0��&X��g
v[�jM4��7�t��3 ��D�/�`����4�	���O���у5b�4��T;���>��?];}�t�1i�Yֵ;��I�{R�����zr���0	�ث�᝱L�^��T|C��\��`U'�'}�_9R��c�5a�?�^
 B[p`0�
�fM����\d��:x7��U��7"j��}��K�e��� }���>�y��M���Ԙ�+��c\��\0�.��yu��<�p��>�
�wss�Ę)���+p=1��L)�@�=���W�O[�]���.���Br
�W�$S�g)�U�㛕�r�D���ڢ��Ǒ�袺7��5S**�`��c��"A\�i�QUͻ���۽�(�l���Z��YM�H|�O>�s��4k���ʙ:j�]�s}MϔݒNg#��l,���ȅ���Rڞ���ցG#`�m�,��]��8����F�.��yK�Ia iiv�yS�Z�v�ᢚ�4b�~}i�b�Q���k���jV�����}K�@�W�Бk����o0�?����/���%�����/�����ol��ʻ\&�{Zr؋�N{�*O[���P��  aH�8�͟�WE���X��;D'ĝ�H�fyU���H�~��5�C�K�<E��f��Zv�x�_�3�d���N�%��w�[�ֈ�˸�</��t�<Tx�������S ' �4@�芯�����	�v�K/��-:����Ɯ��H<lC(��T�[}�V�U��Ә�(뽚�B������XC+u�k��J
ǔd8�V{�m��d)�u>"C*�YC��e�/p!uov8�Sn]����ҍB����Q>��#���y�k�m��b��"x�
IHn�{]N���D���Y�{��K�ͧ)_O̔��2?	��5�&0�k�rwT�>���f��^�ÉtN�m}�4��) ��Gc~UE�Nگ���M+�ntw��D4'Uj�v��aArΨ�2!�8޺�D�e�V>��
NҢUBW�S��E\"@5RV�{\N���HrHf9����>|�$�g-      )   R   x��M,J�I�HMLQ�4�r���IMOUH,��}���SsR�8����SRs
22A����y%
�9I�y� ~� 
��      *   `   x��M,J�I�HMLQ�4��s��r,�NLI�)��L	�D�p��+8楧�+p�U'f�(8�$%�����p9��䤦�*$e�L����� ��c      %      x�m}[�-�����(r����˲���v�v݅��8�����|�@:G'DQ����ҧ�>���?}��������fk������3F���j��k�������~J�C�L��?������?��o�E�������?��������ʯe�B��Ϸ���������Z��7�������?~��?��_�6�v,P�ϘX��O��G~���d�������O���xM��o��~Z��7�g�W��e��
�%��WЯD�P�ᇗ��U<��O�b_Q���?}���E�@��_���b}j��o���(�^����?}�:IK_uY�/e��/��,=�u��f-s~��o�����Ycʫ����R�}�o��7p���GK�SЈ%o�JTS�q��}�x�jE?�d��{�\]ޔ#鿖�K)?]vB��ï`T�(�'�Uk5y�Z����TVd<�>��ɇ�q�S�o�z�\駈4����3��Fe��|�=�tV��2�gc7���wL�a���]l��B8�1񞈕D�|0U�Ƨ�3�d��oƶ�.-}ʐuQT��������

Z���Z��xM庱>�r]�Q������������U⒫���ڡe0C��৛�w�70��V���_�����M�#৫P���+��٭e}�-^b�|���-1^�UAj�Gd�j)�����_���g��u�&{i?CM }���U�}���b{�W���ц5TU�(�J���5R�+�@<[���؇�P��#Ī9���B���[���G
���%�NW<M
��m��z��D5m�BP������҃a�N�C��[=p3ݫ4XdV/�0�
���i�,/!kQ�
����g`Y�8x����{��J�Bx�?�f�������H�5"��%i����.r>l�`�L����d�Ӆ�s}��)�3��x����.�q�y�2��u�߾�	����9�ɪ"Ƥ%�
/2G;�����N�L�f��U��@�L�ϖ�f�*|���񷳯���T�<�9�I����:�hϗT������c�I�,1H���;^�E�����1>[R���8��o]%yI]D R�\�b�����U�����S��];�sY�����Y�C�T+_�p0$�=[!|��tX)��桺*�P�hYxK�C��	�g��9�|�y��qo�
,� �s�_&� +��n�:�k���/�lM.���*ɛ�>��MV#���WyL!�~���Q������)�����:WFYD���pr(��|�8xS�m�����
D�̡���PF%�u��*�,+k���!�LH!*��Ԟ1je}%۬����>0����Xp��lm�D�����q[c�5[?u�+��^�x�����5 ��Q�4@`!�2��['*W�.н;�!��dy��,�`�F��O�,�jf��i��6y�����J�#�e��b�l�#|��0bs��T�0�]f)8=����:7�U$q�9�g��FI�o5Ʉ�,��~��
V �`)`��PP|�/�ʊ���ÔlHV�m���� q�]M�@�@&��z�x�Y�
Z�L�*�Hu��D�e0B�I�\�����g80�7�N��֩�7�TX���K<C5�ORw�g
����]�n�� �x�6ӗVz�6�?i��᲎ŉC>���U����b��Ң���6����o۽��2�O
~�D���o��KPm�s@����(�],J������t� ��|Š.[F��H�H��ex ('ȅ���$�X��o_�q��xee��cY�;���a���
T�.r�0�	��AOzQA��ڷ��;Ч�6CQ.|	iz4>��S��F����N"�e�N��U�s5��W�7�OU����9��� ߨ�C.M�8~2���h�����LNQ4��x��ԩ`��IБm�/J)��P�)d؍��Lm�絘��1�ql<UP��eO��=�ڏ�D ���~`<�"�zT�`(o�e_J�`�"&��U�`���ʦS��� U�"v3�*�#��XP��2�1+1
gG�T��cV4`��I@�h:���a*)�u8̗P��
���VT5t<�Q�_���ȏ�U�PU� �W$`�ycX�1#?��4RG��C�Ma=9�wy��g�`����Ȇ$F�t,�Q
	��%��R��jH�1��&�R	�c�t1���+�l��ƍ���X��ת1����(I�RF["k���R�H�����7_|�U*��a�P��iN��s<�j�|8�O���?�9�Em��&��2ҹ��-��G���Wx�&Fd�;Pa���QQ�YB������c9�V�"i| I�Kl�>�k/yMգ�/ȿ�>���`h��a<T1�S5��JA=�^%G��Qt�P����C��/��5���Ul��l��6�yO���������ƨ��o6��f�>�)1� �^-��xA!��8=2�l����ѳ��q��v�k��dlt��؆��r�N�8���>��]f����M*uu����%�>��e�K�>�����l+ t�"h&�.�u�A�dp�QFM�����+(W�����3
�5�֮q3,�v^<��ޚ$���,���/Np��\�D�$0� R�M3X'_ �Ժ���d,�O<�y�Y�;�%��k8�SZ�Ņ&�Y'�h���/Pw'lr�1���14K	�!L�j��j��q�3������lo���/�@�c�:3��6��n�ބ�w�}����Mn+g�����O�R����؊� ���aw��iOw`_#�2Xr[�$~z6���-!8�qy�[�N��iaO�����t�/bt
��O��f�u�I𑷲ܩ�xTJT#�'��:;�̷\rU��Q�c\0u'̈́�h_x�u>.Q��b9�+;%	�{�4��s�oH�D��@�^���\�
8,��F?�G,\`�9��4��w&YK�uZ�͗Y��5_X�`�����R�i7�q��.P�Ѥ�OI2pл�Έ�P�^`��75X�U��l��SD�R�Ɂ�c�A
x���OJ�y���xڭ�c���x�b(��D0H<��Ĳ��10��"�Ej::@���b��c���MU��euB��0��ً����+`饬������4꾳�@C���G�7��?����I�Y�ȃE+�n�Xw��#2=��C����@j���qx���OHp�������+\l��7d'�Q9�(TfX� �e\�ʝ��i����Q.�s���`#y�m�M����	p���x��0��(Bn�jݸ���5��#1�4��E���y~��!�
gpsOI�:�в���R(����ы8�
�;���"D�dߒ���Ũ#M��+3�2�ލ���LC�.�R�W����'��~۬irL��D��/8�+H@>ߔ|sJ�m��w=M~ 
���v�� PbwD�|��7a�;r�������-�?�>o��[0�j�KB�k[�b�iI�<�"xN9l�P�"�����O���+[��k9�6�Q�]�l�b�zsFO��I�\�A�1;b����(�#�f�[VL����R08juO��x�%��Wc�	�110X�g�U)|#�Uw0$۠���XdCPQ1Y8)HӾ[�[&�����_A	�F~����v��uV���I�@GPg�U>>@�$��.���rZ*���d��_Co�QAp���I�X���J� �K��r��DZ$�cW�C;�F>���
3>k��IzBe�(�`-
�!���h��թ0�E̏�P�6�[���MgN����+�Є��fG��
�h��e��Tr_�%}㷶���� ��	!�լ��� ��_S���#	@��,� ��h�ԧe�uv��,� R��HE	���	YQ�SM��r�L?Um����!��o;o�|v�J>�u7!�X�4��ьs ��|>E+���pR`a�>����	O�߰O(+dpq�}�j�QI[Ps[�Z�)U|jf��E�,��Pܑ����+�v�c�C����K*�j��A��4�Q��4�b9)��:    䝓	N�KV��4c�C�d[��T��OB�JDa��"�9���þ-UJ�+�� �����i;r�ҖY�{u�[Y���U�g*��, �.:�v ���kZZ`v
 �&�
*f���`X�c2I���ĴR�B���1���Ȝ�Z
;��T��Az0��⁚�2V�.�����cR�!�)*s��M�/�%'-T��}Bu.�FCA��
�k��6.X�\���_Q
��[��%IJt̌p��eo�C�S�~J��YZ+��˨�3�%)�ܾD�|J�"�k��&TF��_@x�uWm�U�H�DS�׭�>�������)�������rY	?�.y\d��2���Ġ,@@�I��k8��mwO%N�jw���g�W����u�aT$E����K�:@��9V�n��U>���8��@��S(K���qRj�b�B�C���	V���g$�������\ipP@�B0�x���V�4Z C
��jY�����&��{6˛|՘2��O��$<E�t�V��U���[���M�����sX�ʡ�n���3~�k���Q��ZKV&�F2N�k��I��F�CM�hWRW��d��7�聁�yl���\�P/'\U���g�>�%��s;=BD*���%.�/������]�G][5:�g^6������	p�Ÿ5"�9��,F����)���&y�f�
�N��A_?�5K��vv �|^�����u�Y�3�`��Z�.,ĮM���H����7E�eZs����PzY~S��)��ȕֺ�J��-��;� ^`'
��z���E ��߶��h`�~>c���o^�!ǢK��C���m��w�X/ �ɕ�g#۴���樃D����%������N���'�(j��(��TxD����޶9FZ��I@G�������p�ԓ9�zB�|4�v��a{�L&;�u/#���vg�v&5.����91��E��-"��|�4^�(�^㊪��l�NZ�6S�\��djB�/���P.eh�sI[�x1�����C)���L62���U? |�_��:@��AY�.�Je�T��(��8 ���cb��򁽕j#{$���*���^`���F�Ru���Wu0T�+�/rA
I(n� !I� ���`<�B���ΗY�;�����;>F��[�ىZ�ֻ��W�0j^�G��(Zk9�üIц:�Y"���3狕�i.�ZbЀ����n��	��1��C�^��ҡD_^��I�Ŭ~��X����	c!�ʣ�$֦�*-bxg";�v����÷D�[�g�l��
,�*���8JS�MVMp������i�c���-*�fd�ޭ�@�:�0�˘o�������u.k�|�R�� )�
R�ɦU��`��Ӱ�D�@L����׳�[����Tާ�c>�冏��N�IUM�U� �/���͌�����|-DT�8>��i��V����z�h5�˅��r�
b��,��Vx[�o�/I�f4�b�?�B=�q.gg�# �k�1}����P>�'��>to����P(3.7j|��kr."�*��-��1O۾<����k���<:�n�:˰�c,�@9�yK���G�l�Re�^��V�!@A]~y/ђk��	���e!
�\*�鬪y��^��[�ZQӣ�62�Ŷf��:�#�V�� ��=qM�n������ʩ��%jip�p%8\͋�a�9�J�s�Rۚ*�%n��YG�-�)95VO�[���5�G$�WS{�[�z#q�d�A}�4X;*KO#:�d�CR��Bg��@݊"���"��'k�����ǳ�7g�3#�n�[�#
V�j�IyK�K��$�v��x�%�D��n�5�^E`���>��li�I�T��'�.��ZP��<�
�X.ېbM�^�]�4�u֣&�[�jK������e�V�X������Z�d�T�2邦�S��G�-8�~��rb��h���A9�\6��$�i<%B��Z�G���`���v������w�:(��܅�^eymZ*�3�1$�|.r=ѱx�M_H�ߙ�jI���I��0�er������`ؖ%�ef�j"#�]�� ��W`N/iRgJ
�i�,�/�&���\rb��@�t�Si[=����P>�q�,���>'���tA��Xo�
�:�!e���62�H�����\��T��[R
_l(}�R���E)a�x����>h��Mu��4�yb���ts�̱i�!����dm�%��5�����R|B�Њ�%������{���z�`�i�B�C?' �j7솝���3�vz����]��� �/���h1
,������N[��l;��9V��d��W���L�4��EVtZ��[:^7%�j���7�)YB%�����hzoz�d��nC-�B��ʒi�0S1Wdv9�К�3~a�O��g<Q犼.�nILv"��7ɭ�S�SW"v���Qr^��d>�`��BW��O�0�H�#;F�`<�����ݝ���,9r�l���&���y�@��
�@o��f(�;�+=�]0-�ݱ���
��7��a�i�v�
�3��h�v��`}��������-��|(��fԖ��HN��$�W�Q7���i�2:�
3�u{��	v&�~N��/n�C�fT��@~&�g,������ы���T�aR��0S@n��l��y��,�>1h@�J�PL�mX���_�Dz6�DfM)��s�*��5iA��!�z;[CԮ%��n#���֬��8���
ؽ[Ǭ�7�c���>�f�<;j�޵��^'G�xU�1e�H��zW0�6�"���?4�NA%����f�iw v4ѻp���\��6�{f��^/gn�5t%Ԧlʾf%�<l�:I���5"�2x4T��
�S�_�o�_t���C~�n�������x��~
�d	������T�mB�w�Mo�uZw��ж@s���J��~�[n�����2�EvN����L���̉WѠ� �M�^/]�H���o���}ʲ5���/�>&���L�h��?�E�YJp���w �(*3Z�_շ�Sat����x ��9S8!�Ν$G�Ҷ�Rn�`Tnx�
�.VJ��[v��ǴR��0 ���%��VN��F��Y�q���v�{�����S�2��?��Z^+R��h�Ո��2��=ό�6��ʠf���EK�����kV����jj��ء�Bm×�${����l��j6-�Ð&�B*�e���-P����2�|�6$� � ��ڪ)�L�A������i`������u]fŞ�e
�m�/�:q��Vay��XC8�@3H8!��T�;����I}U�Xz�3��P@�w��S3US���u��ܥ��aBX��m������<�4qS�S�ck�+5�b��B='���ng�7�לy�9z��iz�����[io�(���o56W9B�/��qum�r(�!��t�]�u�b+�5B�{�k���&�ގzy�ؔ,z��1�[���J% sZ��j�q睲V�B�䅞��V�V�ˤ����H�^���8͠�婰��ud�I���Mj�u��{�oEo�:l�V����f�Bw����A�.H��L�4�x0ȥ����0�ʀ�@�X5}tR�f�ԋV�-
ʤ����k��~��0ߦ� �c�7*3b�z�!"D�yܮ`tXh���f=wІ���1ʧy�7�|#�/m����m�"�<m��TI�(��V,mn(�C��Ư	l�9�<�^�6����퓇1P.�X�h�~-��mvP'q�^�]⚕��SC������ɯeM}'\�[�{��&ggQ��o�i㗾F����X�� hk�OB���@�o�����s4T( ��=��݆��L���X��<�Rj��ǀ�(��=K-o�7َ4av{���t�]��11��4cui��:N��bb�\/�MӬˣ0}%ԕ�Y9]�~��W
���+��*C��.�� �祼�jPM4'� 8�3G�;���8A�,
U��7|�d��j䘘��>�2�Az֬�7������Uo� d?㤚�1�I/̓B����	f���?��� Y  Y�o��Wk.l�k�{���k�P��L���0�
�{�D�_V��ױ��� _���V
�s�&�]���c/�C4|u��m�/=3� r�F��S���|t��ѳ5�4�O!)K�e�#��X�_JfA�n,��A(L3��+��<����W�M�-��`$�=��Wk;��x;�|
�rb����("��_?�d��#���Ul�}C��T#��H�o���
����'`z���r�,�� �d��if�}��0W;~�FU!#R׽�K6��;�ȃ�QH癷:,�g*�^��lխz�����د�l��L{Y�lp��+�������=�\c�����MMN#��_�f�Ȃ�yRʜDOi�<�<	sI[�/2��$�m�eC�W�R�f��@�a���$��;��r��`Y�R'0�w(b�`H���˚���[/�S�I�W��_���U'uG����$}c��H�u��j�U<i������"���1�ͣ����0	�	M��y��Ɣ�tW:<��E���۱61���J9jP�:Dh'
�o�
���R�
u?�۬�R��%���6�sYZ��;��i^��b����T����O٩�6���#��G� _�埿��!��N�.�5"���5>�cd�w�H����� �|9ȍ�8G�f��[�u�os�R�����*���aX>p.�j�
 ��>4m��9�=���fAGl�>t��1ِ2�q�05�畡��I����f����v+�> ��CO��ӛ���~�öO�=%���t|KB�τ�2������~���խn���p�+k�(�1�y�~��o����RV�U(�(���t(7����?���,��
      $   �  x�UU�r�6|>�
��:��lW��؉�J����l!&����#}}@T4z�Ź�.ܺ��%�އ]�h�	��)�+���P�I�Qz��)6Xr�~�Wt:�BW��;*Z���#w��X�����N鄗������ۂI�vE�Q�h���W
փ�����Og8S���Ǉ��	g�	���>G����C%h`mլ�"�w�%��QΆ4,+�f
�I�,�>���{������8+=�s�61��ᄌ[;�������EM�;�$
�p=�{r�k�+�ijN��
4�|����|;�u�+ömJO�ç��mo�Ӳ��k2Y�G���Ź��q��vo�]%t9FK�BF&Ix�[wDm��p�
Vzi�("�u�W}��
iQ��B�(s��4����(��bd��k�.FA��e,#	�Y"��/�����8�{#V�e��P4�|�n�q�/��$H^ԍ�b��NdŢl�fo���&�vAB��RD�A��,[ųƖp�ɇC�+�M)"���yU�������v�/�o@�-j��D^��\�j8L�S�����ғL֛����ȝ~v�T)/oV��򹌄�8�p�h�~�jpՂ2��Ԟ;g����%�;���Li44�/���)
l���{y��:34]��nn���|Q؏n<���)��/��,��Y�M�!�a_�K>��vq�k�P�$�R��fr/6D�[��4槮�L!��"E��?9�wع�#ƥ5
��kK	�1�׆�f���ǋb�,"h)��R4Tul�i�-�r���lDt{�B<T�3z��is�\8���uj
����.Z��&ro�K� �=��ʼbtݺw��s<���m�^���`l.�����2i�~i�P0�rp�����)4�u���u�]ݯ`�,�4��Z�ލ>Ж?�]����pjM�<�6��+�#:��
0J�o�N�:����]]]�����      (     x�uT[��0�VN�� ���?m^�taI�E���#����Ҙ�Ŧ�G9�6����8⼧aOŒ�\*�Ι��!�M@Mr���ֹY��͜om<�P����D�
(����Ǐ�R�di���%��,�
���~��k0�A�p2��w9mE�g������4�k�9�g�8�>X�,��(��Q��>�[���'�bWG
�d��h������S�� ��$(�-[��W�'���̓h��{�"B%B�_Ѝ��-��A7l��FQ��2P+.y�*c����ߣ@f��#�Ӝ�S
��|C����MA�4�(>G #�Rn�n"�e�K@,2'2]�qaW�P�V�v��]`�eWh�Uд��.�Ű*~g�'1s�lM%B0ib}G�H[��D���'S�x���i$��Ԇ���P�5����,+Jv+W�'y��e����lH8%�ӕ_l��5[�q+š�l�YP#�OL�����>�p;d%<̽��SZ�k��DY�TY}
���lι�A˦X���������,�+<     