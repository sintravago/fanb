PGDMP     '    ;                 x        	   pycaejerb    9.6.16    11.2    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �	           1262    16385 	   pycaejerb    DATABASE     {   CREATE DATABASE pycaejerb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_VE.UTF-8' LC_CTYPE = 'es_VE.UTF-8';
    DROP DATABASE pycaejerb;
             pyuser    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    16417 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         pyuser    false    3            �            1259    16415    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       pyuser    false    3    192            �	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       pyuser    false    191            �            1259    16427    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         pyuser    false    3            �            1259    16425    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       pyuser    false    3    194            �	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       pyuser    false    193            �            1259    16409    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         pyuser    false    3            �            1259    16407    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       pyuser    false    3    190            �	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       pyuser    false    189            �            1259    16435 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         pyuser    false    3            �            1259    16445    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         pyuser    false    3            �            1259    16443    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       pyuser    false    198    3            �	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       pyuser    false    197            �            1259    16433    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       pyuser    false    196    3            �	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       pyuser    false    195            �            1259    16453    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         pyuser    false    3            �            1259    16451 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       pyuser    false    3    200            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       pyuser    false    199            �            1259    16546 	   core_menu    TABLE     �   CREATE TABLE public.core_menu (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    description text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
    DROP TABLE public.core_menu;
       public         pyuser    false    3            �            1259    16544    core_menu_id_seq    SEQUENCE     y   CREATE SEQUENCE public.core_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_menu_id_seq;
       public       pyuser    false    204    3            �	           0    0    core_menu_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_menu_id_seq OWNED BY public.core_menu.id;
            public       pyuser    false    203            �            1259    16658    core_nosotros    TABLE     �   CREATE TABLE public.core_nosotros (
    id integer NOT NULL,
    description text NOT NULL,
    mision text,
    vision text,
    updated timestamp with time zone NOT NULL,
    logo character varying(100)
);
 !   DROP TABLE public.core_nosotros;
       public         pyuser    false    3            �            1259    16656    core_nosotros_id_seq    SEQUENCE     }   CREATE SEQUENCE public.core_nosotros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.core_nosotros_id_seq;
       public       pyuser    false    217    3            �	           0    0    core_nosotros_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.core_nosotros_id_seq OWNED BY public.core_nosotros.id;
            public       pyuser    false    216            �            1259    24834    core_publidad    TABLE     �   CREATE TABLE public.core_publidad (
    id integer NOT NULL,
    banner character varying(100),
    enlace character varying(200),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 !   DROP TABLE public.core_publidad;
       public         pyuser    false    3            �            1259    24832    core_publidad_id_seq    SEQUENCE     }   CREATE SEQUENCE public.core_publidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.core_publidad_id_seq;
       public       pyuser    false    219    3            �	           0    0    core_publidad_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.core_publidad_id_seq OWNED BY public.core_publidad.id;
            public       pyuser    false    218            �            1259    16513    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         pyuser    false    3            �            1259    16511    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       pyuser    false    202    3            �	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       pyuser    false    201            �            1259    16399    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         pyuser    false    3            �            1259    16397    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       pyuser    false    188    3            �	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       pyuser    false    187            �            1259    16388    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         pyuser    false    3            �            1259    16386    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       pyuser    false    186    3            �	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       pyuser    false    185            �            1259    16623    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         pyuser    false    3            �            1259    16647    empresas_empresa    TABLE     V  CREATE TABLE public.empresas_empresa (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    logo character varying(100),
    description text NOT NULL,
    mision text,
    vision text,
    estruc_org text,
    producto text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.empresas_empresa;
       public         pyuser    false    3            �            1259    16645    empresas_empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresas_empresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.empresas_empresa_id_seq;
       public       pyuser    false    215    3            �	           0    0    empresas_empresa_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.empresas_empresa_id_seq OWNED BY public.empresas_empresa.id;
            public       pyuser    false    214            �            1259    16557    news_category    TABLE     �   CREATE TABLE public.news_category (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    description text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 !   DROP TABLE public.news_category;
       public         pyuser    false    3            �            1259    16555    news_category_id_seq    SEQUENCE     }   CREATE SEQUENCE public.news_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.news_category_id_seq;
       public       pyuser    false    206    3            �	           0    0    news_category_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.news_category_id_seq OWNED BY public.news_category.id;
            public       pyuser    false    205            �            1259    16568    news_new    TABLE     $  CREATE TABLE public.news_new (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    description text NOT NULL,
    image character varying(100),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);
    DROP TABLE public.news_new;
       public         pyuser    false    3            �            1259    16579    news_new_category    TABLE     �   CREATE TABLE public.news_new_category (
    id integer NOT NULL,
    new_id integer NOT NULL,
    category_id integer NOT NULL
);
 %   DROP TABLE public.news_new_category;
       public         pyuser    false    3            �            1259    16577    news_new_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_new_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.news_new_category_id_seq;
       public       pyuser    false    210    3            �	           0    0    news_new_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.news_new_category_id_seq OWNED BY public.news_new_category.id;
            public       pyuser    false    209            �            1259    16566    news_new_id_seq    SEQUENCE     x   CREATE SEQUENCE public.news_new_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.news_new_id_seq;
       public       pyuser    false    208    3            �	           0    0    news_new_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.news_new_id_seq OWNED BY public.news_new.id;
            public       pyuser    false    207            �            1259    16607    registration_profile    TABLE     3  CREATE TABLE public.registration_profile (
    id integer NOT NULL,
    cedula integer NOT NULL,
    avatar character varying(100),
    bio text,
    link character varying(200),
    tlf character varying(31),
    nacimiento date NOT NULL,
    user_id integer NOT NULL,
    nombre character varying(150)
);
 (   DROP TABLE public.registration_profile;
       public         pyuser    false    3            �            1259    16605    registration_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.registration_profile_id_seq;
       public       pyuser    false    212    3            �	           0    0    registration_profile_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.registration_profile_id_seq OWNED BY public.registration_profile.id;
            public       pyuser    false    211            �            1259    41218    servicios_banco    TABLE     m   CREATE TABLE public.servicios_banco (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 #   DROP TABLE public.servicios_banco;
       public         pyuser    false    3            �            1259    41216    servicios_banco_id_seq    SEQUENCE        CREATE SEQUENCE public.servicios_banco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.servicios_banco_id_seq;
       public       pyuser    false    3    221            �	           0    0    servicios_banco_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.servicios_banco_id_seq OWNED BY public.servicios_banco.id;
            public       pyuser    false    220            �            1259    41226    servicios_capacidadpago    TABLE     u   CREATE TABLE public.servicios_capacidadpago (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 +   DROP TABLE public.servicios_capacidadpago;
       public         pyuser    false    3            �            1259    41224    servicios_capacidadpago_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_capacidadpago_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.servicios_capacidadpago_id_seq;
       public       pyuser    false    223    3            �	           0    0    servicios_capacidadpago_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.servicios_capacidadpago_id_seq OWNED BY public.servicios_capacidadpago.id;
            public       pyuser    false    222            �            1259    41242    servicios_opinion    TABLE     o   CREATE TABLE public.servicios_opinion (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 %   DROP TABLE public.servicios_opinion;
       public         pyuser    false    3            �            1259    41240    servicios_opinion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_opinion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicios_opinion_id_seq;
       public       pyuser    false    3    225            �	           0    0    servicios_opinion_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicios_opinion_id_seq OWNED BY public.servicios_opinion.id;
            public       pyuser    false    224            �            1259    41250    servicios_plazoordinario    TABLE     v   CREATE TABLE public.servicios_plazoordinario (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 ,   DROP TABLE public.servicios_plazoordinario;
       public         pyuser    false    3            �            1259    41248    servicios_plazoordinario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_plazoordinario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.servicios_plazoordinario_id_seq;
       public       pyuser    false    3    227            �	           0    0    servicios_plazoordinario_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.servicios_plazoordinario_id_seq OWNED BY public.servicios_plazoordinario.id;
            public       pyuser    false    226            �            1259    41258    servicios_plazotienda    TABLE     s   CREATE TABLE public.servicios_plazotienda (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 )   DROP TABLE public.servicios_plazotienda;
       public         pyuser    false    3            �            1259    41256    servicios_plazotienda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_plazotienda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.servicios_plazotienda_id_seq;
       public       pyuser    false    3    229            �	           0    0    servicios_plazotienda_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.servicios_plazotienda_id_seq OWNED BY public.servicios_plazotienda.id;
            public       pyuser    false    228            �            1259    41290    servicios_prestamoafianzado    TABLE     "  CREATE TABLE public.servicios_prestamoafianzado (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    observaciones1 text,
    observaciones2 text,
    observaciones3 text,
    observaciones4 text,
    user_id integer NOT NULL,
    cedula1 integer NOT NULL,
    cedula2 integer,
    cedula3 integer,
    cedula4 integer,
    ciudad character varying(150) NOT NULL,
    estado character varying(150) NOT NULL,
    grado1 character varying(150) NOT NULL,
    grado2 character varying(150),
    grado3 character varying(150),
    grado4 character varying(150),
    monto1 numeric(15,2) NOT NULL,
    monto2 numeric(15,2),
    monto3 numeric(15,2),
    monto4 numeric(15,2),
    nombre1 character varying(150) NOT NULL,
    nombre2 character varying(150),
    nombre3 character varying(150),
    nombre4 character varying(150),
    telefono1 character varying(150) NOT NULL,
    telefono2 character varying(150),
    telefono3 character varying(150),
    telefono4 character varying(150)
);
 /   DROP TABLE public.servicios_prestamoafianzado;
       public         pyuser    false    3            �            1259    41288 "   servicios_prestamoafianzado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_prestamoafianzado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.servicios_prestamoafianzado_id_seq;
       public       pyuser    false    237    3            �	           0    0 "   servicios_prestamoafianzado_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.servicios_prestamoafianzado_id_seq OWNED BY public.servicios_prestamoafianzado.id;
            public       pyuser    false    236            �            1259    41282    servicios_prestamoordinario    TABLE     x  CREATE TABLE public.servicios_prestamoordinario (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    cantidad_letras character varying(150) NOT NULL,
    cantidad_numeros numeric(15,2) NOT NULL,
    cuenta character varying(150) NOT NULL,
    total_haberes numeric(15,2) NOT NULL,
    cantidad_solicitar numeric(15,2) NOT NULL,
    cantidad_aprobada numeric(15,2) NOT NULL,
    banco_id integer NOT NULL,
    capacidad_pago_id integer,
    opinion_analista_id integer,
    opinion_gerente_id integer,
    prestamo_ordinario_id integer NOT NULL,
    tipo_cuenta_id integer NOT NULL,
    user_id integer NOT NULL,
    ciudad character varying(150) NOT NULL,
    estado character varying(150) NOT NULL,
    faxofi character varying(150),
    tlfofi character varying(150),
    unidad character varying(150) NOT NULL
);
 /   DROP TABLE public.servicios_prestamoordinario;
       public         pyuser    false    3            �            1259    41280 "   servicios_prestamoordinario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_prestamoordinario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.servicios_prestamoordinario_id_seq;
       public       pyuser    false    3    235            �	           0    0 "   servicios_prestamoordinario_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.servicios_prestamoordinario_id_seq OWNED BY public.servicios_prestamoordinario.id;
            public       pyuser    false    234            �            1259    41274    servicios_prestamotienda    TABLE     T  CREATE TABLE public.servicios_prestamotienda (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    cantidad_letras character varying(150) NOT NULL,
    cantidad_numeros numeric(15,2) NOT NULL,
    casa_comercial character varying(150),
    total_haberes numeric(15,2) NOT NULL,
    cantidad_solicitar numeric(15,2) NOT NULL,
    cantidad_aprobada numeric(15,2) NOT NULL,
    capacidad_pago_id integer,
    opinion_analista_id integer,
    opinion_gerente_id integer,
    prestamo_tienda_id integer NOT NULL,
    user_id integer NOT NULL,
    ciudad character varying(150) NOT NULL,
    estado character varying(150) NOT NULL,
    faxofi character varying(150),
    tlfofi character varying(150),
    unidad character varying(150) NOT NULL,
    tipo_prestamo_id integer NOT NULL
);
 ,   DROP TABLE public.servicios_prestamotienda;
       public         pyuser    false    3            �            1259    41272    servicios_prestamotienda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_prestamotienda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.servicios_prestamotienda_id_seq;
       public       pyuser    false    233    3            �	           0    0    servicios_prestamotienda_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.servicios_prestamotienda_id_seq OWNED BY public.servicios_prestamotienda.id;
            public       pyuser    false    232            �            1259    41266    servicios_tipocuenta    TABLE     r   CREATE TABLE public.servicios_tipocuenta (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 (   DROP TABLE public.servicios_tipocuenta;
       public         pyuser    false    3            �            1259    41264    servicios_tipocuenta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_tipocuenta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.servicios_tipocuenta_id_seq;
       public       pyuser    false    3    231            �	           0    0    servicios_tipocuenta_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.servicios_tipocuenta_id_seq OWNED BY public.servicios_tipocuenta.id;
            public       pyuser    false    230            �            1259    49750    servicios_tipoprestamo    TABLE     t   CREATE TABLE public.servicios_tipoprestamo (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 *   DROP TABLE public.servicios_tipoprestamo;
       public         pyuser    false    3            �            1259    49748    servicios_tipoprestamo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_tipoprestamo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.servicios_tipoprestamo_id_seq;
       public       pyuser    false    239    3            �	           0    0    servicios_tipoprestamo_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.servicios_tipoprestamo_id_seq OWNED BY public.servicios_tipoprestamo.id;
            public       pyuser    false    238            �           2604    16420    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    191    192    192            �           2604    16430    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    194    193    194            �           2604    16412    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    189    190    190            �           2604    16438    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    195    196    196            �           2604    16448    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    198    197    198            �           2604    16456    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    200    199    200            �           2604    16549    core_menu id    DEFAULT     l   ALTER TABLE ONLY public.core_menu ALTER COLUMN id SET DEFAULT nextval('public.core_menu_id_seq'::regclass);
 ;   ALTER TABLE public.core_menu ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    203    204    204            �           2604    16661    core_nosotros id    DEFAULT     t   ALTER TABLE ONLY public.core_nosotros ALTER COLUMN id SET DEFAULT nextval('public.core_nosotros_id_seq'::regclass);
 ?   ALTER TABLE public.core_nosotros ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    216    217    217            �           2604    24837    core_publidad id    DEFAULT     t   ALTER TABLE ONLY public.core_publidad ALTER COLUMN id SET DEFAULT nextval('public.core_publidad_id_seq'::regclass);
 ?   ALTER TABLE public.core_publidad ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    218    219    219            �           2604    16516    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    202    201    202            �           2604    16402    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    188    187    188            �           2604    16391    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    185    186    186            �           2604    16650    empresas_empresa id    DEFAULT     z   ALTER TABLE ONLY public.empresas_empresa ALTER COLUMN id SET DEFAULT nextval('public.empresas_empresa_id_seq'::regclass);
 B   ALTER TABLE public.empresas_empresa ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    215    214    215            �           2604    16560    news_category id    DEFAULT     t   ALTER TABLE ONLY public.news_category ALTER COLUMN id SET DEFAULT nextval('public.news_category_id_seq'::regclass);
 ?   ALTER TABLE public.news_category ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    205    206    206            �           2604    16571    news_new id    DEFAULT     j   ALTER TABLE ONLY public.news_new ALTER COLUMN id SET DEFAULT nextval('public.news_new_id_seq'::regclass);
 :   ALTER TABLE public.news_new ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    208    207    208            �           2604    16582    news_new_category id    DEFAULT     |   ALTER TABLE ONLY public.news_new_category ALTER COLUMN id SET DEFAULT nextval('public.news_new_category_id_seq'::regclass);
 C   ALTER TABLE public.news_new_category ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    209    210    210            �           2604    16610    registration_profile id    DEFAULT     �   ALTER TABLE ONLY public.registration_profile ALTER COLUMN id SET DEFAULT nextval('public.registration_profile_id_seq'::regclass);
 F   ALTER TABLE public.registration_profile ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    211    212    212            �           2604    41221    servicios_banco id    DEFAULT     x   ALTER TABLE ONLY public.servicios_banco ALTER COLUMN id SET DEFAULT nextval('public.servicios_banco_id_seq'::regclass);
 A   ALTER TABLE public.servicios_banco ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    220    221    221            �           2604    41229    servicios_capacidadpago id    DEFAULT     �   ALTER TABLE ONLY public.servicios_capacidadpago ALTER COLUMN id SET DEFAULT nextval('public.servicios_capacidadpago_id_seq'::regclass);
 I   ALTER TABLE public.servicios_capacidadpago ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    223    222    223            �           2604    41245    servicios_opinion id    DEFAULT     |   ALTER TABLE ONLY public.servicios_opinion ALTER COLUMN id SET DEFAULT nextval('public.servicios_opinion_id_seq'::regclass);
 C   ALTER TABLE public.servicios_opinion ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    225    224    225            �           2604    41253    servicios_plazoordinario id    DEFAULT     �   ALTER TABLE ONLY public.servicios_plazoordinario ALTER COLUMN id SET DEFAULT nextval('public.servicios_plazoordinario_id_seq'::regclass);
 J   ALTER TABLE public.servicios_plazoordinario ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    226    227    227            �           2604    41261    servicios_plazotienda id    DEFAULT     �   ALTER TABLE ONLY public.servicios_plazotienda ALTER COLUMN id SET DEFAULT nextval('public.servicios_plazotienda_id_seq'::regclass);
 G   ALTER TABLE public.servicios_plazotienda ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    228    229    229            �           2604    41293    servicios_prestamoafianzado id    DEFAULT     �   ALTER TABLE ONLY public.servicios_prestamoafianzado ALTER COLUMN id SET DEFAULT nextval('public.servicios_prestamoafianzado_id_seq'::regclass);
 M   ALTER TABLE public.servicios_prestamoafianzado ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    237    236    237            �           2604    41285    servicios_prestamoordinario id    DEFAULT     �   ALTER TABLE ONLY public.servicios_prestamoordinario ALTER COLUMN id SET DEFAULT nextval('public.servicios_prestamoordinario_id_seq'::regclass);
 M   ALTER TABLE public.servicios_prestamoordinario ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    234    235    235            �           2604    41277    servicios_prestamotienda id    DEFAULT     �   ALTER TABLE ONLY public.servicios_prestamotienda ALTER COLUMN id SET DEFAULT nextval('public.servicios_prestamotienda_id_seq'::regclass);
 J   ALTER TABLE public.servicios_prestamotienda ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    233    232    233            �           2604    41269    servicios_tipocuenta id    DEFAULT     �   ALTER TABLE ONLY public.servicios_tipocuenta ALTER COLUMN id SET DEFAULT nextval('public.servicios_tipocuenta_id_seq'::regclass);
 F   ALTER TABLE public.servicios_tipocuenta ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    231    230    231            �           2604    49753    servicios_tipoprestamo id    DEFAULT     �   ALTER TABLE ONLY public.servicios_tipoprestamo ALTER COLUMN id SET DEFAULT nextval('public.servicios_tipoprestamo_id_seq'::regclass);
 H   ALTER TABLE public.servicios_tipoprestamo ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    239    238    239            �	          0    16417 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       pyuser    false    192            �	          0    16427    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       pyuser    false    194            �	          0    16409    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       pyuser    false    190            �	          0    16435 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       pyuser    false    196            �	          0    16445    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       pyuser    false    198            �	          0    16453    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       pyuser    false    200            �	          0    16546 	   core_menu 
   TABLE DATA               L   COPY public.core_menu (id, name, description, created, updated) FROM stdin;
    public       pyuser    false    204            �	          0    16658    core_nosotros 
   TABLE DATA               W   COPY public.core_nosotros (id, description, mision, vision, updated, logo) FROM stdin;
    public       pyuser    false    217            �	          0    24834    core_publidad 
   TABLE DATA               M   COPY public.core_publidad (id, banner, enlace, created, updated) FROM stdin;
    public       pyuser    false    219            �	          0    16513    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       pyuser    false    202            �	          0    16399    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       pyuser    false    188            �	          0    16388    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       pyuser    false    186            �	          0    16623    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       pyuser    false    213            �	          0    16647    empresas_empresa 
   TABLE DATA               �   COPY public.empresas_empresa (id, nombre, logo, description, mision, vision, estruc_org, producto, created, updated) FROM stdin;
    public       pyuser    false    215            �	          0    16557    news_category 
   TABLE DATA               P   COPY public.news_category (id, name, description, created, updated) FROM stdin;
    public       pyuser    false    206            �	          0    16568    news_new 
   TABLE DATA               ^   COPY public.news_new (id, title, description, image, created, updated, author_id) FROM stdin;
    public       pyuser    false    208            �	          0    16579    news_new_category 
   TABLE DATA               D   COPY public.news_new_category (id, new_id, category_id) FROM stdin;
    public       pyuser    false    210            �	          0    16607    registration_profile 
   TABLE DATA               o   COPY public.registration_profile (id, cedula, avatar, bio, link, tlf, nacimiento, user_id, nombre) FROM stdin;
    public       pyuser    false    212            �	          0    41218    servicios_banco 
   TABLE DATA               5   COPY public.servicios_banco (id, nombre) FROM stdin;
    public       pyuser    false    221            �	          0    41226    servicios_capacidadpago 
   TABLE DATA               =   COPY public.servicios_capacidadpago (id, nombre) FROM stdin;
    public       pyuser    false    223            �	          0    41242    servicios_opinion 
   TABLE DATA               7   COPY public.servicios_opinion (id, nombre) FROM stdin;
    public       pyuser    false    225            �	          0    41250    servicios_plazoordinario 
   TABLE DATA               >   COPY public.servicios_plazoordinario (id, nombre) FROM stdin;
    public       pyuser    false    227            �	          0    41258    servicios_plazotienda 
   TABLE DATA               ;   COPY public.servicios_plazotienda (id, nombre) FROM stdin;
    public       pyuser    false    229            �	          0    41290    servicios_prestamoafianzado 
   TABLE DATA               X  COPY public.servicios_prestamoafianzado (id, created, updated, observaciones1, observaciones2, observaciones3, observaciones4, user_id, cedula1, cedula2, cedula3, cedula4, ciudad, estado, grado1, grado2, grado3, grado4, monto1, monto2, monto3, monto4, nombre1, nombre2, nombre3, nombre4, telefono1, telefono2, telefono3, telefono4) FROM stdin;
    public       pyuser    false    237            �	          0    41282    servicios_prestamoordinario 
   TABLE DATA               J  COPY public.servicios_prestamoordinario (id, created, updated, cantidad_letras, cantidad_numeros, cuenta, total_haberes, cantidad_solicitar, cantidad_aprobada, banco_id, capacidad_pago_id, opinion_analista_id, opinion_gerente_id, prestamo_ordinario_id, tipo_cuenta_id, user_id, ciudad, estado, faxofi, tlfofi, unidad) FROM stdin;
    public       pyuser    false    235            �	          0    41274    servicios_prestamotienda 
   TABLE DATA               D  COPY public.servicios_prestamotienda (id, created, updated, cantidad_letras, cantidad_numeros, casa_comercial, total_haberes, cantidad_solicitar, cantidad_aprobada, capacidad_pago_id, opinion_analista_id, opinion_gerente_id, prestamo_tienda_id, user_id, ciudad, estado, faxofi, tlfofi, unidad, tipo_prestamo_id) FROM stdin;
    public       pyuser    false    233            �	          0    41266    servicios_tipocuenta 
   TABLE DATA               :   COPY public.servicios_tipocuenta (id, nombre) FROM stdin;
    public       pyuser    false    231            �	          0    49750    servicios_tipoprestamo 
   TABLE DATA               <   COPY public.servicios_tipoprestamo (id, nombre) FROM stdin;
    public       pyuser    false    239            �	           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
            public       pyuser    false    191            �	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 13, true);
            public       pyuser    false    193            �	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);
            public       pyuser    false    189            �	           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);
            public       pyuser    false    197            �	           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 36, true);
            public       pyuser    false    195            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 44, true);
            public       pyuser    false    199            �	           0    0    core_menu_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.core_menu_id_seq', 3, true);
            public       pyuser    false    203            �	           0    0    core_nosotros_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_nosotros_id_seq', 1, true);
            public       pyuser    false    216            �	           0    0    core_publidad_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_publidad_id_seq', 1, false);
            public       pyuser    false    218            �	           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 168, true);
            public       pyuser    false    201            �	           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
            public       pyuser    false    187            �	           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 65, true);
            public       pyuser    false    185            �	           0    0    empresas_empresa_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.empresas_empresa_id_seq', 6, true);
            public       pyuser    false    214            �	           0    0    news_category_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.news_category_id_seq', 4, true);
            public       pyuser    false    205            �	           0    0    news_new_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.news_new_category_id_seq', 3, true);
            public       pyuser    false    209            �	           0    0    news_new_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.news_new_id_seq', 3, true);
            public       pyuser    false    207            �	           0    0    registration_profile_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.registration_profile_id_seq', 37, true);
            public       pyuser    false    211             
           0    0    servicios_banco_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.servicios_banco_id_seq', 5, true);
            public       pyuser    false    220            
           0    0    servicios_capacidadpago_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.servicios_capacidadpago_id_seq', 2, true);
            public       pyuser    false    222            
           0    0    servicios_opinion_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.servicios_opinion_id_seq', 2, true);
            public       pyuser    false    224            
           0    0    servicios_plazoordinario_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.servicios_plazoordinario_id_seq', 3, true);
            public       pyuser    false    226            
           0    0    servicios_plazotienda_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.servicios_plazotienda_id_seq', 2, true);
            public       pyuser    false    228            
           0    0 "   servicios_prestamoafianzado_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.servicios_prestamoafianzado_id_seq', 6, true);
            public       pyuser    false    236            
           0    0 "   servicios_prestamoordinario_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.servicios_prestamoordinario_id_seq', 10, true);
            public       pyuser    false    234            
           0    0    servicios_prestamotienda_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.servicios_prestamotienda_id_seq', 9, true);
            public       pyuser    false    232            
           0    0    servicios_tipocuenta_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.servicios_tipocuenta_id_seq', 2, true);
            public       pyuser    false    230            	
           0    0    servicios_tipoprestamo_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.servicios_tipoprestamo_id_seq', 14, true);
            public       pyuser    false    238            �           2606    16542    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         pyuser    false    192            �           2606    16479 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         pyuser    false    194    194            �           2606    16432 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         pyuser    false    194            �           2606    16422    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         pyuser    false    192            �           2606    16465 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         pyuser    false    190    190            �           2606    16414 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         pyuser    false    190            �           2606    16450 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         pyuser    false    198            �           2606    16494 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         pyuser    false    198    198            �           2606    16440    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         pyuser    false    196            �           2606    16458 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         pyuser    false    200            �           2606    16508 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         pyuser    false    200    200            �           2606    16536     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         pyuser    false    196            �           2606    16554    core_menu core_menu_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_menu
    ADD CONSTRAINT core_menu_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_menu DROP CONSTRAINT core_menu_pkey;
       public         pyuser    false    204            �           2606    16666     core_nosotros core_nosotros_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.core_nosotros
    ADD CONSTRAINT core_nosotros_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.core_nosotros DROP CONSTRAINT core_nosotros_pkey;
       public         pyuser    false    217            �           2606    24839     core_publidad core_publidad_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.core_publidad
    ADD CONSTRAINT core_publidad_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.core_publidad DROP CONSTRAINT core_publidad_pkey;
       public         pyuser    false    219            �           2606    16522 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         pyuser    false    202            �           2606    16406 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         pyuser    false    188    188            �           2606    16404 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         pyuser    false    188            �           2606    16396 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         pyuser    false    186            �           2606    16630 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         pyuser    false    213            �           2606    16655 &   empresas_empresa empresas_empresa_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.empresas_empresa
    ADD CONSTRAINT empresas_empresa_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.empresas_empresa DROP CONSTRAINT empresas_empresa_pkey;
       public         pyuser    false    215            �           2606    16565     news_category news_category_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.news_category
    ADD CONSTRAINT news_category_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.news_category DROP CONSTRAINT news_category_pkey;
       public         pyuser    false    206            �           2606    16602 D   news_new_category news_new_category_new_id_category_id_797d13e7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.news_new_category
    ADD CONSTRAINT news_new_category_new_id_category_id_797d13e7_uniq UNIQUE (new_id, category_id);
 n   ALTER TABLE ONLY public.news_new_category DROP CONSTRAINT news_new_category_new_id_category_id_797d13e7_uniq;
       public         pyuser    false    210    210            �           2606    16584 (   news_new_category news_new_category_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.news_new_category
    ADD CONSTRAINT news_new_category_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.news_new_category DROP CONSTRAINT news_new_category_pkey;
       public         pyuser    false    210            �           2606    16576    news_new news_new_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.news_new DROP CONSTRAINT news_new_pkey;
       public         pyuser    false    208            �           2606    16615 .   registration_profile registration_profile_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_pkey;
       public         pyuser    false    212            �           2606    16617 5   registration_profile registration_profile_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_user_id_key;
       public         pyuser    false    212            �           2606    41223 $   servicios_banco servicios_banco_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.servicios_banco
    ADD CONSTRAINT servicios_banco_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.servicios_banco DROP CONSTRAINT servicios_banco_pkey;
       public         pyuser    false    221            �           2606    41231 4   servicios_capacidadpago servicios_capacidadpago_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.servicios_capacidadpago
    ADD CONSTRAINT servicios_capacidadpago_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.servicios_capacidadpago DROP CONSTRAINT servicios_capacidadpago_pkey;
       public         pyuser    false    223            �           2606    41247 (   servicios_opinion servicios_opinion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.servicios_opinion
    ADD CONSTRAINT servicios_opinion_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.servicios_opinion DROP CONSTRAINT servicios_opinion_pkey;
       public         pyuser    false    225            �           2606    41255 6   servicios_plazoordinario servicios_plazoordinario_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.servicios_plazoordinario
    ADD CONSTRAINT servicios_plazoordinario_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.servicios_plazoordinario DROP CONSTRAINT servicios_plazoordinario_pkey;
       public         pyuser    false    227            �           2606    41263 0   servicios_plazotienda servicios_plazotienda_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.servicios_plazotienda
    ADD CONSTRAINT servicios_plazotienda_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.servicios_plazotienda DROP CONSTRAINT servicios_plazotienda_pkey;
       public         pyuser    false    229            	           2606    41298 <   servicios_prestamoafianzado servicios_prestamoafianzado_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.servicios_prestamoafianzado
    ADD CONSTRAINT servicios_prestamoafianzado_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.servicios_prestamoafianzado DROP CONSTRAINT servicios_prestamoafianzado_pkey;
       public         pyuser    false    237            �           2606    41287 <   servicios_prestamoordinario servicios_prestamoordinario_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoordinario_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoordinario_pkey;
       public         pyuser    false    235            �           2606    41279 6   servicios_prestamotienda servicios_prestamotienda_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamotienda_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamotienda_pkey;
       public         pyuser    false    233            �           2606    41271 .   servicios_tipocuenta servicios_tipocuenta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.servicios_tipocuenta
    ADD CONSTRAINT servicios_tipocuenta_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.servicios_tipocuenta DROP CONSTRAINT servicios_tipocuenta_pkey;
       public         pyuser    false    231            	           2606    49755 2   servicios_tipoprestamo servicios_tipoprestamo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.servicios_tipoprestamo
    ADD CONSTRAINT servicios_tipoprestamo_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.servicios_tipoprestamo DROP CONSTRAINT servicios_tipoprestamo_pkey;
       public         pyuser    false    239            �           1259    16543    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         pyuser    false    192            �           1259    16480 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         pyuser    false    194            �           1259    16481 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         pyuser    false    194            �           1259    16466 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         pyuser    false    190            �           1259    16496 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         pyuser    false    198            �           1259    16495 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         pyuser    false    198            �           1259    16510 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         pyuser    false    200            �           1259    16509 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         pyuser    false    200            �           1259    16537     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         pyuser    false    196            �           1259    16533 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         pyuser    false    202            �           1259    16534 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         pyuser    false    202            �           1259    16632 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         pyuser    false    213            �           1259    16631 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         pyuser    false    213            �           1259    16590    news_new_author_id_4fb77245    INDEX     U   CREATE INDEX news_new_author_id_4fb77245 ON public.news_new USING btree (author_id);
 /   DROP INDEX public.news_new_author_id_4fb77245;
       public         pyuser    false    208            �           1259    16604 &   news_new_category_category_id_13cc96a9    INDEX     k   CREATE INDEX news_new_category_category_id_13cc96a9 ON public.news_new_category USING btree (category_id);
 :   DROP INDEX public.news_new_category_category_id_13cc96a9;
       public         pyuser    false    210            �           1259    16603 !   news_new_category_new_id_3ce848a9    INDEX     a   CREATE INDEX news_new_category_new_id_3ce848a9 ON public.news_new_category USING btree (new_id);
 5   DROP INDEX public.news_new_category_new_id_3ce848a9;
       public         pyuser    false    210            	           1259    41406 ,   servicios_prestamoafianzado_user_id_acde9cdf    INDEX     w   CREATE INDEX servicios_prestamoafianzado_user_id_acde9cdf ON public.servicios_prestamoafianzado USING btree (user_id);
 @   DROP INDEX public.servicios_prestamoafianzado_user_id_acde9cdf;
       public         pyuser    false    237            �           1259    41370 -   servicios_prestamoordinario_banco_id_ea310bc5    INDEX     y   CREATE INDEX servicios_prestamoordinario_banco_id_ea310bc5 ON public.servicios_prestamoordinario USING btree (banco_id);
 A   DROP INDEX public.servicios_prestamoordinario_banco_id_ea310bc5;
       public         pyuser    false    235            �           1259    41371 6   servicios_prestamoordinario_capacidad_pago_id_e0793225    INDEX     �   CREATE INDEX servicios_prestamoordinario_capacidad_pago_id_e0793225 ON public.servicios_prestamoordinario USING btree (capacidad_pago_id);
 J   DROP INDEX public.servicios_prestamoordinario_capacidad_pago_id_e0793225;
       public         pyuser    false    235            �           1259    41372 8   servicios_prestamoordinario_opinion_analista_id_3f5547d2    INDEX     �   CREATE INDEX servicios_prestamoordinario_opinion_analista_id_3f5547d2 ON public.servicios_prestamoordinario USING btree (opinion_analista_id);
 L   DROP INDEX public.servicios_prestamoordinario_opinion_analista_id_3f5547d2;
       public         pyuser    false    235            �           1259    41373 7   servicios_prestamoordinario_opinion_gerente_id_809709da    INDEX     �   CREATE INDEX servicios_prestamoordinario_opinion_gerente_id_809709da ON public.servicios_prestamoordinario USING btree (opinion_gerente_id);
 K   DROP INDEX public.servicios_prestamoordinario_opinion_gerente_id_809709da;
       public         pyuser    false    235            �           1259    41374 :   servicios_prestamoordinario_prestamo_ordinario_id_d224d46d    INDEX     �   CREATE INDEX servicios_prestamoordinario_prestamo_ordinario_id_d224d46d ON public.servicios_prestamoordinario USING btree (prestamo_ordinario_id);
 N   DROP INDEX public.servicios_prestamoordinario_prestamo_ordinario_id_d224d46d;
       public         pyuser    false    235            �           1259    41375 3   servicios_prestamoordinario_tipo_cuenta_id_52d4a4e3    INDEX     �   CREATE INDEX servicios_prestamoordinario_tipo_cuenta_id_52d4a4e3 ON public.servicios_prestamoordinario USING btree (tipo_cuenta_id);
 G   DROP INDEX public.servicios_prestamoordinario_tipo_cuenta_id_52d4a4e3;
       public         pyuser    false    235             	           1259    41376 ,   servicios_prestamoordinario_user_id_7cdc0426    INDEX     w   CREATE INDEX servicios_prestamoordinario_user_id_7cdc0426 ON public.servicios_prestamoordinario USING btree (user_id);
 @   DROP INDEX public.servicios_prestamoordinario_user_id_7cdc0426;
       public         pyuser    false    235            �           1259    41330 3   servicios_prestamotienda_capacidad_pago_id_a4804756    INDEX     �   CREATE INDEX servicios_prestamotienda_capacidad_pago_id_a4804756 ON public.servicios_prestamotienda USING btree (capacidad_pago_id);
 G   DROP INDEX public.servicios_prestamotienda_capacidad_pago_id_a4804756;
       public         pyuser    false    233            �           1259    41331 5   servicios_prestamotienda_opinion_analista_id_21b538f8    INDEX     �   CREATE INDEX servicios_prestamotienda_opinion_analista_id_21b538f8 ON public.servicios_prestamotienda USING btree (opinion_analista_id);
 I   DROP INDEX public.servicios_prestamotienda_opinion_analista_id_21b538f8;
       public         pyuser    false    233            �           1259    41332 4   servicios_prestamotienda_opinion_gerente_id_cf4a235b    INDEX     �   CREATE INDEX servicios_prestamotienda_opinion_gerente_id_cf4a235b ON public.servicios_prestamotienda USING btree (opinion_gerente_id);
 H   DROP INDEX public.servicios_prestamotienda_opinion_gerente_id_cf4a235b;
       public         pyuser    false    233            �           1259    41333 4   servicios_prestamotienda_prestamo_tienda_id_02b4368b    INDEX     �   CREATE INDEX servicios_prestamotienda_prestamo_tienda_id_02b4368b ON public.servicios_prestamotienda USING btree (prestamo_tienda_id);
 H   DROP INDEX public.servicios_prestamotienda_prestamo_tienda_id_02b4368b;
       public         pyuser    false    233            �           1259    49769 2   servicios_prestamotienda_tipo_prestamo_id_faec6e68    INDEX     �   CREATE INDEX servicios_prestamotienda_tipo_prestamo_id_faec6e68 ON public.servicios_prestamotienda USING btree (tipo_prestamo_id);
 F   DROP INDEX public.servicios_prestamotienda_tipo_prestamo_id_faec6e68;
       public         pyuser    false    233            �           1259    41334 )   servicios_prestamotienda_user_id_0cd3d955    INDEX     q   CREATE INDEX servicios_prestamotienda_user_id_0cd3d955 ON public.servicios_prestamotienda USING btree (user_id);
 =   DROP INDEX public.servicios_prestamotienda_user_id_0cd3d955;
       public         pyuser    false    233            	           2606    16473 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       pyuser    false    194    190    2216            	           2606    16468 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       pyuser    false    194    192    2221            	           2606    16459 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       pyuser    false    2211    188    190            
	           2606    16488 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       pyuser    false    198    2221    192            		           2606    16483 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       pyuser    false    196    2229    198            	           2606    16502 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       pyuser    false    190    2216    200            	           2606    16497 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       pyuser    false    2229    200    196            	           2606    16523 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       pyuser    false    2211    202    188            	           2606    16528 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       pyuser    false    2229    202    196            	           2606    16585 4   news_new news_new_author_id_4fb77245_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_author_id_4fb77245_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.news_new DROP CONSTRAINT news_new_author_id_4fb77245_fk_auth_user_id;
       public       pyuser    false    196    208    2229            	           2606    16596 L   news_new_category news_new_category_category_id_13cc96a9_fk_news_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_new_category
    ADD CONSTRAINT news_new_category_category_id_13cc96a9_fk_news_category_id FOREIGN KEY (category_id) REFERENCES public.news_category(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.news_new_category DROP CONSTRAINT news_new_category_category_id_13cc96a9_fk_news_category_id;
       public       pyuser    false    210    206    2252            	           2606    16591 B   news_new_category news_new_category_new_id_3ce848a9_fk_news_new_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_new_category
    ADD CONSTRAINT news_new_category_new_id_3ce848a9_fk_news_new_id FOREIGN KEY (new_id) REFERENCES public.news_new(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.news_new_category DROP CONSTRAINT news_new_category_new_id_3ce848a9_fk_news_new_id;
       public       pyuser    false    2255    210    208            	           2606    16640 J   registration_profile registration_profile_user_id_e133ce43_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_user_id_e133ce43_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_user_id_e133ce43_fk_auth_user_id;
       public       pyuser    false    196    212    2229             	           2606    41397 X   servicios_prestamoafianzado servicios_prestamoafianzado_user_id_acde9cdf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoafianzado
    ADD CONSTRAINT servicios_prestamoafianzado_user_id_acde9cdf_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoafianzado DROP CONSTRAINT servicios_prestamoafianzado_user_id_acde9cdf_fk_auth_user_id;
       public       pyuser    false    196    2229    237            	           2606    41335 O   servicios_prestamoordinario servicios_prestamoor_banco_id_ea310bc5_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_banco_id_ea310bc5_fk_servicios FOREIGN KEY (banco_id) REFERENCES public.servicios_banco(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_banco_id_ea310bc5_fk_servicios;
       public       pyuser    false    235    221    2277            	           2606    41340 X   servicios_prestamoordinario servicios_prestamoor_capacidad_pago_id_e0793225_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_capacidad_pago_id_e0793225_fk_servicios FOREIGN KEY (capacidad_pago_id) REFERENCES public.servicios_capacidadpago(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_capacidad_pago_id_e0793225_fk_servicios;
       public       pyuser    false    235    223    2279            	           2606    41345 Z   servicios_prestamoordinario servicios_prestamoor_opinion_analista_id_3f5547d2_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_opinion_analista_id_3f5547d2_fk_servicios FOREIGN KEY (opinion_analista_id) REFERENCES public.servicios_opinion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_opinion_analista_id_3f5547d2_fk_servicios;
       public       pyuser    false    235    225    2281            	           2606    41350 Y   servicios_prestamoordinario servicios_prestamoor_opinion_gerente_id_809709da_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_opinion_gerente_id_809709da_fk_servicios FOREIGN KEY (opinion_gerente_id) REFERENCES public.servicios_opinion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_opinion_gerente_id_809709da_fk_servicios;
       public       pyuser    false    235    225    2281            	           2606    41355 [   servicios_prestamoordinario servicios_prestamoor_prestamo_ordinario_i_d224d46d_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_prestamo_ordinario_i_d224d46d_fk_servicios FOREIGN KEY (prestamo_ordinario_id) REFERENCES public.servicios_plazoordinario(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_prestamo_ordinario_i_d224d46d_fk_servicios;
       public       pyuser    false    227    2283    235            	           2606    41360 U   servicios_prestamoordinario servicios_prestamoor_tipo_cuenta_id_52d4a4e3_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_tipo_cuenta_id_52d4a4e3_fk_servicios FOREIGN KEY (tipo_cuenta_id) REFERENCES public.servicios_tipocuenta(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_tipo_cuenta_id_52d4a4e3_fk_servicios;
       public       pyuser    false    2287    231    235            	           2606    41365 X   servicios_prestamoordinario servicios_prestamoordinario_user_id_7cdc0426_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoordinario_user_id_7cdc0426_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoordinario_user_id_7cdc0426_fk_auth_user_id;
       public       pyuser    false    2229    235    196            	           2606    41305 U   servicios_prestamotienda servicios_prestamoti_capacidad_pago_id_a4804756_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_capacidad_pago_id_a4804756_fk_servicios FOREIGN KEY (capacidad_pago_id) REFERENCES public.servicios_capacidadpago(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_capacidad_pago_id_a4804756_fk_servicios;
       public       pyuser    false    223    2279    233            	           2606    41310 W   servicios_prestamotienda servicios_prestamoti_opinion_analista_id_21b538f8_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_opinion_analista_id_21b538f8_fk_servicios FOREIGN KEY (opinion_analista_id) REFERENCES public.servicios_opinion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_opinion_analista_id_21b538f8_fk_servicios;
       public       pyuser    false    2281    233    225            	           2606    41315 V   servicios_prestamotienda servicios_prestamoti_opinion_gerente_id_cf4a235b_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_opinion_gerente_id_cf4a235b_fk_servicios FOREIGN KEY (opinion_gerente_id) REFERENCES public.servicios_opinion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_opinion_gerente_id_cf4a235b_fk_servicios;
       public       pyuser    false    2281    233    225            	           2606    41320 V   servicios_prestamotienda servicios_prestamoti_prestamo_tienda_id_02b4368b_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_prestamo_tienda_id_02b4368b_fk_servicios FOREIGN KEY (prestamo_tienda_id) REFERENCES public.servicios_plazotienda(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_prestamo_tienda_id_02b4368b_fk_servicios;
       public       pyuser    false    2285    229    233            	           2606    49770 T   servicios_prestamotienda servicios_prestamoti_tipo_prestamo_id_faec6e68_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_tipo_prestamo_id_faec6e68_fk_servicios FOREIGN KEY (tipo_prestamo_id) REFERENCES public.servicios_tipoprestamo(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_tipo_prestamo_id_faec6e68_fk_servicios;
       public       pyuser    false    2309    233    239            	           2606    41325 R   servicios_prestamotienda servicios_prestamotienda_user_id_0cd3d955_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamotienda_user_id_0cd3d955_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamotienda_user_id_0cd3d955_fk_auth_user_id;
       public       pyuser    false    233    196    2229            �	      x�3�(J-.I��/����� /��      �	   @   x�̱� ��+��I�^���VC�����2"MP&iSlӜK%�)4m#�rԁ<��{��U      �	   �  x�m�]��0���S��@�	�{��V��f�������vw5����D�T7��O7�\۞�������2�M#����_7�;@�S�@�ݣ���L���w���C&Jv���S7�ӗɃ�e��BCH�%k� �b�*��j䜺�ٿ^�L��'lvVǅd:1�3uj��8��C4��vz��{4�`2<۬@i��R����!B*�`��kv�~u�)����fW|?���#���	�� ?˻i9�:.f����˝毱3Up@S��U�70R�J��'���o�`W���W?k���*�O�T�#{�A�
���?��m����h/*�JF"�RM Y� $����㢤�����ޙ�����_��R����UiVh�j�B�?c�����ma�`o�>�E�[��V@T�!;+R@�6²��{�S�Z\ƦMC[�tD>�S���0i*8b��sy�y�/��ޝƶ������Z���霘��a	��)���Gߺ�d�3��-u�,�n&u�25n&�m�6S���0g��'��w÷k����G�+�`KU�J�Q�Ī2����މ�V���[�	�zƇ�����֙�n�\�����-���UY[A�*��-�#,U��۲��0���8�%1�ژ!c�@�1�кT�܏�t{/���?v��3�R��a���689D�n��6�l�1g�
6t}>L�h6�N��0�"ۄ9��$�H�8I��Om?���&kԦx���ժ������Z�x�AU���m�P�u���O&�W�8��*QAh�Ru)�%�
�(L0��ݹ����y�}�AA�]'�U_�v
�*(����D|iP"���$t}P�b?��z������� r͜�[��(sP�@o�4��,�si�����J�MdپO+�j���n�DҰAr��2%����4g�b�1���)�r�5Q}S$զs��{'�~Xk�O�Ou      �	   �  x�}��n�H���S�;S�]�4R�%���*�����~�y�y�)�FIzHs�r����sN!�tܸ[���Q�)��r���&���s��g���o�4����W�@�\���8��l�C��|����<��#�5�k*b%O���T	� &�R�;;qdeV�n��0��)f���J~��j*��\er�������,�|���`��1i��l�͛'�dn���7��9���3zv�WnT���5@�[�	�8��6�J����>�!�]x�#�����ր܃_`�x%	o��۪�e�$�?0�A�X<'6�A�xj�pŻ�t6$3�_[�����F��1������*u����H��!A?v�*�j�0W����|@�>8����w [F�]����U�����Ȳz|ktPU%�ꊯ�q{K���|�N� z���
 0��B���p)쇺��PW���eL+P1�����^��ڋW~)7_�}���� ��XL�b���T���1�w'gb��y���1�� E�J�_��R)�D�,)���0������\� CWh�>4܏z��.�Qyy�/�^޹��4�~}d�0���1j7@Ѝ�>^���$ҿB�"I�+�	�f�0� iW��"�^�a��oB�i�D�#J���>zϹ�F���jt��t��h͌A{>��H���(u��&T:9�����}d�?Ё�(�-5�L���[� ��Z�g��_�߉�b-�PY?��!��H��WC�m�Jqy�\�%i�ꡕ��>M��Œ��%\���;�hy�N�]��.6a5�UÀ�;eS�'��'�B����S�����ɽ�
!�ʘ@p�}�U��ڹ���Q�l������9��������h�X�K�O�i�L��"��'|Z�Ed��䄐��ZtO��V����fF�H+�$�1z���V��
�����M4�gg������r��)��Bs�q�R��=|9T��un�{�n�M�fZA�k����Rń��S�A	��G�K��N�"��轴�ɦ��lv1�=��.�yGJ�Ƭ5�,3�e�Z��.=L��#�sP���5[���f�1
� ��Q��my�#R��?3�"� @�nq��?�����w��y��t3h��,�ű7VN`V_�mM�"݂N],rA�	~���F4i��nʛ;�a☎�K��{�F�1�F�A�#I��& ��ҥ�Y��ي�P��qs$Zi��a��.����d:w�~*�����Ί,y~d�U$V���OQ�H�w������25��      �	      x�3�46�4�2�46R1z\\\ �s      �	   l   x�%��0�jc��E��.���L#�X�-V�Df����0��,���1E�'Չٔ^�%�m)�Xꖉ²�,�{�TOnP���r���.W!�k�.�&����� ��!      �	   �   x�e˱�0��>ŝ�Ŷ������ĉ���6j��)�X��+/&7�3}�����ֵ`�7������}wI*�4�]��}���t�V=E73�d��.��/ϗk7�n����%J(���A��ܠN��\������!-�̱��5)c�y�4c      �	   N  x��W]o�F|��!FȎ�8h�UNjĆ}
P�ȓtƑ�އ��gv�en�>ؖI�rwvfv5{�>�F��2���H�n��E����sy'E����:g�Ɉ�ݡ�U��U:X����N�֊_����׏��UT�ikYK�C���2�:��mЦVgV�L��MD�l��g;�uz�����Vm��� mT> ��m$�ӡۈ�+z�ʵv">ǵ_�J"�|s(S���Cp�'���0R4��C�.���V
�.�H���A5%X�U��z�"�Fp�9�z�
t���W�5��Hy�Þ����(Ko	�	n؊�Txo��F����B �I�m���JRʜ����1k`:�8� ���P+/�1V�t+��)�����}�澵��?�k"6R�vHK�3�AiH9����E��XoWeiT�C�4ue�q��>��+��Ӥ����t�t|Ћ���sr;$D�[�Vߏ�|dC����׀:��Y�� ^�\I/�_�6�?5'B�i�tml��ݒ:�5�Q��&�����k����6Bi-I�(��z�.}w�~�"��*���:U��uQ-q�<+��GY�,�
�#`�1A����^Qi�S]Y��qq���?,qgE��R ���r����$�E��'0s�Z]'�A�5��Gҷ�/'�v�nah x���;I����"��FUD���6�O�	�uN�;�H�@�vR����D�P�lUq��}�cf�3���z�I\*�뽍��s���?��kN9�ݪ
��t�E��%Tk�@o-���{�chH ��_��������'�o�T�������X�G�'�]��˥Z� ��'b�#�ML�kϔQ�ŕ��K��#Q��s3v1���od@�qb���܅C*�@���5@��R'�,z�LW�9��v�v!i��#�ƉX|�h~T�����^\DB�gڟ�2Ocx�7� P��z�3g��_�u��ʺ�f,��%�4-e�V���w}~�����	��q���ʥ&Y��6�v��癏{Y;#%�&�9����Z��[�H�O�l���;�W��7�渁'���#�z��IHޢ<62woA{@G��y�"��`�sS=V@Ooi���gI�l[��\�x��`o$ZDx�S�+�{~�!kڍ�5+��VE�#��a��4��&�^U������]`D�ZǗqtN�Ⱥk��_�h�V)��2��O5,[�,� i"h�����,@�D'n�3�9�l�{�;Z^�zjm Ǧ�G$+"�Xx��UdE3����.���-�L^P��	�o3}�C���I7�-�[�ծ�bZ=5�i�c�EYQ�l��A���\��s�=����{vı��O�!�YG�e���Ú��F2��h�2_�a�¶� �%d�4��;/���H��W?|i�m��֜VF������O\�dfP�aŭ��7�=�%�ʒh��3$+�4.@EK%�B<ب�lLf�ڦ�N���4,��U)<����J��\"Uމ���gz��I�1iCF^l��|Wk$�����[����dz4}}4}+f��N��Nfǳ7�ӷ�MO_�1�^�����q׮�� �i�      �	      x������ � �      �	   �  x��[�o�?S�֧�3��7Z��pe�H�Ɗ\�(��$��A�\s�)��=��CN��X�'�K���.�;�+��	`�����ͼ��`�=d�!瑀��C�b-8g�!�>8N�+���$�I:y0������v ��F"C��\��8 �����4���� 2��p ��U2�$��4�&�,:�����x�̢G�l�6ɧ�<냗mx�b��҅r08�Χ�e�O3D�����"�Sm8�bp�)Iprp����<���>b�!�1R(����ˣ����ó��������0����_G#����������������3�e����(zy�~zv8��o?��c�M���l��N�?<�x��l�x}�����ӳ���A��������ӛ��ǣ�������O�G�G�/GH}r�ClCb>���B��,���DO�P�(:;(Ws�s���<��#ڏ�_�����>��GOn~��=9=��p��p�FG��'��Û�OH�i��K��6��P�� ~�Fy����h�D��E2�"���&�"0�I'k��<�uC."$�ʆ���+B�̀��O�jMO5C)�]�K.�݊�����M2���^O��d��zp�,��Ƀ�iU���Njѥ��Ě)��f0.��m��ū��:�W�4�����
��.蓋cӏ�P�!71� ڌ����2��Ri뀎���"HMn~In]�<�J��,���W
	>�J���6�����t1Χ�KԺ���W����,q���P����u�.�(��&/���ﻂ'0�I*k'��ź������Oo����Ԃ5�Ͱ8��;��Đ[��!x �	 ����A?��Ta��*��!Ē�Xb����y-UL��� �P��[������=J��ARX� ��p� ��"[��b�u	B�!����~�ۖ>�.�҈
�f���@;�t7;�*�Zx�С��&�e�߮F=l �8$r���X@u�<�fY�;Ԝ"��b����a�^O�����v
x��h̙�x������(iՠ��ލ^�L��
0O&Y���@���N���b] �R��*%�d�,�^Ogi=na*�p �G�9S�����na��ߗ��%��F��c�+�Ķ��F��[��n	데�VL�=�Lk�b-.Y��¯Iܴ��F��[��G�PXm�C+.�9��}^	��F84�JX2����F����ϗ�5�n;S��2h�W�kKoY��:Ye��6�5��ӆD�-d˺J�7l<l����[�Y^�2����Z�eD��R�[/���*�2�R�J�dA`Fe+���x	��]PhW"-)E��z�a{�D�,J	m*�@�-�e��[Z!H-%�Y%�:~/��b.N����f�zN\)�Uio
������1�21�������3�ʊc���=S��0�T�{��)�t1�=Ɉj�8uѸx�[ޚ6�l�/�Z��yH��h�U�8�dw%!	y"Vh��� $�Xj�e�ǐ�]2 Q�:+�κ�tt$����Dτ0��Z�.� �C&�n���
to;�+I�g���0�B(l�Y�vv�چ��1�9�0���-����. �z\�+kŇ�1,���_�s
ScobAT�b�eB~B�"Hέ�(��@A�F��췍t�P��@�Ik+�,y�T��}�
�1Q(���4����B��2*
���nF{M���-��7̷w��tߌ���8����:�vs^O��Db`F/Ņ���=]E���)s�A9jy>��R����9��|C<8�K)dE[VȘ(S?J����e:O߭�Y�$�F[{�``cn��ӓ�m�'��kA�0dCₜV�=�����VՆQԭ^M���|�E׳�]FMat�.�E�)�p����������u���� ��iڐ���3�7%���6@����	���JSV��Pc9gʎb7�	҅�.�Qll��j��ķ�|�y�]h���T��P���x� �V_ Ԭ^G��hK;�L9;�6],���4�L�	�$�1����I2�Y�x�*?�$�O��k�����[��cHq������b�f�=5N��1���u����2 �ŜN�1�ܓ4��D��_%�d�	/!���.ӜN���X���LJ&ys%�h�;��;�^s�j�ޮ�!UtCE?͍d뛔J��k��w��;kS*��𶸘N���h}�o�_2ݽ�9S_2�yL��w�-���P&+N��q���@{r�WEe?Ζ�c�-�٫7�n��|Y�"�M�Tq4�M�O�H&�}��Ы	M��b�e�e����鵥�]/x�bUXh�)U���8���
�1x4�T�f_5�o�H*���ֵ�,�����]��+T$��\������6f{F�29{�ƺo�)ɮ.�rWJ9����U�E���J�Yt�.���Sb�6`��*�O�T�5��o~g�%���2ءR>e������L�9ӡ�%�e�j��క�sf�@J�F1��[���3aJb1�D�lM�S�4��~��Xy=*�P��q�>7_]���Jw-4�w��G��B%�ⶩi{�Em�y�_9:}a�Z
fTu��g
�f
\@������,/��W�%�a�.�. d 7Y������~:�Pz��/�`�Aw�auN�!W!5F,X+�#um�ĳ�5�\��~L�#��;�qR�bt�TAx�zeW�:nC�§����/SV�,�d<�}��y��n�k���@��P�~܂�I=�`�_����<`�C�����̎���R�XV@U#�|��	),=���{P4<���<͈��k	NW��O�1&a�P�����`����>&V�(��`q���g]��,0t�a��n�:^fģ�_�i'y~�y?�i#	3%+���,\V��ȃ��a�[��O[r���r�.Ӝ���¸6��1W��^K��E�g��o�`uA�����Ѫ�YJ��V�o���ؒ�Ȫ�x�m$I�Ֆ33(����:˱��ǂ�x�f�W�o���q�b}r�9�a4�Xr�q���?�m���gYVy�=�)!C{��hc���;�:�t����vC����)��w�[W>���+�Et���;�|�]��.�h@/�@���@Olezʗ0���VĎ9�����yJo'�4�'7��S4�~��3h�jc�h�Z^���	Fy�e�����j:)x���+���<˧�2<����M�x�t�⤖e��WhC�\�5q��z���W5���QD��:�;nLl�Ͱ�%�m��� 5�@3L�53�ݩ�)��H@�/��a�"���]����~�M��M ������Kc��G&M��'�����6�sz,NWS4��⽪䮧 \�6�����+���A�s(��J��M��ڛjv�4wycO]c)0��0�?e��4��4m��	K� K9e��N���{�S��E��̓��%�K�ّI�����.�nٜug����C�f�nAH���ZM��і�����[���f
g`�O�/
�Z�W�E������:��A��4u
@t���`�~ډ��(�2ۂ�E��id[�ؠ�6
��6��K5XԢ-/���e�^k��g|\C(���������Z���N�p�F��Wq�v��^�IZ���RJ]M`��;�}�f�@���X�h��ER������6Y������<��[�I�z�ж���-�h��>j��{o����"������$��      �	   �   x�m�M�� ���0�Bҿ���7c)��@G��L	U� �=~���sQ,,�$�;��`X8�Y&�E�0���L*5��5�t��M��N�K,+�D�o�l2�y/����B���D������M���В�2� �68J�������m��؂���eݕЯr�I�;�p_ۙm��%q\���N\�.R�bh����A��üh���������W���ޞ�G9�nt;�λa�M߾�G�� �b�/      �	     x����n�8�����T��xг, ���
�-��t۷�!�Ȣ�¹I8���?���:\��2M���`�����Sߞh�|3���T�*o!8�f�����"�@YA����_�I�+.�(���𮁎��;��F����m��\dȃA���u�K��Ծ7�?��U�e	cdٍ]����&~�\�s��"�KD��?l��ԍ͵���C�����nN��]�k�D.���(��>n��;���)E�(�'�^R��p���!g�K����d������f����A>Q`�Xu�ߏ~��M�7Ѵ�@�H�Q��ʯ�Կ��0�R��q����n��_�$ΧB�q~ם'6�c�f��6}%Fr�|���I���q���0c쌁��u�u~�Y�="Mf8m��{���Cp�$�p��{:r����:�0K0w��!�]�����hf5-��j�j��c��ߦ��C�y؞]��F��@��~ ��)QhC����I��p�>�O� 
�>ܺ{:��(���G�s[����P�#P͒���|�݄�_�XɃ݆"+
"���k5���|˯	�Cw��ݭ�5@ㅣ�5H��
j�I
�����@XKF��J�LA��iE`��u8[}{
�	�e�F�Ao��L�� [�[��QY�i.k�}i�݆in+q<����'�%ېy2c;2�$�|��d>0�#�Z�s����a�Nߜ�ąا����1��f��#�kq:�)����c�ٵ� j��P��	��0��6׏��z{H�h4�ڠ�2!P~���W�S͂��������S:u>�~�ưRk?�ѳ�Rz�����/��Ѱ6E�P�4�:��?�r_K �oΛ��	!,��	m,��r2�P: �v�}��������v����Њơ�?ݓ��nL��XtG��9����v�Q������'k���Z���!�B%��1�=ꃠ��\	2p
BL��5�k].\��ţ�?C��![�[#\mD7�GB`����Â��p�aA��n�)�B%�mV	qJ��s\"�
���!��:��񘽐�������<<���iJq �6[��.�8_FZ^!#"E��)��,E����m^"�Ԛ���Yc}��U�%���B��f����IY�@k��"�hL�HqC�<AmY����|���d�-���Tg���7�8�)f����Eזu	E]�uӀ_"�H��L;��Gc�ϤFZ���u4��A�)��,Ipk0�bI�.?��,I�X
DZڈ*ww������Q�      �	   -  x���n�:��ۧ��瀴/hSP�N��h�@��� q���� MG�{�
	$.����������˩����Cku��6�ˠ)󆹳�.ր��ṑ�7B1�ԟ������c0A�K��B�`-K'�7/���p�J����>.ͥX����J.�=�׊��)�:�E�/�;VW�>��sg�[��Ϗ��o��v����נs��ֹ���m5oCd�9m�iu�9���s�u݋z.`.�N�j.��������-���u� � ��$S��N1�m��o��ٵۭ��̎�Av�`��O�)�f�Н&8����O%E랩��yA�L�>�T<AZ��)��O�+���s��������^��n b���2��0^���u�h�N�#�1H�;r��S�O�3�m�]*�L�ro�gh��}��(9��.�3�=����b �]��䌳�j8H���.ߡ�TY���x~$=?����^Y����7��2������1�8Ҝ�G�����2ߠq]��VF�S��G���`�u�"5�W^εz�l���3�(�5�����eT�2�ז������μ��SÞ�!���m[׶8獡�{ 3'% �'I�U�p4|ԄO�nhE/���ǅ��1?%\=!�_K�xT�������u-a��C�ܧ��T{e��J�;�^
����yE��Aݙ~�O��#��)к�l��GvM$dkC�	$�&��:��d���)�:*.��G��԰&���Fv�Ͷ�eۙ�u�Cw(�j�GN�K�ӕ�eThςQwЙ�����y���������)m�my�V8���K���*2������|x�XK�tq
������=O�>B?��ݗ���'��V�f60�D<�.h��X{F�����a�4����<e<��[�#�g��'h��ĶMǹ̊�>չK⸍�Ee������q(��n�,ԺC�Ѷhb`�K�kp��&�6�T	��p1���O��'y�z�+;=g�)ӱ�/�b_���>>�Ck��=$�n����TW����)Ѷ5t4&�"�RD��R�=Ʀ� ��ְ}�bK�k4�����3��"��K�+�]
:G�q�o�V���pNEF����֍����K�� o�[(Zc�S�AGQN<��bռ}����ꗣ�g�G��뚰`�}�����-H�?�,X+/xB���x[H^�%s����-�o���^�6�P�f-���JVZ�o�c�Vo�;a$�E��K��퀮��!0Zvt-� h|�(u���ɾ�Y�$�8�Qb�F���E|ewa��Q�q�"˶�xý�{r{{�"�L      �	   �
  x��X�n9]'_Axat Yo�dǀ�(A����l�*J��"+d�:�?�b0���s�zJJ'�t�UU��}�{./�?\�.�n��t���͛�$��qכ]\ߌ��n����T/_���e�J���ėl�+�ԓ��er�svk�X�9A :�v�c�b�g�5qEr��(�ĉ��r��&��Z�b��O�/��?�����1�0��[h��93�����bIb�yKFd� �[a9�n��Gc�#�̸��	mn�o���K�`Q���Trf��L�HX�:� ���Cd�����k�\˄��i/=�d?i��{OݮǳD:��»�</���hMsΥ�͗�EzU�d¡�$��'p����Q�w
ِE�+i�`B�������L�d�}��G��L�X�x�"�Y���Tq}�ͱHvyP�pc�ܰl%l�[Rva��+�̓92��8r*]T�.2���U�Tu9`��dg�[�
D��������dB/A��疞m��S^(D)��:�0�g�2��1��C��i4�ȕ���7��{��4�1�)�O�\9��rp����|3��J�2{)���!�f�֊R3n3��^]w�o��8_~"�\A>�=N�ɶt�\��b�:6���|?���ߑ�i�����,i�eb�:��;�G���~�>:.�/�6'�
�-�i�;$K���5��S����)���.}5��2�I��F��jB{p[��u���D�=G�2_86�jyn�@[�Ǩb#Ҋ�y@���yͶ§E���7�����d��]�M�/p��XrZ�L�^������ĩr��KR�5�����M�yY.���Ü5$$Y���x����@sϟ�rvo����}���^/�q� 켋�wW�x۫���9;����^��0g���3݃�T�<U�Ǯ7�����7�Z�W�t��N��B.��h4J���?e��O�~?���zg�=~�M!a{��^��X=������1^��c6N����aw||������Ż��Ŕma�C8+��g�q����8�����XK�Pl��+
l��(��7eޟ��)P��8�+8j��O�%LQ��h#�<,h B�O����V���=2��BP�q����⳦N@��%Җ-y�m�[%�`F��M�ڴ2��A��l"��q��D< �f���J$�v	�Uh40��9��
-�b&]Kq�U7�%4�6��d�/(���/H�E�K�w�N����a����lf��`2v����!e��%��v�����������?|���v�<�	�\WL,}�y�M@RA(�wZ����[!�G),�U�4���� �.�Aשi⽰6�gJ�r��٪	��̍m+�D"�6?�+)��Ё���2�Z�I�Ez!���pG�>ɤ	�M�i��Q+Ԁ$Ά�~"��-����T*x-+Qd�CyЊ�*�3S�m3N�֨����}��B�c��1'�y�'����(Ӡ��'��Q+:�(ä��3�7�A7�1�BGw�h�2��g��Y�8qF���ȑ�Bc����{m5-�����6���D��D.sϤ5�����o�b���r)=�^Jp�� ���0�$Y�$r�u�bөb܏Э�$<�g�"���Z._����-�YP� � إ�N3V�6��:�}���˅BȤ�>�\��l���2PD�1'�����Q������^+��O�(�J$[=����(��a�c����`�-ر�pSr��ljG4�Sւ�jJP�G�{���� U��[��Q9e�U8�[�ߏf������(U
�l���d��u� Q,��p`��O&˚��C%�ד�͋>Z�d<,��\�B����V�I����i��g�P�Z�yH����e$������l�,�&T��������;8��H��(��p<::"*0zq~us}u3 |�7{���m��67޼"�ƌ���q�ATc�j_8=��򃟖+�,��G��L��E��!���&A��|��Y�M����ny*c�T�J	�'�]Y"�.���+�@�.:KD7B73$�,<�.RYF��-�Mb1��"�.@R�<�7 n*��MN�"� -k-�lJ��O�Y<~�W���@�-.n�L}���a?*b͋X�[��O��.T�˰�?W���+�� �:��������O����;<8:><���G�]\O����_S���r�𢡊�K��?^�����݇�i����M�)ٖ��.�[Q���8�&zE����Y�T#�K��W���
R �7q?��A�y$HE��场�o���)G�P���U��7m�y�fA��LOص�K�.Ї".�}rc��n,�'��W�ƪ�9�k���6m-���i��_��z�Ү��wؠ�����s�B��ņ'}�Ul�fh\��*8�ۛ������]ݾ��ﺈ��X=6hh���J�Y�%)g�"�k�`�p#��
X��iW�ö{�
㑽������l=���AK��f_X7���i�"�#8(נ ����\�6m�vO��@ [|��D$Ų���K.�����R���~s��0nm<.�����l=p���H
#�ɲ�e�n��A3�l΃���\�}q��,�v?�&;���qx��}��m�+�:��!�� �z��$u�K?l��#7�ys�;�ј��T(�ɖd���S�g�Z0�h��hڻz�ғv��g�Q�����J�`��4��$�L����`4��w�GĆ������S��˗�7-~�      �	   �   x�u�A� @�5��� 3��K�K=����S!��w�^�6u�럼�YO���1�����4�����6�ئR�������ӓ�Hq$F?�����CX�8�)�(��0�h�iuq�W��r`�ü���G�q��N��"�E�W��PdB�4�� �N�C�(�U�ݤ��]MLw      �	   /  x��ZMs�F=ۿbrQ%U��'�e��h����(��U�V�RC`H�`��1u�5��r�=�_Y����}�3�%k}�r�2	`������m?:<������p,�����tO���?����>���x��ÃS1z?8��;ܲ?<�������x��������U�zP�J̵���zbgG�J_��z"��S�F���e*�H&�2oL���jYH��LM솑���K�2q���)�E���c).�l8�҉���e�/Ȇw�0�߭#�6��̤����eҊRZIF��**��JT!��N�Ja���d����(��T�hI/s��TR1���	ik�VV"י�%nx��7�֤z�M%Em�V�G�멪���.�
hw��Z%��U�����Dfo�o�g]V;lsA~�ѵ�b�
uc�/���I��g�sA)������S�I��Ԉ���s�(�%�!�x�),��L�������,~�aYO����:�)L9�7=��98�A�9���{�߉�L�:�f�dj5\{�Q*,����r�R��5���J��D.��sW>lp�������7��;���/�RIkM�1�Fn�s�>��Y`�s]L��Ib#K?8�r��t��qV�F�s3#�r*���Ն��Սxk��U�����p3S�Z�ڋ/�$8���P/^���7R3�"Z��1bK��?ͣ�I?1�wq-3��'.��.�Z�K�M$ ��[���/y)�W:�NZ�r�L��#òK�-�{��:����2�1�HUb�Rʅ͟#(R�yܸ�ӗ���9�e��=p%ɨ�`��ʉL� ����%��I4|H���L ʊ|�a;�lJId�'3&���D!�&rʋ}i�K�2���c��5G.���� �Ƚlk{���Ț�>��a�A��+��D���^3���iG/pG����� �ȃ�M\���0���ND���]�dL��M�Ǿ�`h���Z`��,�Q��%@_ 
C���`]b�+�jI�dǫR4�����π��[�=#�$���s� �I�[M6@���&�� �~��\�u�ɒ�Q�p��P�5D��_�wEj�%����da�
�-IT��,�TT���\����4�3�V`:&>S�����=,+ƍJ*�̰g�����I_R���V&�Ô.���˦�k�K[r<Ԋ���FIm�p��e�d�b���1~�� \����y�������M��m|ѡ��p�`rqn��K0�B�3G�OpO��{�����[�/���K�V��I�(;k�ۂA	Ҹ��\�S�J�<:s�Z�|���`� �d&�_��uT�6�#�gD�0���DG�(�r��T���x� �KL��{e�)�"P�m�y�Z��m!˨,�ͤ�h�a1J8)�`�߈qfQ:�����)L!H���釮9���1��J5c���z����tE�$��m���Ɋg�:G��Uk����UČ��QNo2���
[�\}[�e��������{�"�ŋ)�'�!�T]w���#�C�H��Ƃ�AREѐSm�;!{��.��Ac�/¥
{��Κi���c�_����x$3lh�1�(�i�+P=��]#cŕY\_~�6��$\��y� q쫁U�"5K<JV�A��>³�
�[�?��,"E�DVjN�z�pjB?�:��ܚ#9��B���)�:担 �⩄V�6��p��$S��嶂p8�j�^�T��u���x^f��lU�����e�Y�48�P�����h�j�����=��K�[�����:�w cN��5;R�K�`M��{�:�Nhļ�Q�@x���xF��W]~������<e��`1�&�r�;b8��+<�2��V�̄�iS݁ŷ���[%���u��\F]CY�=�j�
QZ�`§����Ŷ�9��A�s�1T"�ׁu�A�YU�@�h�
�[��@�_ �_XY�Ͳ�=�����vk���]�����bo��������η[O��b��>�y4�������/���t<�qv>�?=>=��'}<��O���������?�G�<��J�K�xQ�.w�g06z,33_쉘����$n���!�&&�	���K	�Q�pKz�i�o�M���z�憫��IZ���؂�+�@vb��~���7��gҳ��#%�L�˳�F��l�k{|_�b��M�TX�5{�^{5��ׄ�L�F�2�iqp���nM.NQ��G]�UUt����Q�o�	�T�n�{p��Ҽ��9<C�DX���
9�nk�����c�w^��3�[����|$i6'� \W6ٺ~�'��IÇ�|�7���T��QT��/�P��b�����-qu��hA���I}/AUh��uF(wM^jz��[��t���R������P�~&��o%v��F�bgk��ݺl(i�G�aE\�F�����=��Kx�*��n/�==�lJŞ�l�lR8��m=��~�zHR?�E|%U7S@nj�^�q��^��lQs�}내B�WU4�D/W��p�h��������mt�؂ X��D��C�������kOe�{��Ժ��~�:��M!;*3�9��"9e"�}�'� uѤd�v�2y��4��>�o�ՑUƆ�,Z�s��ձ�x���w-�Y�6%zx��zPUH.����l�?���R�Y�.���'�S>�T�Cg;B�rQ�9
��P�q$�B�Āv��W9����2�����[��lr�kfj�eә�{����nF�W�=�hk�*|�/����i��%ﭾ�f���(�R��8����Oz�@.���4S��wP���S��kg0ŋ��xHqr�KdC/:]L��q��_�G"����(���F�l�%)P����[�k�	r�i�:D��wSYB�ޅ$�顐����Ypb�@7�ܧC�M��i�S��o*7s<���3h��`�����L���H8n�7U���TH�~��%�IW��Ox�޾j{�N����}�����/�������ϽN�}�rp1���q��o�x�������x<xۧ#�>H�x��Oq1NN��~���?�O����Y7�E�xx2]������������~<��I������[����G��ɓ��/�(:Vܴ�5R\k��$�|2�+;����X�+w�r�ъ�Vϣ�(�a1%���r��jVY���f���q
�=��-��g4�74��bѝ��uwҔ�0�,��IE���s>
|����܋C ��,�/�Q͌N��W����-���6@>1}z���?�(��x�Q�^�5o�J�"O5�[>F�
}�^JI�s��>�O�q� u(/F��'��N��G)%��Л��Y$ޠ3](����y�U��6���GoĈi��Nd�,�x��=W����2V�2�.����{�[��L���\z��}������+셥sք�P��28�kcҎ���nB��T[dJIR����(�٨���n�&|�s�� e�,���<�_��].�7�u�[��l5�b���}�g1 ���B픸Q{�S�q�L����	Ϳm;��֚S������C����p����%��TIW�i'��8�[�������F�N��Τ�6.Rt���s��ɰ�Tk��֥��&`�4���@�������Xt*"i���ט�LԱt��<���h�N�WN�y�P���W����u�t�+�T*[)٭Tin�x5��	/�4tF�M�������ʍ��=������98��~�A�Ώ��:�vz䀶����a[�x�`i~@#�@&as��5�{�%��<Oy)�4��R������g���>�}�|��W��>�r���Ǐ�@��Q      �	      x�3�4�4�2�B.cNc ���� !��      �	   �  x�u��n�0���S�T��縦6��(9�_$��i�]�0b��@]��O3�ю�h�sA1v��V{�	�f)�A�A{��� �g}1�(mPo��,�Do��iY%m�t����TҦi�� 	�غ�,�A�<���4�G,�$v0/�3W��� � ���x�}ǵ�|���������ޟ��s���e�eg�1n�lH)d���㦮H��a�þ4��H���~G���ud1Jk����à�Ɖ,W,h�K�t�y�s[�\��'�q�J�/\���7��Km~��*��!_C��PG��23ԥIz�t{�7_F���)�ϧv�:�����������7k�Y��뜵u>&��ZJ�0�Q�#B�ڬ|�2����	[Q���f�v�J���J� �Zԉ"�2B�� ����8��M��      �	   r   x�3�tJ�K�WHIUK�K�*M�I�2F�$*���U%*8�&�$*�%&g��%�(8��d�%e&�%rA58e&�敤���L��(����s�B�Ӌ�M�Z���� �q+�      �	      x�3���2�������� ��      �	       x�3�tK,�/JL�I�2�tI-N�sc���� ��	�      �	   ?   x�3�t�/*�W(�I��W�04R�M-N-��2��I,J�K��$�9}SS2��RF&0�=... p?      �	   3   x�3�t�/*�W(�I��W�04R�M-N-��2��MM�L̃K���b���� �f�      �	   s   x�u�9�0Ek�s�Dv�m��44PЀ��K���+���E�^�W.U�5�\��ѽ��ÿ�����@������)�<Բ/�:�-J��v\�����DuF)��m'/      �	   �  x���K��0���\��z�U�v�eVQV�qhFa�iF��V9E.�M7C'���7��W��" 8�=�oA"S�F�8�� 潊6GK� �����~�������4��B(M(���-_>����Jn�6q���:�)uiV�y��el��uX�Y!�z+ $D����OK�~�.����g�E��Ѹ���l�3�9��-�~�,C7\��� ���J��ӧ�O���t�ԥ�j��ٙy�f��bK�G�:gw6�j�mU�i>)�Z�WZ�g ��r���Dݢq��6 n�"a$� ��v/Jѐ����ݿ�z��LI������ٵ��6.���$&2G�$.PQO����^j���[�Rn�p��Z����[�r��{���f� ;��w�]zI��oӷq��a���1����6ڜ��c����⎵��+���wyv��rd��I7M�s���      �	      x������ � �      �	       x�3�t�/*�L�+I�2�t� r�b���� lH      �	   �   x�U�=N1F�S�'ᯎ6B$DVT4�(y=al#�Q��Vt���P��y�{�t`�)������֟�Kx��:�WpW��3k�/���O��֔Ȭed=����2=�Q�����Y|�v^����2������Cy/���B��>p2]rH9�]��t��u�vyJ+��y�l�o䝶��J��V��t�.?߷�/*�܊�/i5	_��*�gw         �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �	           1262    16385 	   pycaejerb    DATABASE     {   CREATE DATABASE pycaejerb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_VE.UTF-8' LC_CTYPE = 'es_VE.UTF-8';
    DROP DATABASE pycaejerb;
             pyuser    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    16417 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         pyuser    false    3            �            1259    16415    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       pyuser    false    3    192            �	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       pyuser    false    191            �            1259    16427    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         pyuser    false    3            �            1259    16425    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       pyuser    false    3    194            �	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       pyuser    false    193            �            1259    16409    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         pyuser    false    3            �            1259    16407    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       pyuser    false    3    190            �	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       pyuser    false    189            �            1259    16435 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         pyuser    false    3            �            1259    16445    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         pyuser    false    3            �            1259    16443    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       pyuser    false    198    3            �	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       pyuser    false    197            �            1259    16433    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       pyuser    false    196    3            �	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       pyuser    false    195            �            1259    16453    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         pyuser    false    3            �            1259    16451 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       pyuser    false    3    200            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       pyuser    false    199            �            1259    16546 	   core_menu    TABLE     �   CREATE TABLE public.core_menu (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    description text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
    DROP TABLE public.core_menu;
       public         pyuser    false    3            �            1259    16544    core_menu_id_seq    SEQUENCE     y   CREATE SEQUENCE public.core_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_menu_id_seq;
       public       pyuser    false    204    3            �	           0    0    core_menu_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_menu_id_seq OWNED BY public.core_menu.id;
            public       pyuser    false    203            �            1259    16658    core_nosotros    TABLE     �   CREATE TABLE public.core_nosotros (
    id integer NOT NULL,
    description text NOT NULL,
    mision text,
    vision text,
    updated timestamp with time zone NOT NULL,
    logo character varying(100)
);
 !   DROP TABLE public.core_nosotros;
       public         pyuser    false    3            �            1259    16656    core_nosotros_id_seq    SEQUENCE     }   CREATE SEQUENCE public.core_nosotros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.core_nosotros_id_seq;
       public       pyuser    false    217    3            �	           0    0    core_nosotros_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.core_nosotros_id_seq OWNED BY public.core_nosotros.id;
            public       pyuser    false    216            �            1259    24834    core_publidad    TABLE     �   CREATE TABLE public.core_publidad (
    id integer NOT NULL,
    banner character varying(100),
    enlace character varying(200),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 !   DROP TABLE public.core_publidad;
       public         pyuser    false    3            �            1259    24832    core_publidad_id_seq    SEQUENCE     }   CREATE SEQUENCE public.core_publidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.core_publidad_id_seq;
       public       pyuser    false    219    3            �	           0    0    core_publidad_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.core_publidad_id_seq OWNED BY public.core_publidad.id;
            public       pyuser    false    218            �            1259    16513    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         pyuser    false    3            �            1259    16511    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       pyuser    false    202    3            �	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       pyuser    false    201            �            1259    16399    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         pyuser    false    3            �            1259    16397    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       pyuser    false    188    3            �	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       pyuser    false    187            �            1259    16388    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         pyuser    false    3            �            1259    16386    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       pyuser    false    186    3            �	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       pyuser    false    185            �            1259    16623    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         pyuser    false    3            �            1259    16647    empresas_empresa    TABLE     V  CREATE TABLE public.empresas_empresa (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    logo character varying(100),
    description text NOT NULL,
    mision text,
    vision text,
    estruc_org text,
    producto text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.empresas_empresa;
       public         pyuser    false    3            �            1259    16645    empresas_empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresas_empresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.empresas_empresa_id_seq;
       public       pyuser    false    215    3            �	           0    0    empresas_empresa_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.empresas_empresa_id_seq OWNED BY public.empresas_empresa.id;
            public       pyuser    false    214            �            1259    16557    news_category    TABLE     �   CREATE TABLE public.news_category (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    description text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 !   DROP TABLE public.news_category;
       public         pyuser    false    3            �            1259    16555    news_category_id_seq    SEQUENCE     }   CREATE SEQUENCE public.news_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.news_category_id_seq;
       public       pyuser    false    206    3            �	           0    0    news_category_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.news_category_id_seq OWNED BY public.news_category.id;
            public       pyuser    false    205            �            1259    16568    news_new    TABLE     $  CREATE TABLE public.news_new (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    description text NOT NULL,
    image character varying(100),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);
    DROP TABLE public.news_new;
       public         pyuser    false    3            �            1259    16579    news_new_category    TABLE     �   CREATE TABLE public.news_new_category (
    id integer NOT NULL,
    new_id integer NOT NULL,
    category_id integer NOT NULL
);
 %   DROP TABLE public.news_new_category;
       public         pyuser    false    3            �            1259    16577    news_new_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_new_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.news_new_category_id_seq;
       public       pyuser    false    210    3            �	           0    0    news_new_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.news_new_category_id_seq OWNED BY public.news_new_category.id;
            public       pyuser    false    209            �            1259    16566    news_new_id_seq    SEQUENCE     x   CREATE SEQUENCE public.news_new_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.news_new_id_seq;
       public       pyuser    false    208    3            �	           0    0    news_new_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.news_new_id_seq OWNED BY public.news_new.id;
            public       pyuser    false    207            �            1259    16607    registration_profile    TABLE     3  CREATE TABLE public.registration_profile (
    id integer NOT NULL,
    cedula integer NOT NULL,
    avatar character varying(100),
    bio text,
    link character varying(200),
    tlf character varying(31),
    nacimiento date NOT NULL,
    user_id integer NOT NULL,
    nombre character varying(150)
);
 (   DROP TABLE public.registration_profile;
       public         pyuser    false    3            �            1259    16605    registration_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.registration_profile_id_seq;
       public       pyuser    false    212    3            �	           0    0    registration_profile_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.registration_profile_id_seq OWNED BY public.registration_profile.id;
            public       pyuser    false    211            �            1259    41218    servicios_banco    TABLE     m   CREATE TABLE public.servicios_banco (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 #   DROP TABLE public.servicios_banco;
       public         pyuser    false    3            �            1259    41216    servicios_banco_id_seq    SEQUENCE        CREATE SEQUENCE public.servicios_banco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.servicios_banco_id_seq;
       public       pyuser    false    3    221            �	           0    0    servicios_banco_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.servicios_banco_id_seq OWNED BY public.servicios_banco.id;
            public       pyuser    false    220            �            1259    41226    servicios_capacidadpago    TABLE     u   CREATE TABLE public.servicios_capacidadpago (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 +   DROP TABLE public.servicios_capacidadpago;
       public         pyuser    false    3            �            1259    41224    servicios_capacidadpago_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_capacidadpago_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.servicios_capacidadpago_id_seq;
       public       pyuser    false    223    3            �	           0    0    servicios_capacidadpago_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.servicios_capacidadpago_id_seq OWNED BY public.servicios_capacidadpago.id;
            public       pyuser    false    222            �            1259    41242    servicios_opinion    TABLE     o   CREATE TABLE public.servicios_opinion (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 %   DROP TABLE public.servicios_opinion;
       public         pyuser    false    3            �            1259    41240    servicios_opinion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_opinion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicios_opinion_id_seq;
       public       pyuser    false    3    225            �	           0    0    servicios_opinion_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicios_opinion_id_seq OWNED BY public.servicios_opinion.id;
            public       pyuser    false    224            �            1259    41250    servicios_plazoordinario    TABLE     v   CREATE TABLE public.servicios_plazoordinario (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 ,   DROP TABLE public.servicios_plazoordinario;
       public         pyuser    false    3            �            1259    41248    servicios_plazoordinario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_plazoordinario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.servicios_plazoordinario_id_seq;
       public       pyuser    false    3    227            �	           0    0    servicios_plazoordinario_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.servicios_plazoordinario_id_seq OWNED BY public.servicios_plazoordinario.id;
            public       pyuser    false    226            �            1259    41258    servicios_plazotienda    TABLE     s   CREATE TABLE public.servicios_plazotienda (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 )   DROP TABLE public.servicios_plazotienda;
       public         pyuser    false    3            �            1259    41256    servicios_plazotienda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_plazotienda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.servicios_plazotienda_id_seq;
       public       pyuser    false    3    229            �	           0    0    servicios_plazotienda_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.servicios_plazotienda_id_seq OWNED BY public.servicios_plazotienda.id;
            public       pyuser    false    228            �            1259    41290    servicios_prestamoafianzado    TABLE     "  CREATE TABLE public.servicios_prestamoafianzado (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    observaciones1 text,
    observaciones2 text,
    observaciones3 text,
    observaciones4 text,
    user_id integer NOT NULL,
    cedula1 integer NOT NULL,
    cedula2 integer,
    cedula3 integer,
    cedula4 integer,
    ciudad character varying(150) NOT NULL,
    estado character varying(150) NOT NULL,
    grado1 character varying(150) NOT NULL,
    grado2 character varying(150),
    grado3 character varying(150),
    grado4 character varying(150),
    monto1 numeric(15,2) NOT NULL,
    monto2 numeric(15,2),
    monto3 numeric(15,2),
    monto4 numeric(15,2),
    nombre1 character varying(150) NOT NULL,
    nombre2 character varying(150),
    nombre3 character varying(150),
    nombre4 character varying(150),
    telefono1 character varying(150) NOT NULL,
    telefono2 character varying(150),
    telefono3 character varying(150),
    telefono4 character varying(150)
);
 /   DROP TABLE public.servicios_prestamoafianzado;
       public         pyuser    false    3            �            1259    41288 "   servicios_prestamoafianzado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_prestamoafianzado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.servicios_prestamoafianzado_id_seq;
       public       pyuser    false    237    3            �	           0    0 "   servicios_prestamoafianzado_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.servicios_prestamoafianzado_id_seq OWNED BY public.servicios_prestamoafianzado.id;
            public       pyuser    false    236            �            1259    41282    servicios_prestamoordinario    TABLE     x  CREATE TABLE public.servicios_prestamoordinario (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    cantidad_letras character varying(150) NOT NULL,
    cantidad_numeros numeric(15,2) NOT NULL,
    cuenta character varying(150) NOT NULL,
    total_haberes numeric(15,2) NOT NULL,
    cantidad_solicitar numeric(15,2) NOT NULL,
    cantidad_aprobada numeric(15,2) NOT NULL,
    banco_id integer NOT NULL,
    capacidad_pago_id integer,
    opinion_analista_id integer,
    opinion_gerente_id integer,
    prestamo_ordinario_id integer NOT NULL,
    tipo_cuenta_id integer NOT NULL,
    user_id integer NOT NULL,
    ciudad character varying(150) NOT NULL,
    estado character varying(150) NOT NULL,
    faxofi character varying(150),
    tlfofi character varying(150),
    unidad character varying(150) NOT NULL
);
 /   DROP TABLE public.servicios_prestamoordinario;
       public         pyuser    false    3            �            1259    41280 "   servicios_prestamoordinario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_prestamoordinario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.servicios_prestamoordinario_id_seq;
       public       pyuser    false    3    235            �	           0    0 "   servicios_prestamoordinario_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.servicios_prestamoordinario_id_seq OWNED BY public.servicios_prestamoordinario.id;
            public       pyuser    false    234            �            1259    41274    servicios_prestamotienda    TABLE     T  CREATE TABLE public.servicios_prestamotienda (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    cantidad_letras character varying(150) NOT NULL,
    cantidad_numeros numeric(15,2) NOT NULL,
    casa_comercial character varying(150),
    total_haberes numeric(15,2) NOT NULL,
    cantidad_solicitar numeric(15,2) NOT NULL,
    cantidad_aprobada numeric(15,2) NOT NULL,
    capacidad_pago_id integer,
    opinion_analista_id integer,
    opinion_gerente_id integer,
    prestamo_tienda_id integer NOT NULL,
    user_id integer NOT NULL,
    ciudad character varying(150) NOT NULL,
    estado character varying(150) NOT NULL,
    faxofi character varying(150),
    tlfofi character varying(150),
    unidad character varying(150) NOT NULL,
    tipo_prestamo_id integer NOT NULL
);
 ,   DROP TABLE public.servicios_prestamotienda;
       public         pyuser    false    3            �            1259    41272    servicios_prestamotienda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_prestamotienda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.servicios_prestamotienda_id_seq;
       public       pyuser    false    233    3            �	           0    0    servicios_prestamotienda_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.servicios_prestamotienda_id_seq OWNED BY public.servicios_prestamotienda.id;
            public       pyuser    false    232            �            1259    41266    servicios_tipocuenta    TABLE     r   CREATE TABLE public.servicios_tipocuenta (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 (   DROP TABLE public.servicios_tipocuenta;
       public         pyuser    false    3            �            1259    41264    servicios_tipocuenta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_tipocuenta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.servicios_tipocuenta_id_seq;
       public       pyuser    false    3    231            �	           0    0    servicios_tipocuenta_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.servicios_tipocuenta_id_seq OWNED BY public.servicios_tipocuenta.id;
            public       pyuser    false    230            �            1259    49750    servicios_tipoprestamo    TABLE     t   CREATE TABLE public.servicios_tipoprestamo (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 *   DROP TABLE public.servicios_tipoprestamo;
       public         pyuser    false    3            �            1259    49748    servicios_tipoprestamo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_tipoprestamo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.servicios_tipoprestamo_id_seq;
       public       pyuser    false    239    3            �	           0    0    servicios_tipoprestamo_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.servicios_tipoprestamo_id_seq OWNED BY public.servicios_tipoprestamo.id;
            public       pyuser    false    238            �           2604    16420    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    191    192    192            �           2604    16430    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    194    193    194            �           2604    16412    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    189    190    190            �           2604    16438    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    195    196    196            �           2604    16448    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    198    197    198            �           2604    16456    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    200    199    200            �           2604    16549    core_menu id    DEFAULT     l   ALTER TABLE ONLY public.core_menu ALTER COLUMN id SET DEFAULT nextval('public.core_menu_id_seq'::regclass);
 ;   ALTER TABLE public.core_menu ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    203    204    204            �           2604    16661    core_nosotros id    DEFAULT     t   ALTER TABLE ONLY public.core_nosotros ALTER COLUMN id SET DEFAULT nextval('public.core_nosotros_id_seq'::regclass);
 ?   ALTER TABLE public.core_nosotros ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    216    217    217            �           2604    24837    core_publidad id    DEFAULT     t   ALTER TABLE ONLY public.core_publidad ALTER COLUMN id SET DEFAULT nextval('public.core_publidad_id_seq'::regclass);
 ?   ALTER TABLE public.core_publidad ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    218    219    219            �           2604    16516    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    202    201    202            �           2604    16402    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    188    187    188            �           2604    16391    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    185    186    186            �           2604    16650    empresas_empresa id    DEFAULT     z   ALTER TABLE ONLY public.empresas_empresa ALTER COLUMN id SET DEFAULT nextval('public.empresas_empresa_id_seq'::regclass);
 B   ALTER TABLE public.empresas_empresa ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    215    214    215            �           2604    16560    news_category id    DEFAULT     t   ALTER TABLE ONLY public.news_category ALTER COLUMN id SET DEFAULT nextval('public.news_category_id_seq'::regclass);
 ?   ALTER TABLE public.news_category ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    205    206    206            �           2604    16571    news_new id    DEFAULT     j   ALTER TABLE ONLY public.news_new ALTER COLUMN id SET DEFAULT nextval('public.news_new_id_seq'::regclass);
 :   ALTER TABLE public.news_new ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    208    207    208            �           2604    16582    news_new_category id    DEFAULT     |   ALTER TABLE ONLY public.news_new_category ALTER COLUMN id SET DEFAULT nextval('public.news_new_category_id_seq'::regclass);
 C   ALTER TABLE public.news_new_category ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    209    210    210            �           2604    16610    registration_profile id    DEFAULT     �   ALTER TABLE ONLY public.registration_profile ALTER COLUMN id SET DEFAULT nextval('public.registration_profile_id_seq'::regclass);
 F   ALTER TABLE public.registration_profile ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    211    212    212            �           2604    41221    servicios_banco id    DEFAULT     x   ALTER TABLE ONLY public.servicios_banco ALTER COLUMN id SET DEFAULT nextval('public.servicios_banco_id_seq'::regclass);
 A   ALTER TABLE public.servicios_banco ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    220    221    221            �           2604    41229    servicios_capacidadpago id    DEFAULT     �   ALTER TABLE ONLY public.servicios_capacidadpago ALTER COLUMN id SET DEFAULT nextval('public.servicios_capacidadpago_id_seq'::regclass);
 I   ALTER TABLE public.servicios_capacidadpago ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    223    222    223            �           2604    41245    servicios_opinion id    DEFAULT     |   ALTER TABLE ONLY public.servicios_opinion ALTER COLUMN id SET DEFAULT nextval('public.servicios_opinion_id_seq'::regclass);
 C   ALTER TABLE public.servicios_opinion ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    225    224    225            �           2604    41253    servicios_plazoordinario id    DEFAULT     �   ALTER TABLE ONLY public.servicios_plazoordinario ALTER COLUMN id SET DEFAULT nextval('public.servicios_plazoordinario_id_seq'::regclass);
 J   ALTER TABLE public.servicios_plazoordinario ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    226    227    227            �           2604    41261    servicios_plazotienda id    DEFAULT     �   ALTER TABLE ONLY public.servicios_plazotienda ALTER COLUMN id SET DEFAULT nextval('public.servicios_plazotienda_id_seq'::regclass);
 G   ALTER TABLE public.servicios_plazotienda ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    228    229    229            �           2604    41293    servicios_prestamoafianzado id    DEFAULT     �   ALTER TABLE ONLY public.servicios_prestamoafianzado ALTER COLUMN id SET DEFAULT nextval('public.servicios_prestamoafianzado_id_seq'::regclass);
 M   ALTER TABLE public.servicios_prestamoafianzado ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    237    236    237            �           2604    41285    servicios_prestamoordinario id    DEFAULT     �   ALTER TABLE ONLY public.servicios_prestamoordinario ALTER COLUMN id SET DEFAULT nextval('public.servicios_prestamoordinario_id_seq'::regclass);
 M   ALTER TABLE public.servicios_prestamoordinario ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    234    235    235            �           2604    41277    servicios_prestamotienda id    DEFAULT     �   ALTER TABLE ONLY public.servicios_prestamotienda ALTER COLUMN id SET DEFAULT nextval('public.servicios_prestamotienda_id_seq'::regclass);
 J   ALTER TABLE public.servicios_prestamotienda ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    233    232    233            �           2604    41269    servicios_tipocuenta id    DEFAULT     �   ALTER TABLE ONLY public.servicios_tipocuenta ALTER COLUMN id SET DEFAULT nextval('public.servicios_tipocuenta_id_seq'::regclass);
 F   ALTER TABLE public.servicios_tipocuenta ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    231    230    231            �           2604    49753    servicios_tipoprestamo id    DEFAULT     �   ALTER TABLE ONLY public.servicios_tipoprestamo ALTER COLUMN id SET DEFAULT nextval('public.servicios_tipoprestamo_id_seq'::regclass);
 H   ALTER TABLE public.servicios_tipoprestamo ALTER COLUMN id DROP DEFAULT;
       public       pyuser    false    239    238    239            �	          0    16417 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       pyuser    false    192   �       �	          0    16427    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       pyuser    false    194   �       �	          0    16409    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       pyuser    false    190   E       �	          0    16435 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       pyuser    false    196   	       �	          0    16445    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       pyuser    false    198          �	          0    16453    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       pyuser    false    200   @       �	          0    16546 	   core_menu 
   TABLE DATA               L   COPY public.core_menu (id, name, description, created, updated) FROM stdin;
    public       pyuser    false    204   �       �	          0    16658    core_nosotros 
   TABLE DATA               W   COPY public.core_nosotros (id, description, mision, vision, updated, logo) FROM stdin;
    public       pyuser    false    217   g       �	          0    24834    core_publidad 
   TABLE DATA               M   COPY public.core_publidad (id, banner, enlace, created, updated) FROM stdin;
    public       pyuser    false    219   �       �	          0    16513    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       pyuser    false    202   �       �	          0    16399    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       pyuser    false    188   �       �	          0    16388    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       pyuser    false    186   �       �	          0    16623    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       pyuser    false    213   �
       �	          0    16647    empresas_empresa 
   TABLE DATA               �   COPY public.empresas_empresa (id, nombre, logo, description, mision, vision, estruc_org, producto, created, updated) FROM stdin;
    public       pyuser    false    215           �	          0    16557    news_category 
   TABLE DATA               P   COPY public.news_category (id, name, description, created, updated) FROM stdin;
    public       pyuser    false    206   �
       �	          0    16568    news_new 
   TABLE DATA               ^   COPY public.news_new (id, title, description, image, created, updated, author_id) FROM stdin;
    public       pyuser    false    208   �       �	          0    16579    news_new_category 
   TABLE DATA               D   COPY public.news_new_category (id, new_id, category_id) FROM stdin;
    public       pyuser    false    210   �
       �	          0    16607    registration_profile 
   TABLE DATA               o   COPY public.registration_profile (id, cedula, avatar, bio, link, tlf, nacimiento, user_id, nombre) FROM stdin;
    public       pyuser    false    212          �	          0    41218    servicios_banco 
   TABLE DATA               5   COPY public.servicios_banco (id, nombre) FROM stdin;
    public       pyuser    false    221   �       �	          0    41226    servicios_capacidadpago 
   TABLE DATA               =   COPY public.servicios_capacidadpago (id, nombre) FROM stdin;
    public       pyuser    false    223   R       �	          0    41242    servicios_opinion 
   TABLE DATA               7   COPY public.servicios_opinion (id, nombre) FROM stdin;
    public       pyuser    false    225   y       �	          0    41250    servicios_plazoordinario 
   TABLE DATA               >   COPY public.servicios_plazoordinario (id, nombre) FROM stdin;
    public       pyuser    false    227   �       �	          0    41258    servicios_plazotienda 
   TABLE DATA               ;   COPY public.servicios_plazotienda (id, nombre) FROM stdin;
    public       pyuser    false    229   �       �	          0    41290    servicios_prestamoafianzado 
   TABLE DATA               X  COPY public.servicios_prestamoafianzado (id, created, updated, observaciones1, observaciones2, observaciones3, observaciones4, user_id, cedula1, cedula2, cedula3, cedula4, ciudad, estado, grado1, grado2, grado3, grado4, monto1, monto2, monto3, monto4, nombre1, nombre2, nombre3, nombre4, telefono1, telefono2, telefono3, telefono4) FROM stdin;
    public       pyuser    false    237   ;       �	          0    41282    servicios_prestamoordinario 
   TABLE DATA               J  COPY public.servicios_prestamoordinario (id, created, updated, cantidad_letras, cantidad_numeros, cuenta, total_haberes, cantidad_solicitar, cantidad_aprobada, banco_id, capacidad_pago_id, opinion_analista_id, opinion_gerente_id, prestamo_ordinario_id, tipo_cuenta_id, user_id, ciudad, estado, faxofi, tlfofi, unidad) FROM stdin;
    public       pyuser    false    235   �       �	          0    41274    servicios_prestamotienda 
   TABLE DATA               D  COPY public.servicios_prestamotienda (id, created, updated, cantidad_letras, cantidad_numeros, casa_comercial, total_haberes, cantidad_solicitar, cantidad_aprobada, capacidad_pago_id, opinion_analista_id, opinion_gerente_id, prestamo_tienda_id, user_id, ciudad, estado, faxofi, tlfofi, unidad, tipo_prestamo_id) FROM stdin;
    public       pyuser    false    233   �        �	          0    41266    servicios_tipocuenta 
   TABLE DATA               :   COPY public.servicios_tipocuenta (id, nombre) FROM stdin;
    public       pyuser    false    231   �        �	          0    49750    servicios_tipoprestamo 
   TABLE DATA               <   COPY public.servicios_tipoprestamo (id, nombre) FROM stdin;
    public       pyuser    false    239   �        �	           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
            public       pyuser    false    191            �	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 13, true);
            public       pyuser    false    193            �	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);
            public       pyuser    false    189            �	           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);
            public       pyuser    false    197            �	           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 36, true);
            public       pyuser    false    195            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 44, true);
            public       pyuser    false    199            �	           0    0    core_menu_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.core_menu_id_seq', 3, true);
            public       pyuser    false    203            �	           0    0    core_nosotros_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_nosotros_id_seq', 1, true);
            public       pyuser    false    216            �	           0    0    core_publidad_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_publidad_id_seq', 1, false);
            public       pyuser    false    218            �	           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 168, true);
            public       pyuser    false    201            �	           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
            public       pyuser    false    187            �	           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 65, true);
            public       pyuser    false    185            �	           0    0    empresas_empresa_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.empresas_empresa_id_seq', 6, true);
            public       pyuser    false    214            �	           0    0    news_category_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.news_category_id_seq', 4, true);
            public       pyuser    false    205            �	           0    0    news_new_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.news_new_category_id_seq', 3, true);
            public       pyuser    false    209            �	           0    0    news_new_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.news_new_id_seq', 3, true);
            public       pyuser    false    207            �	           0    0    registration_profile_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.registration_profile_id_seq', 37, true);
            public       pyuser    false    211             
           0    0    servicios_banco_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.servicios_banco_id_seq', 5, true);
            public       pyuser    false    220            
           0    0    servicios_capacidadpago_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.servicios_capacidadpago_id_seq', 2, true);
            public       pyuser    false    222            
           0    0    servicios_opinion_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.servicios_opinion_id_seq', 2, true);
            public       pyuser    false    224            
           0    0    servicios_plazoordinario_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.servicios_plazoordinario_id_seq', 3, true);
            public       pyuser    false    226            
           0    0    servicios_plazotienda_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.servicios_plazotienda_id_seq', 2, true);
            public       pyuser    false    228            
           0    0 "   servicios_prestamoafianzado_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.servicios_prestamoafianzado_id_seq', 6, true);
            public       pyuser    false    236            
           0    0 "   servicios_prestamoordinario_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.servicios_prestamoordinario_id_seq', 10, true);
            public       pyuser    false    234            
           0    0    servicios_prestamotienda_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.servicios_prestamotienda_id_seq', 9, true);
            public       pyuser    false    232            
           0    0    servicios_tipocuenta_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.servicios_tipocuenta_id_seq', 2, true);
            public       pyuser    false    230            	
           0    0    servicios_tipoprestamo_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.servicios_tipoprestamo_id_seq', 14, true);
            public       pyuser    false    238            �           2606    16542    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         pyuser    false    192            �           2606    16479 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         pyuser    false    194    194            �           2606    16432 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         pyuser    false    194            �           2606    16422    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         pyuser    false    192            �           2606    16465 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         pyuser    false    190    190            �           2606    16414 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         pyuser    false    190            �           2606    16450 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         pyuser    false    198            �           2606    16494 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         pyuser    false    198    198            �           2606    16440    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         pyuser    false    196            �           2606    16458 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         pyuser    false    200            �           2606    16508 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         pyuser    false    200    200            �           2606    16536     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         pyuser    false    196            �           2606    16554    core_menu core_menu_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_menu
    ADD CONSTRAINT core_menu_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_menu DROP CONSTRAINT core_menu_pkey;
       public         pyuser    false    204            �           2606    16666     core_nosotros core_nosotros_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.core_nosotros
    ADD CONSTRAINT core_nosotros_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.core_nosotros DROP CONSTRAINT core_nosotros_pkey;
       public         pyuser    false    217            �           2606    24839     core_publidad core_publidad_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.core_publidad
    ADD CONSTRAINT core_publidad_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.core_publidad DROP CONSTRAINT core_publidad_pkey;
       public         pyuser    false    219            �           2606    16522 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         pyuser    false    202            �           2606    16406 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         pyuser    false    188    188            �           2606    16404 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         pyuser    false    188            �           2606    16396 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         pyuser    false    186            �           2606    16630 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         pyuser    false    213            �           2606    16655 &   empresas_empresa empresas_empresa_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.empresas_empresa
    ADD CONSTRAINT empresas_empresa_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.empresas_empresa DROP CONSTRAINT empresas_empresa_pkey;
       public         pyuser    false    215            �           2606    16565     news_category news_category_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.news_category
    ADD CONSTRAINT news_category_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.news_category DROP CONSTRAINT news_category_pkey;
       public         pyuser    false    206            �           2606    16602 D   news_new_category news_new_category_new_id_category_id_797d13e7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.news_new_category
    ADD CONSTRAINT news_new_category_new_id_category_id_797d13e7_uniq UNIQUE (new_id, category_id);
 n   ALTER TABLE ONLY public.news_new_category DROP CONSTRAINT news_new_category_new_id_category_id_797d13e7_uniq;
       public         pyuser    false    210    210            �           2606    16584 (   news_new_category news_new_category_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.news_new_category
    ADD CONSTRAINT news_new_category_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.news_new_category DROP CONSTRAINT news_new_category_pkey;
       public         pyuser    false    210            �           2606    16576    news_new news_new_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.news_new DROP CONSTRAINT news_new_pkey;
       public         pyuser    false    208            �           2606    16615 .   registration_profile registration_profile_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_pkey;
       public         pyuser    false    212            �           2606    16617 5   registration_profile registration_profile_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_user_id_key;
       public         pyuser    false    212            �           2606    41223 $   servicios_banco servicios_banco_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.servicios_banco
    ADD CONSTRAINT servicios_banco_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.servicios_banco DROP CONSTRAINT servicios_banco_pkey;
       public         pyuser    false    221            �           2606    41231 4   servicios_capacidadpago servicios_capacidadpago_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.servicios_capacidadpago
    ADD CONSTRAINT servicios_capacidadpago_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.servicios_capacidadpago DROP CONSTRAINT servicios_capacidadpago_pkey;
       public         pyuser    false    223            �           2606    41247 (   servicios_opinion servicios_opinion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.servicios_opinion
    ADD CONSTRAINT servicios_opinion_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.servicios_opinion DROP CONSTRAINT servicios_opinion_pkey;
       public         pyuser    false    225            �           2606    41255 6   servicios_plazoordinario servicios_plazoordinario_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.servicios_plazoordinario
    ADD CONSTRAINT servicios_plazoordinario_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.servicios_plazoordinario DROP CONSTRAINT servicios_plazoordinario_pkey;
       public         pyuser    false    227            �           2606    41263 0   servicios_plazotienda servicios_plazotienda_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.servicios_plazotienda
    ADD CONSTRAINT servicios_plazotienda_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.servicios_plazotienda DROP CONSTRAINT servicios_plazotienda_pkey;
       public         pyuser    false    229            	           2606    41298 <   servicios_prestamoafianzado servicios_prestamoafianzado_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.servicios_prestamoafianzado
    ADD CONSTRAINT servicios_prestamoafianzado_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.servicios_prestamoafianzado DROP CONSTRAINT servicios_prestamoafianzado_pkey;
       public         pyuser    false    237            �           2606    41287 <   servicios_prestamoordinario servicios_prestamoordinario_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoordinario_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoordinario_pkey;
       public         pyuser    false    235            �           2606    41279 6   servicios_prestamotienda servicios_prestamotienda_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamotienda_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamotienda_pkey;
       public         pyuser    false    233            �           2606    41271 .   servicios_tipocuenta servicios_tipocuenta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.servicios_tipocuenta
    ADD CONSTRAINT servicios_tipocuenta_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.servicios_tipocuenta DROP CONSTRAINT servicios_tipocuenta_pkey;
       public         pyuser    false    231            	           2606    49755 2   servicios_tipoprestamo servicios_tipoprestamo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.servicios_tipoprestamo
    ADD CONSTRAINT servicios_tipoprestamo_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.servicios_tipoprestamo DROP CONSTRAINT servicios_tipoprestamo_pkey;
       public         pyuser    false    239            �           1259    16543    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         pyuser    false    192            �           1259    16480 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         pyuser    false    194            �           1259    16481 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         pyuser    false    194            �           1259    16466 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         pyuser    false    190            �           1259    16496 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         pyuser    false    198            �           1259    16495 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         pyuser    false    198            �           1259    16510 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         pyuser    false    200            �           1259    16509 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         pyuser    false    200            �           1259    16537     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         pyuser    false    196            �           1259    16533 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         pyuser    false    202            �           1259    16534 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         pyuser    false    202            �           1259    16632 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         pyuser    false    213            �           1259    16631 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         pyuser    false    213            �           1259    16590    news_new_author_id_4fb77245    INDEX     U   CREATE INDEX news_new_author_id_4fb77245 ON public.news_new USING btree (author_id);
 /   DROP INDEX public.news_new_author_id_4fb77245;
       public         pyuser    false    208            �           1259    16604 &   news_new_category_category_id_13cc96a9    INDEX     k   CREATE INDEX news_new_category_category_id_13cc96a9 ON public.news_new_category USING btree (category_id);
 :   DROP INDEX public.news_new_category_category_id_13cc96a9;
       public         pyuser    false    210            �           1259    16603 !   news_new_category_new_id_3ce848a9    INDEX     a   CREATE INDEX news_new_category_new_id_3ce848a9 ON public.news_new_category USING btree (new_id);
 5   DROP INDEX public.news_new_category_new_id_3ce848a9;
       public         pyuser    false    210            	           1259    41406 ,   servicios_prestamoafianzado_user_id_acde9cdf    INDEX     w   CREATE INDEX servicios_prestamoafianzado_user_id_acde9cdf ON public.servicios_prestamoafianzado USING btree (user_id);
 @   DROP INDEX public.servicios_prestamoafianzado_user_id_acde9cdf;
       public         pyuser    false    237            �           1259    41370 -   servicios_prestamoordinario_banco_id_ea310bc5    INDEX     y   CREATE INDEX servicios_prestamoordinario_banco_id_ea310bc5 ON public.servicios_prestamoordinario USING btree (banco_id);
 A   DROP INDEX public.servicios_prestamoordinario_banco_id_ea310bc5;
       public         pyuser    false    235            �           1259    41371 6   servicios_prestamoordinario_capacidad_pago_id_e0793225    INDEX     �   CREATE INDEX servicios_prestamoordinario_capacidad_pago_id_e0793225 ON public.servicios_prestamoordinario USING btree (capacidad_pago_id);
 J   DROP INDEX public.servicios_prestamoordinario_capacidad_pago_id_e0793225;
       public         pyuser    false    235            �           1259    41372 8   servicios_prestamoordinario_opinion_analista_id_3f5547d2    INDEX     �   CREATE INDEX servicios_prestamoordinario_opinion_analista_id_3f5547d2 ON public.servicios_prestamoordinario USING btree (opinion_analista_id);
 L   DROP INDEX public.servicios_prestamoordinario_opinion_analista_id_3f5547d2;
       public         pyuser    false    235            �           1259    41373 7   servicios_prestamoordinario_opinion_gerente_id_809709da    INDEX     �   CREATE INDEX servicios_prestamoordinario_opinion_gerente_id_809709da ON public.servicios_prestamoordinario USING btree (opinion_gerente_id);
 K   DROP INDEX public.servicios_prestamoordinario_opinion_gerente_id_809709da;
       public         pyuser    false    235            �           1259    41374 :   servicios_prestamoordinario_prestamo_ordinario_id_d224d46d    INDEX     �   CREATE INDEX servicios_prestamoordinario_prestamo_ordinario_id_d224d46d ON public.servicios_prestamoordinario USING btree (prestamo_ordinario_id);
 N   DROP INDEX public.servicios_prestamoordinario_prestamo_ordinario_id_d224d46d;
       public         pyuser    false    235            �           1259    41375 3   servicios_prestamoordinario_tipo_cuenta_id_52d4a4e3    INDEX     �   CREATE INDEX servicios_prestamoordinario_tipo_cuenta_id_52d4a4e3 ON public.servicios_prestamoordinario USING btree (tipo_cuenta_id);
 G   DROP INDEX public.servicios_prestamoordinario_tipo_cuenta_id_52d4a4e3;
       public         pyuser    false    235             	           1259    41376 ,   servicios_prestamoordinario_user_id_7cdc0426    INDEX     w   CREATE INDEX servicios_prestamoordinario_user_id_7cdc0426 ON public.servicios_prestamoordinario USING btree (user_id);
 @   DROP INDEX public.servicios_prestamoordinario_user_id_7cdc0426;
       public         pyuser    false    235            �           1259    41330 3   servicios_prestamotienda_capacidad_pago_id_a4804756    INDEX     �   CREATE INDEX servicios_prestamotienda_capacidad_pago_id_a4804756 ON public.servicios_prestamotienda USING btree (capacidad_pago_id);
 G   DROP INDEX public.servicios_prestamotienda_capacidad_pago_id_a4804756;
       public         pyuser    false    233            �           1259    41331 5   servicios_prestamotienda_opinion_analista_id_21b538f8    INDEX     �   CREATE INDEX servicios_prestamotienda_opinion_analista_id_21b538f8 ON public.servicios_prestamotienda USING btree (opinion_analista_id);
 I   DROP INDEX public.servicios_prestamotienda_opinion_analista_id_21b538f8;
       public         pyuser    false    233            �           1259    41332 4   servicios_prestamotienda_opinion_gerente_id_cf4a235b    INDEX     �   CREATE INDEX servicios_prestamotienda_opinion_gerente_id_cf4a235b ON public.servicios_prestamotienda USING btree (opinion_gerente_id);
 H   DROP INDEX public.servicios_prestamotienda_opinion_gerente_id_cf4a235b;
       public         pyuser    false    233            �           1259    41333 4   servicios_prestamotienda_prestamo_tienda_id_02b4368b    INDEX     �   CREATE INDEX servicios_prestamotienda_prestamo_tienda_id_02b4368b ON public.servicios_prestamotienda USING btree (prestamo_tienda_id);
 H   DROP INDEX public.servicios_prestamotienda_prestamo_tienda_id_02b4368b;
       public         pyuser    false    233            �           1259    49769 2   servicios_prestamotienda_tipo_prestamo_id_faec6e68    INDEX     �   CREATE INDEX servicios_prestamotienda_tipo_prestamo_id_faec6e68 ON public.servicios_prestamotienda USING btree (tipo_prestamo_id);
 F   DROP INDEX public.servicios_prestamotienda_tipo_prestamo_id_faec6e68;
       public         pyuser    false    233            �           1259    41334 )   servicios_prestamotienda_user_id_0cd3d955    INDEX     q   CREATE INDEX servicios_prestamotienda_user_id_0cd3d955 ON public.servicios_prestamotienda USING btree (user_id);
 =   DROP INDEX public.servicios_prestamotienda_user_id_0cd3d955;
       public         pyuser    false    233            	           2606    16473 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       pyuser    false    194    190    2216            	           2606    16468 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       pyuser    false    194    192    2221            	           2606    16459 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       pyuser    false    2211    188    190            
	           2606    16488 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       pyuser    false    198    2221    192            		           2606    16483 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       pyuser    false    196    2229    198            	           2606    16502 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       pyuser    false    190    2216    200            	           2606    16497 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       pyuser    false    2229    200    196            	           2606    16523 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       pyuser    false    2211    202    188            	           2606    16528 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       pyuser    false    2229    202    196            	           2606    16585 4   news_new news_new_author_id_4fb77245_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_author_id_4fb77245_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.news_new DROP CONSTRAINT news_new_author_id_4fb77245_fk_auth_user_id;
       public       pyuser    false    196    208    2229            	           2606    16596 L   news_new_category news_new_category_category_id_13cc96a9_fk_news_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_new_category
    ADD CONSTRAINT news_new_category_category_id_13cc96a9_fk_news_category_id FOREIGN KEY (category_id) REFERENCES public.news_category(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.news_new_category DROP CONSTRAINT news_new_category_category_id_13cc96a9_fk_news_category_id;
       public       pyuser    false    210    206    2252            	           2606    16591 B   news_new_category news_new_category_new_id_3ce848a9_fk_news_new_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_new_category
    ADD CONSTRAINT news_new_category_new_id_3ce848a9_fk_news_new_id FOREIGN KEY (new_id) REFERENCES public.news_new(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.news_new_category DROP CONSTRAINT news_new_category_new_id_3ce848a9_fk_news_new_id;
       public       pyuser    false    2255    210    208            	           2606    16640 J   registration_profile registration_profile_user_id_e133ce43_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_user_id_e133ce43_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_user_id_e133ce43_fk_auth_user_id;
       public       pyuser    false    196    212    2229             	           2606    41397 X   servicios_prestamoafianzado servicios_prestamoafianzado_user_id_acde9cdf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoafianzado
    ADD CONSTRAINT servicios_prestamoafianzado_user_id_acde9cdf_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoafianzado DROP CONSTRAINT servicios_prestamoafianzado_user_id_acde9cdf_fk_auth_user_id;
       public       pyuser    false    196    2229    237            	           2606    41335 O   servicios_prestamoordinario servicios_prestamoor_banco_id_ea310bc5_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_banco_id_ea310bc5_fk_servicios FOREIGN KEY (banco_id) REFERENCES public.servicios_banco(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_banco_id_ea310bc5_fk_servicios;
       public       pyuser    false    235    221    2277            	           2606    41340 X   servicios_prestamoordinario servicios_prestamoor_capacidad_pago_id_e0793225_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_capacidad_pago_id_e0793225_fk_servicios FOREIGN KEY (capacidad_pago_id) REFERENCES public.servicios_capacidadpago(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_capacidad_pago_id_e0793225_fk_servicios;
       public       pyuser    false    235    223    2279            	           2606    41345 Z   servicios_prestamoordinario servicios_prestamoor_opinion_analista_id_3f5547d2_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_opinion_analista_id_3f5547d2_fk_servicios FOREIGN KEY (opinion_analista_id) REFERENCES public.servicios_opinion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_opinion_analista_id_3f5547d2_fk_servicios;
       public       pyuser    false    235    225    2281            	           2606    41350 Y   servicios_prestamoordinario servicios_prestamoor_opinion_gerente_id_809709da_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_opinion_gerente_id_809709da_fk_servicios FOREIGN KEY (opinion_gerente_id) REFERENCES public.servicios_opinion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_opinion_gerente_id_809709da_fk_servicios;
       public       pyuser    false    235    225    2281            	           2606    41355 [   servicios_prestamoordinario servicios_prestamoor_prestamo_ordinario_i_d224d46d_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_prestamo_ordinario_i_d224d46d_fk_servicios FOREIGN KEY (prestamo_ordinario_id) REFERENCES public.servicios_plazoordinario(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_prestamo_ordinario_i_d224d46d_fk_servicios;
       public       pyuser    false    227    2283    235            	           2606    41360 U   servicios_prestamoordinario servicios_prestamoor_tipo_cuenta_id_52d4a4e3_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoor_tipo_cuenta_id_52d4a4e3_fk_servicios FOREIGN KEY (tipo_cuenta_id) REFERENCES public.servicios_tipocuenta(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoor_tipo_cuenta_id_52d4a4e3_fk_servicios;
       public       pyuser    false    2287    231    235            	           2606    41365 X   servicios_prestamoordinario servicios_prestamoordinario_user_id_7cdc0426_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamoordinario
    ADD CONSTRAINT servicios_prestamoordinario_user_id_7cdc0426_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamoordinario DROP CONSTRAINT servicios_prestamoordinario_user_id_7cdc0426_fk_auth_user_id;
       public       pyuser    false    2229    235    196            	           2606    41305 U   servicios_prestamotienda servicios_prestamoti_capacidad_pago_id_a4804756_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_capacidad_pago_id_a4804756_fk_servicios FOREIGN KEY (capacidad_pago_id) REFERENCES public.servicios_capacidadpago(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_capacidad_pago_id_a4804756_fk_servicios;
       public       pyuser    false    223    2279    233            	           2606    41310 W   servicios_prestamotienda servicios_prestamoti_opinion_analista_id_21b538f8_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_opinion_analista_id_21b538f8_fk_servicios FOREIGN KEY (opinion_analista_id) REFERENCES public.servicios_opinion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_opinion_analista_id_21b538f8_fk_servicios;
       public       pyuser    false    2281    233    225            	           2606    41315 V   servicios_prestamotienda servicios_prestamoti_opinion_gerente_id_cf4a235b_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_opinion_gerente_id_cf4a235b_fk_servicios FOREIGN KEY (opinion_gerente_id) REFERENCES public.servicios_opinion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_opinion_gerente_id_cf4a235b_fk_servicios;
       public       pyuser    false    2281    233    225            	           2606    41320 V   servicios_prestamotienda servicios_prestamoti_prestamo_tienda_id_02b4368b_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_prestamo_tienda_id_02b4368b_fk_servicios FOREIGN KEY (prestamo_tienda_id) REFERENCES public.servicios_plazotienda(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_prestamo_tienda_id_02b4368b_fk_servicios;
       public       pyuser    false    2285    229    233            	           2606    49770 T   servicios_prestamotienda servicios_prestamoti_tipo_prestamo_id_faec6e68_fk_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamoti_tipo_prestamo_id_faec6e68_fk_servicios FOREIGN KEY (tipo_prestamo_id) REFERENCES public.servicios_tipoprestamo(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamoti_tipo_prestamo_id_faec6e68_fk_servicios;
       public       pyuser    false    2309    233    239            	           2606    41325 R   servicios_prestamotienda servicios_prestamotienda_user_id_0cd3d955_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios_prestamotienda
    ADD CONSTRAINT servicios_prestamotienda_user_id_0cd3d955_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.servicios_prestamotienda DROP CONSTRAINT servicios_prestamotienda_user_id_0cd3d955_fk_auth_user_id;
       public       pyuser    false    233    196    2229           