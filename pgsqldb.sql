PGDMP     3                    y            postgres    9.6.21    9.6.21 #    i           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            j           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            k           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            l           1262    12401    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE postgres;
             postgres    false            m           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2156                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            n           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    7            o           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    7                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            p           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            q           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    16434 
   task_study    TABLE       CREATE TABLE public.task_study (
    study_id bigint NOT NULL,
    study_name character varying(255),
    study_decription character varying(255),
    study_count character varying(255),
    study_limit smallint,
    study_total_percentage smallint,
    user_id integer
);
    DROP TABLE public.task_study;
       public         postgres    false    7            �            1259    16472    task_study_details    TABLE     �   CREATE TABLE public.task_study_details (
    study_details_id smallint NOT NULL,
    study_id bigint,
    study_percent smallint,
    study_notes character varying(255)
);
 &   DROP TABLE public.task_study_details;
       public         postgres    false    7            �            1259    16470 '   task_study_details_study_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.task_study_details_study_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.task_study_details_study_details_id_seq;
       public       postgres    false    191    7            r           0    0 '   task_study_details_study_details_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.task_study_details_study_details_id_seq OWNED BY public.task_study_details.study_details_id;
            public       postgres    false    190            �            1259    16432    task_study_study_id_seq    SEQUENCE     �   CREATE SEQUENCE public.task_study_study_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.task_study_study_id_seq;
       public       postgres    false    189    7            s           0    0    task_study_study_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.task_study_study_id_seq OWNED BY public.task_study.study_id;
            public       postgres    false    188            �            1259    16421 	   user_info    TABLE     �   CREATE TABLE public.user_info (
    user_id bigint NOT NULL,
    user_name character varying(255) NOT NULL,
    user_password character varying(255) NOT NULL
);
    DROP TABLE public.user_info;
       public         postgres    false    7            �            1259    16419    user_info_user_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.user_info_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.user_info_user_id_seq;
       public       postgres    false    187    7            t           0    0    user_info_user_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.user_info_user_id_seq OWNED BY public.user_info.user_id;
            public       postgres    false    186            �           2604    16437    task_study study_id    DEFAULT     z   ALTER TABLE ONLY public.task_study ALTER COLUMN study_id SET DEFAULT nextval('public.task_study_study_id_seq'::regclass);
 B   ALTER TABLE public.task_study ALTER COLUMN study_id DROP DEFAULT;
       public       postgres    false    188    189    189            �           2604    16475 #   task_study_details study_details_id    DEFAULT     �   ALTER TABLE ONLY public.task_study_details ALTER COLUMN study_details_id SET DEFAULT nextval('public.task_study_details_study_details_id_seq'::regclass);
 R   ALTER TABLE public.task_study_details ALTER COLUMN study_details_id DROP DEFAULT;
       public       postgres    false    190    191    191            �           2604    16424    user_info user_id    DEFAULT     v   ALTER TABLE ONLY public.user_info ALTER COLUMN user_id SET DEFAULT nextval('public.user_info_user_id_seq'::regclass);
 @   ALTER TABLE public.user_info ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    187    186    187            d          0    16434 
   task_study 
   TABLE DATA                     public       postgres    false    189   �#       f          0    16472    task_study_details 
   TABLE DATA                     public       postgres    false    191   �#       u           0    0 '   task_study_details_study_details_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.task_study_details_study_details_id_seq', 1, false);
            public       postgres    false    190            v           0    0    task_study_study_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.task_study_study_id_seq', 1, false);
            public       postgres    false    188            b          0    16421 	   user_info 
   TABLE DATA                     public       postgres    false    187   $       w           0    0    user_info_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.user_info_user_id_seq', 4, true);
            public       postgres    false    186            �           2606    16477 *   task_study_details task_study_details_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.task_study_details
    ADD CONSTRAINT task_study_details_pkey PRIMARY KEY (study_details_id);
 T   ALTER TABLE ONLY public.task_study_details DROP CONSTRAINT task_study_details_pkey;
       public         postgres    false    191    191            �           2606    16442    task_study task_study_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.task_study
    ADD CONSTRAINT task_study_pkey PRIMARY KEY (study_id);
 D   ALTER TABLE ONLY public.task_study DROP CONSTRAINT task_study_pkey;
       public         postgres    false    189    189            �           2606    16431    user_info unq_username 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT unq_username UNIQUE (user_name);
 @   ALTER TABLE ONLY public.user_info DROP CONSTRAINT unq_username;
       public         postgres    false    187    187            �           2606    16429    user_info user_info_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);
 B   ALTER TABLE ONLY public.user_info DROP CONSTRAINT user_info_pkey;
       public         postgres    false    187    187            �           2606    16451    task_study tuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_study
    ADD CONSTRAINT tuser_id FOREIGN KEY (user_id) REFERENCES public.user_info(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.task_study DROP CONSTRAINT tuser_id;
       public       postgres    false    189    2022    187            d   
   x���          f   
   x���          b   p   x���v
Q���W((M��L�+-N-���K�WЀ0St�����T(� ���<�(ES!��'�5XA�HGA=#SD�g�kZsyR�dc��%��%.�%� ��45-0A���.. t]     