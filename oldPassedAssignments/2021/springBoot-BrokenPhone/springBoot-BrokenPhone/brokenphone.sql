PGDMP     2    /                y            brokenphone    12.0    12.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    25247    brokenphone    DATABASE     �   CREATE DATABASE brokenphone WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE brokenphone;
                postgres    false            �            1259    25253    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    25248    message    TABLE     �   CREATE TABLE public.message (
    id bigint NOT NULL,
    creation_date timestamp without time zone,
    text character varying(255)
);
    DROP TABLE public.message;
       public         heap    postgres    false            �            1259    25263    spring_session    TABLE     6  CREATE TABLE public.spring_session (
    primary_id character(36) NOT NULL,
    session_id character(36) NOT NULL,
    creation_time bigint NOT NULL,
    last_access_time bigint NOT NULL,
    max_inactive_interval integer NOT NULL,
    expiry_time bigint NOT NULL,
    principal_name character varying(300)
);
 "   DROP TABLE public.spring_session;
       public         heap    postgres    false            �            1259    25271    spring_session_attributes    TABLE     �   CREATE TABLE public.spring_session_attributes (
    session_primary_id character(36) NOT NULL,
    attribute_name character varying(200) NOT NULL,
    attribute_bytes bytea NOT NULL
);
 -   DROP TABLE public.spring_session_attributes;
       public         heap    postgres    false            �            1259    25255    usr    TABLE       CREATE TABLE public.usr (
    id character varying(255) NOT NULL,
    email character varying(255),
    gender character varying(255),
    last_visit timestamp without time zone,
    locale character varying(255),
    name character varying(255),
    userpic character varying(255)
);
    DROP TABLE public.usr;
       public         heap    postgres    false                      0    25248    message 
   TABLE DATA           :   COPY public.message (id, creation_date, text) FROM stdin;
    public          postgres    false    202   �                 0    25263    spring_session 
   TABLE DATA           �   COPY public.spring_session (primary_id, session_id, creation_time, last_access_time, max_inactive_interval, expiry_time, principal_name) FROM stdin;
    public          postgres    false    205   �                 0    25271    spring_session_attributes 
   TABLE DATA           h   COPY public.spring_session_attributes (session_primary_id, attribute_name, attribute_bytes) FROM stdin;
    public          postgres    false    206                    0    25255    usr 
   TABLE DATA           S   COPY public.usr (id, email, gender, last_visit, locale, name, userpic) FROM stdin;
    public          postgres    false    204   #.       "           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 16, true);
          public          postgres    false    203            �
           2606    25252    message message_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pkey;
       public            postgres    false    202            �
           2606    25278 6   spring_session_attributes spring_session_attributes_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_pk PRIMARY KEY (session_primary_id, attribute_name);
 `   ALTER TABLE ONLY public.spring_session_attributes DROP CONSTRAINT spring_session_attributes_pk;
       public            postgres    false    206    206            �
           2606    25267     spring_session spring_session_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.spring_session
    ADD CONSTRAINT spring_session_pk PRIMARY KEY (primary_id);
 J   ALTER TABLE ONLY public.spring_session DROP CONSTRAINT spring_session_pk;
       public            postgres    false    205            �
           2606    25262    usr usr_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.usr DROP CONSTRAINT usr_pkey;
       public            postgres    false    204            �
           1259    25268    spring_session_ix1    INDEX     Z   CREATE UNIQUE INDEX spring_session_ix1 ON public.spring_session USING btree (session_id);
 &   DROP INDEX public.spring_session_ix1;
       public            postgres    false    205            �
           1259    25269    spring_session_ix2    INDEX     T   CREATE INDEX spring_session_ix2 ON public.spring_session USING btree (expiry_time);
 &   DROP INDEX public.spring_session_ix2;
       public            postgres    false    205            �
           1259    25270    spring_session_ix3    INDEX     W   CREATE INDEX spring_session_ix3 ON public.spring_session USING btree (principal_name);
 &   DROP INDEX public.spring_session_ix3;
       public            postgres    false    205            �
           2606    25279 6   spring_session_attributes spring_session_attributes_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_fk FOREIGN KEY (session_primary_id) REFERENCES public.spring_session(primary_id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.spring_session_attributes DROP CONSTRAINT spring_session_attributes_fk;
       public          postgres    false    205    206    2709               �   x�e�1�0�99E�i�q��܀�������X��B'NP!�WpnD�`Y���l@�A�e����eN91u�Nռݮ&�Z���Rl�^5a�[�C��?%�	�"�&��݆/�`5x��)�<�n���x�kJ=|�(U<��O|�Q��\r�
*o��љB�%�3�K��'9rV.�����T�         L  x�5�=N�@�k|
� y��y^�#Y
""	R�Yol�N��@����!@���7�J���H�p΄�(TT!�
��\#�Ռi !����9�h"F ���EZc�cX��!�B�T@	���|@��G�ZW�YL�P
 A
�)q�B.ud>�O�f���6��k�l>ͮ{1������+V��ҦY���S�&e��z免htѸ�\zyg7)�a�O[t��������f��&��jtu���v���~�Fuȑrl��Y-�j&�r#�M~��Ѿձ]ĺ��6�;/��uT��)��.��&ڏ���p�a��nH����ĺw-���{            x��[ێ丑}v���S|~���0(�Z0<ƺ���� u�Teev�����:�EF�r"H9��Z�&S�q��or��l��ɴ�����������}�����h����_>��_>�|��?�#�V�R>�h�r>,фh�
�Rh!\:��c��3�l��]�|a	m&kв��iZt�9�o��C��-n����}�'晢Se6�٠g���@������X��j������\<,����xX��Uf9Q}9��I�6��y�+� �;����Һ�{�۬��	j:��r@�Z@_F+�19W
#V\Sv�*��7��f��#����Rg���%�I���hG:��V�o��R�mږE�4�>��Vo�g�pH��9/� �a������W����Y��p�=��J�ũ��Ym��B'5�᳠x�������ӮSb�m4к9�un�}�3���拆,j�e��Ϸ��Q��p��8����4��*�\t��je1�qA��p@���`|����U恲p�+�?:F5��f��.(q�`˸�fJ+�����)��[�cv�j��N�3�
�+��ۀvv�CE��{@�,���[��)F\���଼�r_���7Xa3���O�=��<�`�l�~��:ɀ��<$޹��X�\�^���t�F�"l���}�Ƃ�`��@m��C�X�*|$a=8Bs* -�o��\VpC��Y1v��k�@C`Rs΀ؓנ����~������O��/��j��a%�~Z��sM芞�ڝ��礿�Fc5)�������r�'��|a2�/��)��/j!����:��Vh/��|�/�F�Qa{��=3�5�:H�\��m�C>��CN��܅���y>C�V�,���G��4�R��A������*܁/���Z-";��g�(���<�֡�����w�Wփ��GkJ!#t "`tH����!AJ��)�D+M`��x3r�"v��A���8��~��[�]1X���J����z�'�F�>���,�ȧ&?�߉���ĕ��A%��B���'��^O� I@�X�8�AM"SM}���3|2T���*��+�q�ωm�)���M�4��������z����0����X�}xk�ȸe-�2�8m˶�ce�Ė�w�GP�9徭���w�Q��ݯ0j� ��G����X�`��V��`�ء�-����"��ܧ8�fb'1���.([�9ؐAԁ�f������ې}pD�X�c�/(2v�؆�;�����v����1��� Q�}X��՞i��Dh�&�]W�F��& azN����)�4]�&:S�����88 ��ɱ�	@!�\xr�1?q%(�D# �C�"�ao, �++��\�$�<�D�@�'˥&]�!���~��g����6��zZ��Z�BOKo�4cM�8�;�K����#�r�HŃ�b���4�R�B�&h�F��� �0� �Bd�ED���}в��Dhk��աc���� #�
xMAXޭ C#8�(�1�H�Y��!SS��"m��	�Gd�A�㪂X�\ֱ�j�q�|�Y��ҠJ'A�J����᪀[m; �K�I�0��h��4y��[�����}�����51���6��]~�	�
�(��:g�\�l9�`}��q:�"�3fF�L���3Hγ�{Ⳃ|C�E�#	f�k���F�;�@Ie0��9|,���b"Z��}Q`t��.���+0")�l
����@]�@�jh���K�)�J�� A2��� ^P��m���~�Y� �f)�d\X�e���`��^�����﨟h'�b�H��!,�5�A��@��b��3(��/+�C�}xN����0�9�U�����CE�=S��6�g)A�"�,V�}�K ���:�[sy��5R���.�7�c͋4\�sr���� �pzD~��v@l���:�?��bK�}�&}�̮��6Wezz�ΉU������#?d�[ՠ�ʉ�K-ڟj� #7� �w��l_�
:��0��q3��uAVO����v�̱�e݇H�s�gHR���_]Kv])�Q��fUz�S�uX
�'v��8q�/a�^������H)��ʊw7�עw�ս���1Z�.�G��8�'����� �C&&mK��͵����
K�8�t��əm�J�>s����
R��"�<��J/P ֩���j'Y)�a+�`���'^�
�i}�����-+m3|�:Kj;Oٖ%g�c}�C��Ɍ2�����3�`��B<�H�?�.cwq�؛yX$�j�?��8�w:ӇyG5֬��4ve�^1"��O�}�M�9{ێ�Lx�+��x�V���ʞ �$N�3��}�����?=,9H;������FO%�Ri�U��>ҁo�#Z���\(�}Z�:Z$�5�jt�V�W�{��<v�����*���c�{O����r����:vY_��[�Rt0�z���oz�i�W���{��:��ޫI0���.��	��)�)��:;���$D`����M\���8����#f�<��h����0<�u��J��u�e�;/��{A�IvW�j�_���F>�R����D�nG�x�??g���Oa�f��Su�s7�B������G(�Y�ϐ�JsЪֈO���;���|�M��=�[�n��������8)02��X�^A�c�ho�#�]�9`7��Ĭ!)wI��4�=��mPq�7��w�������=���;���\��������S2&���ܖ��2R�9��dE��\�W���xАc$�z�L��/�}h�k��}K����/��y%�Bs����4��i��b�{��Wm�w]�8MX��T'R�%�BB}�O�`�B�6��h���;�u����ԛ��W��,~mu�MW�{9��'+�W��mַ���+��VpF���_�k: ���5�ڟ8�֭�i�|}�hx�v�p�E��G���rn$
�R�6�V�
�9��y�'��j�~-�t��l��T���^�*��D8�+����nxh�z:���$�����,��:ͽg��>�Cg��0'��p�ƽ���[���ymgb>�0�c��y-u��,����u�W�ԃj�W���p�jι��'�..J�����Q�d�	Q��_�����e?u����{�\��������w�}��������÷����������i��E��ඕ���Xl�Ǿ�c�n��)Fmj�ְك�=�z�|q(q�|;�x5�����I�{ `R�����ѷ�+�!��7����K��;�k�WI�t����c���v�Y�Tq���i�r!��\���w0Vm�f�05P�T;mv\��nd�����H8�Xx�Dm�8��Z�ql�Ha$�-o�R�Dm��ҕ]��3"��P���$��pw��o��[��V� ���
�|u�5 ��_- u��T�n���8��II�1�C|���)G������+��Xy\�;�ޒb�����xl�<���{@3�56���}�'<����.=rll)�.�ͮ|�͢�CJ�kZ��Zķ9��c�^���|�)[O���,�]��#�������^��8ֶߦ�V�l~�O�b�=�x��fX���0J��w4�z>jsO����i32/��_xL��8<��m�BԘj'@Qo���Y����C/^#�<zC��k|����}$�'<�҆�ס���-V�晔��X���-�^�-��*�l��4e�~�
�,�＞�;��k6�_�D~��:�<(�A�Y�>��S��Q]ZP�ի���������/ЕQ��1 /f�`���s=�8K��~Zw����C��npX��A�ȹ�jx�ù<fKK�r�^h�`��Qr����^(��ZY�g	��'�4K~XQ�%�ꈃ:o�G,�c�[��˞��1P���'v����`���3'dWwi�w��g{�J]'�)�n+4�JOK�'u8b�����w�Q�Km�����}��@�������~Ob���j�jo��'>�0���d�{" �  zE��F�1fA_`ٴqŜG�3�=:珫H�}_��^n�h��a��z��a��EWe�~���AP�&&T��N�w� ��`'H3ẑ7�eY>]�J��y�|�ʤ�JW,��}ּ�����Ϟ{e��4�GV�j䱉B?�	�x~
��ٙ#����D�7����T�O�Dn?����	h�:y�
�e�P2_��|�
i�K���2�#P���F�m'>7�o�/"c��E�ºDȎG|8�h�x0Wf�R�&FU�a���G8�������>&퇌Y�7�����@�>�%�v����S\_��9V�����e//���:y	D;d̃���uR!�GsJ"[���d�B6|w?47cM0�jt*}c����$���o�x9�L�;�;m������q�o>�QgJ'�����%rX_����i�k��y����S����s��5e߰5zU�m�exI��	�T�Ƹi6=���e��傁��%�ȱ�/�tM� /��Ѯ?���O�>��{�         �  x����J�P���U�������Sf�i,�H[IC̩M�O;��v�`s	Ru�^���H]�0n?x>��D�M���;ZUDy%Q�ǋ`��a��NF��u`. 9&�A-���Z�eyY���Hb�Y'Qs���Ҳye�獎=]}��?��Ù���7:H'
�88�}��i���6� �Z{aJ)��il�y�O�2[�2�H�6�� \D]�L�	�q������u�6�������n�f{��՝��O�ayC	����h��H2tv�[�f��������p%e�^�\�U �)p���z{�@v���L��Rp�0k�s�pS;?��w�_��Xvh���=�::����$�#|2��d�/�!������j�^ ��     