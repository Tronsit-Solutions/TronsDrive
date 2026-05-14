--
-- PostgreSQL database dump
--

\restrict eFsrMJNzYP6r4HPc3l5CQG06NH51Sg4ldzyDMxbNlJHlhuT6oyz381djazBo7Xe

-- Dumped from database version 14.22 (Ubuntu 14.22-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.22 (Ubuntu 14.22-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO tronsit;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO tronsit;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO tronsit;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO tronsit;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO tronsit;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO tronsit;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: activities; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.activities (
    id bigint NOT NULL,
    user_id bigint,
    subject_type character varying NOT NULL,
    subject_id bigint NOT NULL,
    action character varying NOT NULL,
    description text,
    metadata text,
    ip_address character varying,
    user_agent character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    vendor_id bigint
);


ALTER TABLE public.activities OWNER TO tronsit;

--
-- Name: activities_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activities_id_seq OWNER TO tronsit;

--
-- Name: activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;


--
-- Name: admins; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.admins (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    first_name character varying,
    last_name character varying,
    role_type character varying DEFAULT 'admin'::character varying
);


ALTER TABLE public.admins OWNER TO tronsit;

--
-- Name: admins_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.admins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admins_id_seq OWNER TO tronsit;

--
-- Name: admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.admins_id_seq OWNED BY public.admins.id;


--
-- Name: announcements; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.announcements (
    id bigint NOT NULL,
    message text,
    ends_at timestamp(6) without time zone,
    active boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.announcements OWNER TO tronsit;

--
-- Name: announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.announcements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_id_seq OWNER TO tronsit;

--
-- Name: announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.announcements_id_seq OWNED BY public.announcements.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO tronsit;

--
-- Name: blogs; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.blogs (
    id bigint NOT NULL,
    author_name character varying,
    title character varying,
    slug character varying,
    content character varying,
    category character varying,
    published_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    meta_title character varying,
    meta_description character varying
);


ALTER TABLE public.blogs OWNER TO tronsit;

--
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.blogs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blogs_id_seq OWNER TO tronsit;

--
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- Name: bookings; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.bookings (
    id bigint NOT NULL,
    car_id bigint,
    start_date date NOT NULL,
    end_date date NOT NULL,
    status character varying DEFAULT 'pending'::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint NOT NULL,
    payment_processed boolean,
    stripe_session_id character varying,
    stripe_payment_intent_id character varying,
    payment_mode integer DEFAULT 1 NOT NULL,
    selected_period character varying,
    selected_price numeric(10,2),
    selected_mileage_limit integer,
    vendor_id bigint,
    total_amount numeric(10,2) DEFAULT 0.0,
    delivery_option character varying,
    payment_status character varying DEFAULT 'pending'::character varying,
    discount_percentage numeric
);


ALTER TABLE public.bookings OWNER TO tronsit;

--
-- Name: bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bookings_id_seq OWNER TO tronsit;

--
-- Name: bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.bookings_id_seq OWNED BY public.bookings.id;


--
-- Name: car_documents; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.car_documents (
    id bigint NOT NULL,
    car_id bigint NOT NULL,
    document_status integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.car_documents OWNER TO tronsit;

--
-- Name: car_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.car_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.car_documents_id_seq OWNER TO tronsit;

--
-- Name: car_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.car_documents_id_seq OWNED BY public.car_documents.id;


--
-- Name: car_features; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.car_features (
    id bigint NOT NULL,
    car_id bigint NOT NULL,
    feature_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.car_features OWNER TO tronsit;

--
-- Name: car_features_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.car_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.car_features_id_seq OWNER TO tronsit;

--
-- Name: car_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.car_features_id_seq OWNED BY public.car_features.id;


--
-- Name: cars; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.cars (
    id bigint NOT NULL,
    model character varying,
    brand character varying,
    category character varying,
    color character varying,
    year integer,
    daily_price integer,
    status character varying,
    main_image_url character varying,
    transmission character varying,
    fuel_type character varying,
    seats integer,
    engine_size character varying,
    air_conditioning boolean DEFAULT true,
    gps boolean DEFAULT false,
    sunroof boolean DEFAULT false,
    bluetooth boolean DEFAULT false,
    featured boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    vendor_id bigint,
    stripe_product_id character varying,
    stripe_price_id character varying,
    weekly_price integer,
    monthly_price integer,
    daily_milleage integer DEFAULT 0,
    weekly_milleage integer DEFAULT 0,
    monthly_milleage integer DEFAULT 0,
    insurance_policy character varying DEFAULT ''::character varying,
    additional_mileage_charge integer DEFAULT 0.0,
    bookings_count integer DEFAULT 0 NOT NULL,
    slug character varying,
    with_driver boolean,
    five_hours_charge integer,
    ten_hours_charge integer,
    luggage_capacity integer,
    hourly_price integer
);


ALTER TABLE public.cars OWNER TO tronsit;

--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.cars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cars_id_seq OWNER TO tronsit;

--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- Name: discounts; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.discounts (
    id bigint NOT NULL,
    vendor_id bigint,
    category text[] DEFAULT '{}'::text[],
    discount_percentage numeric,
    active boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.discounts OWNER TO tronsit;

--
-- Name: discounts_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.discounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discounts_id_seq OWNER TO tronsit;

--
-- Name: discounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.discounts_id_seq OWNED BY public.discounts.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.documents (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    doc_name character varying,
    document_type character varying,
    status character varying DEFAULT 'not uploaded'::character varying,
    reason character varying DEFAULT ''::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.documents OWNER TO tronsit;

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.documents_id_seq OWNER TO tronsit;

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;


--
-- Name: features; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.features (
    id bigint NOT NULL,
    name character varying,
    common boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.features OWNER TO tronsit;

--
-- Name: features_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.features_id_seq OWNER TO tronsit;

--
-- Name: features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;


--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.friendly_id_slugs (
    id bigint NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO tronsit;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO tronsit;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: invited_vendors; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.invited_vendors (
    id bigint NOT NULL,
    email character varying,
    first_name character varying,
    last_name character varying,
    invite_token character varying,
    invite_sent boolean DEFAULT false,
    status character varying DEFAULT 'pending'::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.invited_vendors OWNER TO tronsit;

--
-- Name: invited_vendors_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.invited_vendors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invited_vendors_id_seq OWNER TO tronsit;

--
-- Name: invited_vendors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.invited_vendors_id_seq OWNED BY public.invited_vendors.id;


--
-- Name: invoice_items; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.invoice_items (
    id bigint NOT NULL,
    invoice_id bigint NOT NULL,
    description character varying NOT NULL,
    amount numeric(10,2),
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.invoice_items OWNER TO tronsit;

--
-- Name: invoice_items_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.invoice_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_items_id_seq OWNER TO tronsit;

--
-- Name: invoice_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.invoice_items_id_seq OWNED BY public.invoice_items.id;


--
-- Name: invoices; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.invoices (
    id bigint NOT NULL,
    vendor_id bigint NOT NULL,
    payment_status character varying DEFAULT 'pending'::character varying,
    amount numeric(10,2),
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    stripe_payment_intent_id character varying,
    paid_at timestamp(6) without time zone,
    payment_method_id character varying,
    save_payment_method boolean DEFAULT false,
    payment_mode character varying DEFAULT 'Online'::character varying
);


ALTER TABLE public.invoices OWNER TO tronsit;

--
-- Name: invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoices_id_seq OWNER TO tronsit;

--
-- Name: invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.invoices_id_seq OWNED BY public.invoices.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    admin_id bigint NOT NULL,
    title character varying,
    message character varying,
    related_path character varying,
    read_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.notifications OWNER TO tronsit;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO tronsit;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO tronsit;

--
-- Name: transactions; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.transactions (
    id bigint NOT NULL,
    booking_id bigint NOT NULL,
    stripe_payment_intent_id character varying,
    stripe_session_id character varying,
    amount numeric,
    status character varying,
    transaction_type character varying,
    refund_amount numeric,
    refund_reason text,
    processed_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.transactions OWNER TO tronsit;

--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transactions_id_seq OWNER TO tronsit;

--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    phone character varying,
    home_address character varying,
    terms_accepted boolean,
    card_number character varying,
    card_expiry character varying,
    card_cvc character varying,
    payment_done boolean,
    nationality character varying,
    whatsapp_number character varying(20),
    whatsapp_country_code character varying(3),
    provider character varying,
    uid character varying
);


ALTER TABLE public.users OWNER TO tronsit;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO tronsit;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: vendor_documents; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.vendor_documents (
    id bigint NOT NULL,
    vendor_id bigint NOT NULL,
    document_status integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.vendor_documents OWNER TO tronsit;

--
-- Name: vendor_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.vendor_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendor_documents_id_seq OWNER TO tronsit;

--
-- Name: vendor_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.vendor_documents_id_seq OWNED BY public.vendor_documents.id;


--
-- Name: vendor_requests; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.vendor_requests (
    id bigint NOT NULL,
    email character varying,
    first_name character varying,
    last_name character varying,
    status integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    phone character varying,
    vehicle_count integer,
    company_name character varying
);


ALTER TABLE public.vendor_requests OWNER TO tronsit;

--
-- Name: vendor_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.vendor_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendor_requests_id_seq OWNER TO tronsit;

--
-- Name: vendor_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.vendor_requests_id_seq OWNED BY public.vendor_requests.id;


--
-- Name: vendors; Type: TABLE; Schema: public; Owner: tronsit
--

CREATE TABLE public.vendors (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    phone character varying,
    company_name character varying,
    company_logo character varying,
    address character varying,
    website character varying,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    emirates_id character varying,
    emirates_id_expires_on date,
    deleted_at timestamp(6) without time zone,
    payment_mode integer DEFAULT 1,
    terms_accepted boolean DEFAULT false,
    whatsapp_number character varying(20),
    whatsapp_country_code character varying(3),
    provider character varying,
    uid character varying,
    is_active boolean DEFAULT true
);


ALTER TABLE public.vendors OWNER TO tronsit;

--
-- Name: vendors_id_seq; Type: SEQUENCE; Schema: public; Owner: tronsit
--

CREATE SEQUENCE public.vendors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendors_id_seq OWNER TO tronsit;

--
-- Name: vendors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tronsit
--

ALTER SEQUENCE public.vendors_id_seq OWNED BY public.vendors.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: activities id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);


--
-- Name: admins id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.admins ALTER COLUMN id SET DEFAULT nextval('public.admins_id_seq'::regclass);


--
-- Name: announcements id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.announcements ALTER COLUMN id SET DEFAULT nextval('public.announcements_id_seq'::regclass);


--
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- Name: bookings id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public.bookings_id_seq'::regclass);


--
-- Name: car_documents id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.car_documents ALTER COLUMN id SET DEFAULT nextval('public.car_documents_id_seq'::regclass);


--
-- Name: car_features id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.car_features ALTER COLUMN id SET DEFAULT nextval('public.car_features_id_seq'::regclass);


--
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- Name: discounts id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.discounts ALTER COLUMN id SET DEFAULT nextval('public.discounts_id_seq'::regclass);


--
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);


--
-- Name: features id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: invited_vendors id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.invited_vendors ALTER COLUMN id SET DEFAULT nextval('public.invited_vendors_id_seq'::regclass);


--
-- Name: invoice_items id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.invoice_items ALTER COLUMN id SET DEFAULT nextval('public.invoice_items_id_seq'::regclass);


--
-- Name: invoices id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.invoices ALTER COLUMN id SET DEFAULT nextval('public.invoices_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: vendor_documents id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.vendor_documents ALTER COLUMN id SET DEFAULT nextval('public.vendor_documents_id_seq'::regclass);


--
-- Name: vendor_requests id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.vendor_requests ALTER COLUMN id SET DEFAULT nextval('public.vendor_requests_id_seq'::regclass);


--
-- Name: vendors id; Type: DEFAULT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.vendors ALTER COLUMN id SET DEFAULT nextval('public.vendors_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	featured_image	Blog	1	1	2026-01-05 13:10:10.979332
2	mulkiya	CarDocument	21	2	2026-01-28 09:48:44.357186
3	images	Car	21	3	2026-01-28 09:48:44.411177
4	images	Car	21	4	2026-01-28 09:48:44.417134
5	images	Document	2	5	2026-01-28 15:15:29.936899
6	images	Document	2	6	2026-01-28 15:15:29.998768
7	mulkiya	CarDocument	22	7	2026-01-28 15:53:54.567048
8	images	Car	22	8	2026-01-28 15:53:54.689112
9	images	Car	22	9	2026-01-28 15:53:54.704277
10	images	Car	23	10	2026-01-29 11:02:23.970487
11	images	Car	24	11	2026-02-19 07:19:20.410816
12	images	Car	24	12	2026-02-19 07:19:20.415127
13	images	Car	25	13	2026-02-19 07:21:17.236122
14	images	Car	26	14	2026-02-19 07:28:19.708237
15	images	Car	27	15	2026-02-19 07:32:05.990803
16	images	Car	28	16	2026-02-24 11:30:23.440539
17	images	Car	29	17	2026-02-24 11:33:42.317782
18	images	Car	30	18	2026-02-24 11:38:36.386336
19	images	Car	31	19	2026-02-24 12:19:55.273887
20	images	Car	32	20	2026-02-27 21:38:16.387797
21	images	Car	33	21	2026-02-27 22:41:16.16828
22	images	Car	34	22	2026-02-27 22:43:29.601185
23	images	Car	35	23	2026-03-04 12:34:20.558423
24	images	Car	17	24	2026-03-09 06:53:06.576121
25	images	Car	36	25	2026-03-09 08:02:46.927998
26	images	Car	37	26	2026-03-11 21:40:07.789275
27	image	ActiveStorage::VariantRecord	1	27	2026-03-11 21:40:08.351746
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	uak84cg3kw2ou3ihr1jcfqtuvui3	b4_cover.png	image/avif	{"identified":true,"analyzed":true}	local	282755	SunKiQ+jS6uzjF/1rRLHKA==	2026-01-05 13:10:10.977092
2	ejyn2f51trcrl8amtv1xzpw4imib	Screenshot 2025-12-01 132213.png	image/png	{"identified":true,"analyzed":true}	local	57180	hzy1cta7UrPoVLwqHQJY6w==	2026-01-28 09:48:44.352646
3	amstw6h4dvzpiios7rceqxj3zvpg	secondary_hero.png	image/png	{"identified":true,"analyzed":true}	local	86026	BhFwgrYrQi2yK3f8xWFDFg==	2026-01-28 09:48:44.408835
4	6avv78p8ziapg2id8mdgo1pyj96z	blog1_cover.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	77600	HKgOA/LQES1ymZu2UFN4yQ==	2026-01-28 09:48:44.414198
5	5vsg3rrcjxxzrdrg9ubv8siw78j6	screencapture-wheelsonrent-ae-admin-invited-vendors-2026-01-24-19_35_05.png	image/png	{"identified":true,"analyzed":true}	local	514388	+QpcF89RQ7o7jAM8zjseXg==	2026-01-28 15:15:29.9333
6	gvcurpj9cszxdqlyb32qz1qgloak	monolith_logo-removebg-preview.png	image/png	{"identified":true,"analyzed":true}	local	4442	bYaXb1/n7GG+XrMHgC0ZUA==	2026-01-28 15:15:29.995698
7	n48dt8ju7gw2geigv3a5p1oi8pvx	Blog # 3 - Convertible Car Rental in Dubai Complete 2025 Guide.pdf	application/pdf	{"identified":true,"analyzed":true}	local	128447	K7DFTv6l0V4ERX3r8whMXw==	2026-01-28 15:53:54.560583
8	57cg1c4a68m2cbwytb9woaheacjb	blog2_cover.png	image/png	{"identified":true,"analyzed":true}	local	2344432	YIUdquT20ZCPL8LkDuJtUg==	2026-01-28 15:53:54.681816
9	b3zemouldxcqvliclka2ba4emzvg	ChatGPT Image Nov 20, 2025, 02_41_18 AM.png	image/png	{"identified":true,"analyzed":true}	local	2780746	ymoY5z1Gyzc+89omPH5rng==	2026-01-28 15:53:54.698128
10	hw1zcw6w2mjs8w6yr7ga6psylffe	ChatGPT Image Jan 15, 2026, 04_22_59 PM.png	image/png	{"identified":true,"analyzed":true}	local	1554959	VcV/yDXoWjkJ5VIIBCLKSw==	2026-01-29 11:02:23.967605
11	3olttxjy8p89r1ffbbqq5zevy6oy	Colgate Teeth.jpg.jpeg	image/jpeg	{"identified":true,"analyzed":true}	local	2566857	g9smnnTGECL5oApwi6WpQQ==	2026-02-19 07:19:20.408551
12	ecu826tzu15a2nj39u615ptf4zjs	glowing_pillars_modified.png	image/png	{"identified":true,"analyzed":true}	local	828521	oN/5tdVaodTfDiqUg9MBhw==	2026-02-19 07:19:20.413462
13	i16d7r8kj33bccpt2u3lih69ueyi	Screenshot 2026-01-30 190936.png	image/png	{"identified":true,"analyzed":true}	local	26905	cYCuy/cSDmxT/wiqni1CnA==	2026-02-19 07:21:17.234011
14	f9wb4cv4hvokkikypleqxrwgenvz	b4_cover.png	image/avif	{"identified":true,"analyzed":true}	local	282755	SunKiQ+jS6uzjF/1rRLHKA==	2026-02-19 07:28:19.70497
15	l1b76s4a3oqh6t4xgvf9zf2p0mxv	Screenshot 2026-01-19 185034.png	image/png	{"identified":true,"analyzed":true}	local	139600	H/d15AOQVLPOj9IdC8XZbw==	2026-02-19 07:32:05.987675
16	4iskn7mv5wr2grsccsdbccgoti1o	glowing_pillars_modified.png	image/png	{"identified":true,"analyzed":true}	local	828521	oN/5tdVaodTfDiqUg9MBhw==	2026-02-24 11:30:23.437392
17	48revu2j04su47xr0wa6geo0h19i	blog1_cover.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	77600	HKgOA/LQES1ymZu2UFN4yQ==	2026-02-24 11:33:42.315956
18	kff7rk010p7c4gu438iurd0ppmvk	ChatGPT Image Nov 20, 2025, 02_41_18 AM.png	image/png	{"identified":true,"analyzed":true}	local	2780746	ymoY5z1Gyzc+89omPH5rng==	2026-02-24 11:38:36.383421
19	9gu85hem2apfx39mh7lyaaers9df	blog-image-idea.webp	image/webp	{"identified":true,"analyzed":true}	local	1794722	AYhG/q6hG3kl335GHVD7Kg==	2026-02-24 12:19:55.271575
20	nczzvmz94c04yv6gl4z7eh9hgznc	Lincoln-Limousine-rent-a-car-lahore-dha-1200x480.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	58374	clBiK8/t1s036iFWsVqqxw==	2026-02-27 21:38:16.385403
21	j5fr6cpfse9v0ogj0fbkumvpzglw	6.png	image/png	{"identified":true,"analyzed":true}	local	3032960	OpMW9Y7sGOpixVjtq2I4Ww==	2026-02-27 22:41:16.164614
22	ubyl254ws8qzl68tra8i5me1lm0j	b4_cover.png	image/avif	{"identified":true,"analyzed":true}	local	282755	SunKiQ+jS6uzjF/1rRLHKA==	2026-02-27 22:43:29.599492
23	ffkmqqvzx6vvonimahzgflupjcvx	blog2_cover.png	image/png	{"identified":true,"analyzed":true}	local	2344432	YIUdquT20ZCPL8LkDuJtUg==	2026-03-04 12:34:20.554592
24	gx4aw4hshgor6ovrz9a62pzkuoho	6.png	image/png	{"identified":true,"analyzed":true}	local	3032960	OpMW9Y7sGOpixVjtq2I4Ww==	2026-03-09 06:53:06.567485
25	cxol50ijzjyxza2a3i5nr74l257u	Screenshot 2026-02-28 035442.png	image/png	{"identified":true,"analyzed":true}	local	226092	pvFY7urClNeSWSjl9KEEPA==	2026-03-09 08:02:46.924941
26	1u581nl7camx3bvr0yn6xxxs6hvz	sentry-error2.png	image/png	{"identified":true,"width":1369,"height":882,"analyzed":true}	local	141949	63aQJbp8KBf9WeAVOHWJDQ==	2026-03-11 21:40:07.786198
27	h5r558mpdn7hmjo70b1qeas7ajl6	sentry-error2.png	image/png	{"identified":true,"width":400,"height":258,"analyzed":true}	local	49523	A9QmQbdAIZkum+mtSQ0AIw==	2026-03-11 21:40:08.34722
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
1	26	y8X1uPS5Jv53b8o3gPRJhZY9KQ0=
\.


--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.activities (id, user_id, subject_type, subject_id, action, description, metadata, ip_address, user_agent, created_at, updated_at, vendor_id) FROM stdin;
1	1	User	1	registration_completed	New user registered: John Doe (john@example.com)	{"nationality":"resident","phone":"+1-555-0123"}	\N	\N	2026-01-05 12:59:00.678123	2026-01-05 12:59:00.678123	\N
2	2	User	2	registration_completed	New user registered: Jane Smith (jane@example.com)	{"nationality":"tourist","phone":"+1-555-0456"}	\N	\N	2026-01-05 12:59:00.866401	2026-01-05 12:59:00.866401	\N
3	\N	Vendor	1	vendor_registration	New vendor registered: Speedy Rentals Inc. (speedy@rentals.com)	{"company_name":"Speedy Rentals Inc.","email":"speedy@rentals.com","phone":"+1-555-123-4567"}	\N	\N	2026-01-05 12:59:01.07785	2026-01-05 12:59:01.07785	1
4	\N	Vendor	2	vendor_registration	New vendor registered: City Cars LLC (info@citycars.com)	{"company_name":"City Cars LLC","email":"info@citycars.com","phone":"+1-555-987-6543"}	\N	\N	2026-01-05 12:59:01.260833	2026-01-05 12:59:01.260833	2
5	\N	Vendor	3	vendor_registration	New vendor registered: Luxury Wheels Group (contact@luxurywheels.com)	{"company_name":"Luxury Wheels Group","email":"contact@luxurywheels.com","phone":"+1-555-222-3333"}	\N	\N	2026-01-05 13:08:32.960512	2026-01-05 13:08:32.960512	3
6	\N	Vendor	4	vendor_registration	New vendor registered: Eco Drive Solutions (hello@ecodrive.com)	{"company_name":"Eco Drive Solutions","email":"hello@ecodrive.com","phone":"+1-555-444-5555"}	\N	\N	2026-01-05 13:08:33.151092	2026-01-05 13:08:33.151092	4
9	\N	Car	3	car_added	Speedy Rentals Inc. added a new car: BMW 3 Series (2023)	{"car_id":3,"brand":"BMW","model":"3 Series","year":2023,"daily_price":75}	\N	\N	2026-01-05 12:59:02.018644	2026-01-05 12:59:02.018644	1
10	\N	Car	4	car_added	City Cars LLC added a new car: Ford Mustang (2020)	{"car_id":4,"brand":"Ford","model":"Mustang","year":2020,"daily_price":68}	\N	\N	2026-01-05 12:59:02.051009	2026-01-05 12:59:02.051009	2
11	\N	Car	5	car_added	City Cars LLC added a new car: Tesla Model 3 (2022)	{"car_id":5,"brand":"Tesla","model":"Model 3","year":2022,"daily_price":80}	\N	\N	2026-01-05 12:59:02.091325	2026-01-05 12:59:02.091325	2
12	\N	Car	6	car_added	City Cars LLC added a new car: Mercedes-Benz C-Class (2023)	{"car_id":6,"brand":"Mercedes-Benz","model":"C-Class","year":2023,"daily_price":85}	\N	\N	2026-01-05 12:59:02.131652	2026-01-05 12:59:02.131652	2
13	\N	Car	7	car_added	Luxury Wheels Group added a new car: Audi A4 (2022)	{"car_id":7,"brand":"Audi","model":"A4","year":2022,"daily_price":72}	\N	\N	2026-01-05 12:59:02.174285	2026-01-05 12:59:02.174285	3
14	\N	Car	8	car_added	Luxury Wheels Group added a new car: Hyundai Tucson (2023)	{"car_id":8,"brand":"Hyundai","model":"Tucson","year":2023,"daily_price":45}	\N	\N	2026-01-05 12:59:02.216834	2026-01-05 12:59:02.216834	3
15	\N	Car	9	car_added	Luxury Wheels Group added a new car: Kia Sportage (2022)	{"car_id":9,"brand":"Kia","model":"Sportage","year":2022,"daily_price":42}	\N	\N	2026-01-05 12:59:02.263552	2026-01-05 12:59:02.263552	3
16	\N	Car	10	car_added	Eco Drive Solutions added a new car: Volkswagen Golf (2021)	{"car_id":10,"brand":"Volkswagen","model":"Golf","year":2021,"daily_price":38}	\N	\N	2026-01-05 12:59:02.296236	2026-01-05 12:59:02.296236	4
17	\N	Car	11	car_added	Eco Drive Solutions added a new car: Nissan Altima (2022)	{"car_id":11,"brand":"Nissan","model":"Altima","year":2022,"daily_price":50}	\N	\N	2026-01-05 12:59:02.328056	2026-01-05 12:59:02.328056	4
18	\N	Car	12	car_added	Eco Drive Solutions added a new car: Chevrolet Camaro (2021)	{"car_id":12,"brand":"Chevrolet","model":"Camaro","year":2021,"daily_price":70}	\N	\N	2026-01-05 12:59:02.359602	2026-01-05 12:59:02.359602	4
19	\N	Car	13	car_added	Speedy Rentals Inc. added a new car: Jeep Wrangler (2023)	{"car_id":13,"brand":"Jeep","model":"Wrangler","year":2023,"daily_price":65}	\N	\N	2026-01-05 12:59:02.401807	2026-01-05 12:59:02.401807	1
20	\N	Car	14	car_added	City Cars LLC added a new car: Lexus RX (2022)	{"car_id":14,"brand":"Lexus","model":"RX","year":2022,"daily_price":90}	\N	\N	2026-01-05 12:59:02.438898	2026-01-05 12:59:02.438898	2
21	\N	Car	15	car_added	Luxury Wheels Group added a new car: Subaru Outback (2023)	{"car_id":15,"brand":"Subaru","model":"Outback","year":2023,"daily_price":52}	\N	\N	2026-01-05 12:59:02.470083	2026-01-05 12:59:02.470083	3
22	\N	Car	16	car_added	Eco Drive Solutions added a new car: Mazda CX-5 (2022)	{"car_id":16,"brand":"Mazda","model":"CX-5","year":2022,"daily_price":48}	\N	\N	2026-01-05 12:59:02.501073	2026-01-05 12:59:02.501073	4
23	\N	Car	17	car_added	Speedy Rentals Inc. added a new car: Volvo XC60 (2023)	{"car_id":17,"brand":"Volvo","model":"XC60","year":2023,"daily_price":78}	\N	\N	2026-01-05 12:59:02.532996	2026-01-05 12:59:02.532996	1
24	\N	Car	18	car_added	City Cars LLC added a new car: Land Rover Range Rover Sport (2022)	{"car_id":18,"brand":"Land Rover","model":"Range Rover Sport","year":2022,"daily_price":120}	\N	\N	2026-01-05 12:59:02.57321	2026-01-05 12:59:02.57321	2
25	\N	Car	19	car_added	Luxury Wheels Group added a new car: Porsche 911 (2021)	{"car_id":19,"brand":"Porsche","model":"911","year":2021,"daily_price":150}	\N	\N	2026-01-05 12:59:02.609479	2026-01-05 12:59:02.609479	3
26	\N	Car	20	car_added	Eco Drive Solutions added a new car: Jaguar F-Type (2022)	{"car_id":20,"brand":"Jaguar","model":"F-Type","year":2022,"daily_price":110}	\N	\N	2026-01-05 12:59:02.640567	2026-01-05 12:59:02.640567	4
27	1	Booking	1	booking_created	John Doe created a booking for Toyota Camry	{"car_id":1,"start_date":"2026-01-10","end_date":"2026-01-13","total_amount":215.0}	\N	\N	2026-01-05 12:59:02.709099	2026-01-05 12:59:02.709099	\N
28	2	Booking	2	booking_created	Jane Smith created a booking for Honda Civic	{"car_id":2,"start_date":"2026-01-15","end_date":"2026-01-22","total_amount":362.0}	\N	\N	2026-01-05 12:59:02.722641	2026-01-05 12:59:02.722641	\N
29	1	Booking	3	booking_created	John Doe created a booking for BMW 3 Series	{"car_id":3,"start_date":"2026-01-25","end_date":"2026-02-24","total_amount":2000.0}	\N	\N	2026-01-05 12:59:02.746444	2026-01-05 12:59:02.746444	\N
30	\N	Car	21	car_added	Speedy Rentals Inc. added a new car: Toyota Cross (2026)	{"car_id":21,"brand":"Toyota","model":"Cross","year":2026,"daily_price":0}	\N	\N	2026-01-28 09:48:44.373483	2026-01-28 09:48:44.373483	1
31	\N	CarDocument	21	car_document_approved	Admin approved mulkiya document for Toyota Cross (2026)	{"car_id":21,"car_name":"Toyota Cross (2026)","admin_action":"approved"}	\N	\N	2026-01-28 09:50:57.961106	2026-01-28 09:50:57.961106	1
32	2	Booking	4	booking_created	Jane Smith created a booking for Toyota Cross	{"car_id":21,"start_date":"2026-01-28","end_date":"2026-01-28","total_amount":250.0}	\N	\N	2026-01-28 14:47:52.337626	2026-01-28 14:47:52.337626	\N
34	1	Document	2	document_uploaded	John Doe uploaded Emirates ID front and back	{"document_type":"Emirates ID front and back"}	\N	\N	2026-01-28 15:15:30.039754	2026-01-28 15:15:30.039754	\N
35	1	Document	2	document_approved	John Doe's Emirates ID front and back was approved	{"document_type":"Emirates ID front and back","previous_status":"pending","new_status":"approved"}	\N	\N	2026-01-28 15:15:50.950502	2026-01-28 15:15:50.950502	\N
36	1	Booking	6	booking_created	John Doe created a booking for Lexus RX	{"car_id":14,"start_date":"2026-01-28","end_date":"2026-01-29","total_amount":"81.0"}	\N	\N	2026-01-28 15:22:26.807133	2026-01-28 15:22:26.807133	\N
37	1	Booking	7	booking_created	John Doe created a booking for Toyota Cross	{"car_id":21,"start_date":"2026-01-29","end_date":"2026-01-29","total_amount":"427.5"}	\N	\N	2026-01-28 15:28:32.836329	2026-01-28 15:28:32.836329	\N
38	\N	Car	22	car_added	Speedy Rentals Inc. added a new car: Mercedes-Benz 3 Series (2024)	{"car_id":22,"brand":"Mercedes-Benz","model":"3 Series","year":2024,"daily_price":50}	\N	\N	2026-01-28 15:53:54.60679	2026-01-28 15:53:54.60679	1
39	\N	Car	23	car_added	Speedy Rentals Inc. added a new car: Mercedes Benz Civic (2026)	{"car_id":23,"brand":"Mercedes Benz","model":"Civic","year":2026,"daily_price":0}	\N	\N	2026-01-29 11:02:23.937303	2026-01-29 11:02:23.937303	1
40	1	Booking	8	booking_created	John Doe created a booking for Toyota Cross	{"car_id":21,"start_date":"2026-02-05","end_date":"2026-02-05","total_amount":"287.5"}	\N	\N	2026-02-04 17:33:29.075296	2026-02-04 17:33:29.075296	\N
41	1	Booking	9	booking_created	John Doe created a booking for Jaguar F-Type	{"car_id":20,"start_date":"2026-02-04","end_date":"2026-02-12","total_amount":930.0}	\N	\N	2026-02-04 17:34:15.641787	2026-02-04 17:34:15.641787	\N
42	\N	Car	24	car_added	Speedy Rentals Inc. added a new car: Mercedes Benz Civic (2026)	{"car_id":24,"brand":"Mercedes Benz","model":"Civic","year":2026,"daily_price":0}	\N	\N	2026-02-19 07:19:20.378799	2026-02-19 07:19:20.378799	1
43	\N	Car	25	car_added	Speedy Rentals Inc. added a new car: Toyota C-Class (2026)	{"car_id":25,"brand":"Toyota","model":"C-Class","year":2026,"daily_price":0}	\N	\N	2026-02-19 07:21:17.200083	2026-02-19 07:21:17.200083	1
44	\N	Car	26	car_added	Speedy Rentals Inc. added a new car: toyota Civic (2026)	{"car_id":26,"brand":"toyota","model":"Civic","year":2026,"daily_price":0}	\N	\N	2026-02-19 07:28:19.678412	2026-02-19 07:28:19.678412	1
45	\N	Car	27	car_added	Speedy Rentals Inc. added a new car: Mercedes Benz Camry (2026)	{"car_id":27,"brand":"Mercedes Benz","model":"Camry","year":2026,"daily_price":0}	\N	\N	2026-02-19 07:32:05.945425	2026-02-19 07:32:05.945425	1
46	1	Booking	10	booking_created	John Doe created a booking for toyota Civic	{"car_id":26,"start_date":"2026-02-25","end_date":"2026-02-25","total_amount":237.5}	\N	\N	2026-02-24 09:15:09.286105	2026-02-24 09:15:09.286105	\N
47	1	Booking	11	booking_created	John Doe created a booking for Mercedes Benz Camry	{"car_id":27,"start_date":"2026-02-26","end_date":"2026-02-26","total_amount":218.5}	\N	\N	2026-02-24 09:19:14.674318	2026-02-24 09:19:14.674318	\N
48	1	Booking	12	booking_created	John Doe created a booking for Jaguar F-Type	{"car_id":20,"start_date":"2026-02-25","end_date":"2026-03-04","total_amount":715.0}	\N	\N	2026-02-24 09:31:24.848364	2026-02-24 09:31:24.848364	\N
49	1	Booking	13	booking_created	John Doe created a booking for toyota Civic	{"car_id":26,"start_date":"2026-02-26","end_date":"2026-02-26","total_amount":237.5}	\N	\N	2026-02-24 11:32:58.109399	2026-02-24 11:32:58.109399	\N
50	1	Booking	14	booking_created	John Doe created a booking for Ford Mustang	{"car_id":4,"start_date":"2026-02-25","end_date":"2026-02-25","total_amount":0.0}	\N	\N	2026-02-24 11:26:58.622167	2026-02-24 11:26:58.622167	\N
51	\N	Car	28	car_added	Speedy Rentals Inc. added a new car: Mercedes-Benz camrey (2026)	{"car_id":28,"brand":"Mercedes-Benz","model":"camrey","year":2026,"daily_price":0}	\N	\N	2026-02-24 11:30:23.413413	2026-02-24 11:30:23.413413	1
52	\N	Car	29	car_added	Speedy Rentals Inc. added a new car: BMW Civic (2026)	{"car_id":29,"brand":"BMW","model":"Civic","year":2026,"daily_price":0}	\N	\N	2026-02-24 11:33:42.281323	2026-02-24 11:33:42.281323	1
53	\N	Car	30	car_added	Speedy Rentals Inc. added a new car: Mercedes Benz camry (2026)	{"car_id":30,"brand":"Mercedes Benz","model":"camry","year":2026,"daily_price":0}	\N	\N	2026-02-24 11:38:36.330634	2026-02-24 11:38:36.330634	1
54	2	Booking	15	booking_created	Jane Smith created a booking for Mercedes-Benz camrey	{"car_id":28,"start_date":"2026-02-25","end_date":"2026-02-25","total_amount":570.0}	\N	\N	2026-02-24 12:09:09.124755	2026-02-24 12:09:09.124755	\N
55	\N	Car	31	car_added	Speedy Rentals Inc. added a new car: BMW Civic (2026)	{"car_id":31,"brand":"BMW","model":"Civic","year":2026,"daily_price":0}	\N	\N	2026-02-24 12:19:55.24353	2026-02-24 12:19:55.24353	1
56	1	Booking	16	booking_created	John Doe created a booking for Mercedes Benz camry	{"car_id":30,"start_date":"2026-02-28","end_date":"2026-02-28","total_amount":477.5}	\N	\N	2026-02-27 19:23:55.772009	2026-02-27 19:23:55.772009	\N
57	\N	Car	32	car_added	Speedy Rentals Inc. added a new car: Mercedes-Benz limosine (2026)	{"car_id":32,"brand":"Mercedes-Benz","model":"limosine","year":2026,"daily_price":0}	\N	\N	2026-02-27 21:38:16.336942	2026-02-27 21:38:16.336942	1
58	\N	Car	33	car_added	Speedy Rentals Inc. added a new car: Toyota LC (2026)	{"car_id":33,"brand":"Toyota","model":"LC","year":2026,"daily_price":0}	\N	\N	2026-02-27 22:41:16.135525	2026-02-27 22:41:16.135525	1
59	\N	Car	34	car_added	Speedy Rentals Inc. added a new car: BMW Camry (2026)	{"car_id":34,"brand":"BMW","model":"Camry","year":2026,"daily_price":0}	\N	\N	2026-02-27 22:43:29.573873	2026-02-27 22:43:29.573873	1
60	\N	Car	35	car_added	Speedy Rentals Inc. added a new car: Toyota Limousine (2026)	{"car_id":35,"brand":"Toyota","model":"Limousine","year":2026,"daily_price":0}	\N	\N	2026-03-04 12:34:20.50552	2026-03-04 12:34:20.50552	1
61	\N	Car	36	car_added	Speedy Rentals Inc. added a new car: Toyota Limousine (2026)	{"car_id":36,"brand":"Toyota","model":"Limousine","year":2026,"daily_price":0}	\N	\N	2026-03-09 08:02:46.888774	2026-03-09 08:02:46.888774	1
62	\N	Car	37	car_added	Speedy Rentals Inc. added a new car: Toyota Limousine (2026)	{"car_id":37,"brand":"Toyota","model":"Limousine","year":2026,"daily_price":0}	\N	\N	2026-03-11 21:40:07.746659	2026-03-11 21:40:07.746659	1
64	\N	Car	39	car_deleted	Speedy Rentals Inc. deleted car: Toyota Civic ()	{"car_id":39,"brand":"Toyota","model":"Civic","year":null}	\N	\N	2026-03-14 10:23:35.489862	2026-03-14 10:23:35.489862	1
66	\N	Car	2	car_deleted	Speedy Rentals Inc. deleted car: Honda Civic (2021)	{"car_id":2,"brand":"Honda","model":"Civic","year":2021}	\N	\N	2026-03-14 10:56:06.346388	2026-03-14 10:56:06.346388	1
67	\N	Car	1	car_deleted	Speedy Rentals Inc. deleted car: Toyota Camry (2022)	{"car_id":1,"brand":"Toyota","model":"Camry","year":2022}	\N	\N	2026-03-14 11:00:42.579813	2026-03-14 11:00:42.579813	1
\.


--
-- Data for Name: admins; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.admins (id, created_at, updated_at, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, first_name, last_name, role_type) FROM stdin;
1	2026-01-05 12:59:00.251807	2026-01-05 12:59:00.251807	superadmin@example.com	$2a$12$WG2FsFejQN370oJy8HL/lu7WftcHt1lvStbEx22HKYRp8kU9jDeSe	\N	\N	\N	Super	Admin	super_admin
2	2026-01-05 12:59:00.445455	2026-01-05 12:59:00.445455	admin@example.com	$2a$12$Yxv/LEEYhlzU4uia5CXK7OO7e4ako8Rilu272JtKGDxYjD2ra6Spi	\N	\N	\N	Site	Admin	admin
\.


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.announcements (id, message, ends_at, active, created_at, updated_at) FROM stdin;
1	\N	\N	f	2026-03-11 19:00:20.522152	2026-04-29 12:53:07.058527
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2026-01-05 12:58:53.999297	2026-01-05 12:58:53.9993
\.


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.blogs (id, author_name, title, slug, content, category, published_at, created_at, updated_at, meta_title, meta_description) FROM stdin;
1	Shehroz	Happy New Year Deal for Rent a Car in Dubai – Bumper Offers on JAC S3	happy-new-year-rent-a-car-dubai	<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;"><strong>Salik</strong> is the <strong>electronic toll road system</strong> in Dubai, United Arab Emirates, which is based on RFID technology automatically deducting a fee when your car passes through the gate. The Salik toll was launched by the Roads and Transport Authority (RTA) in 2007. A prepaid card is affixed to the car’s windscreens. An amount of AED 4 is deducted from the Car’s Salik account each time it passes through the toll gate of a certain highway. Whether you’re cruising down Sheikh Zayed Road in Dubai or traversing the scenic highways of Abu Dhabi, understanding how to pay tolls and save money on your rental car in Dubai or Abu Dhabi, UAE is key to a hassle-free journey. Here’s your comprehensive guide to mastering UAE’s toll roads:</p>\n<h2 style="font-size: 1.875rem; color: #3A6363; margin-top: 2rem; margin-bottom: 1.5rem; font-weight: 700; line-height: 1.2;">Understanding the Toll System in Dubai or Abu Dhabi</h2>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;">The UAE’s toll road network includes several major highways and bridges, with toll gates strategically located at entry and exit points. These toll gates utilize an electronic toll collection system known as Salik in Dubai and Darb in Abu Dhabi. Instead of traditional toll booths, overhead gantries equipped with RFID (Radio Frequency Identification) technology automatically deduct toll charges as vehicles pass through.</p>\n<h2 style="font-size: 1.875rem; color: #3A6363; margin-top: 2rem; margin-bottom: 1.5rem; font-weight: 700; line-height: 1.2;">Renting a Salik Tag</h2>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;">Most rental car companies in the UAE offer the option to rent a Salik tag with your vehicle. These tags are small electronic devices affixed to the windshield, allowing seamless passage through toll gates without the need to stop and pay manually. Inquire about this option when you <a href="https://wheelsonrent.ae/" target="_blank" style="color: #3A6363; text-decoration: underline;">rent a car in Dubai or Abu Dhabi</a> to ensure a smooth toll road experience.</p>\n<h2 style="font-size: 1.875rem; color: #3A6363; margin-top: 2rem; margin-bottom: 1.5rem; font-weight: 700; line-height: 1.2;">Preloading Credit</h2>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;">Before hitting the road, preload your Salik tag with sufficient credit to cover toll charges incurred during your journey. You can easily top up your account online, via mobile apps, or at designated kiosks located throughout the UAE. Keeping your tag adequately funded ensures uninterrupted passage through toll gates, avoiding fines for insufficient balance.</p>\n<h2 style="font-size: 1.875rem; color: #3A6363; margin-top: 2rem; margin-bottom: 1.5rem; font-weight: 700; line-height: 1.2;">Understanding Toll Charges</h2>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;">Toll charges vary depending on the road and time of day. In Dubai, Sheikh Zayed Road and other major highways incur varying toll fees during peak hours, typically from 7:00 AM to 10:00 AM and 5:30 PM to 7:00 PM on weekdays. Abu Dhabi’s toll system operates similarly, with charges varying based on the time of day and location. Familiarize yourself with the toll rates and peak hours to budget accordingly and avoid surprises.</p>\n<h2 style="font-size: 1.875rem; color: #3A6363; margin-top: 2rem; margin-bottom: 1.5rem; font-weight: 700; line-height: 1.2;">Optimizing Your Route Using Google Maps</h2>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;">Planning your route strategically can help you minimize toll expenses while maximizing your travel experience. Consider alternative routes or off-peak travel times to avoid high congestion and toll charges. Utilize GPS navigation apps like Google Maps finds toll-free routes and optimize your journey.</p>\n<h2 style="font-size: 1.875rem; color: #3A6363; margin-top: 2rem; margin-bottom: 1.5rem; font-weight: 700; line-height: 1.2;">Salik Gate Locations in Dubai</h2>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;">Following are the <strong>8-Salik Gates in Dubai</strong>.</p>\n<ul style="margin-bottom: 1.5rem;">\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Jebel Ali Salik Gate on Sheikh Zayed Road</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Al Barsha Salik Gate on Sheikh Zayed Road</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Al Safa Salik Gate on Sheikh Zayed Road</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Al Garhoud Salik Gate on Al Maktoum Bridge</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Al Maktoum Salik Gate on Sheikh Zayed Road</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Airport Tunnel Salik Gate on Beirut Street</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Al Mamzar North Salik Gate on Al Ittehad Street</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Al Mamzar South Salik Gate on Al Ittehad Street</li>\n</ul>\n<h2 style="font-size: 1.875rem; color: #3A6363; margin-top: 2rem; margin-bottom: 1.5rem; font-weight: 700; line-height: 1.2;">Saving Money with Rental Car Packages</h2>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;">Some rental car companies in Dubai or Abu Dhabi offer inclusive packages that cover toll charges as part of the rental fee. When comparing rental options, inquire about inclusive packages that provide peace of mind and potential cost savings on toll expenses. Renting a Car with Driver in Dubai or Abu Dhabi does not does not cost you Salik Tolls as it is already included in per day rental price.</p>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;">By understanding how to navigate UAE’s toll roads and leveraging cost-saving strategies, you can enjoy a seamless and budget-friendly travel experience while exploring the country’s vibrant cities and breathtaking landscapes. So load up your <strong>Salik</strong> or <strong>Darb</strong> tag, buckle up, and start an unforgettable journey through the UAE’s modern highway network on a rental car of your choice.</p>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;"><strong>Learn More or Create a Salik Account from the official Website:</strong></p>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;"><strong>Visit:</strong> <a href="https://www.salik.ae/en" target="_blank" style="color: #3A6363; text-decoration: underline;">https://www.salik.ae/en</a></p>\n<p style="margin-bottom: 1.5rem; line-height: 1.8; color: #333; font-size: 1.125rem;"><strong>Hire a Car of Your Choice from Wheels on Rent.</strong></p>\n<ul style="margin-bottom: 1.5rem;">\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Rent an Economy car in Dubai or Abu Dhabi UAE</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Rent an SUV in Dubai or Abu Dhabi UAE</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Rent a Convertible Car in Dubai or Abu Dhabi UAE</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Rent a Sports Car in Dubai or Abu Dhabi UAE</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Rent a Van in Dubai or Abu Dhabi UAE</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Rent a Limousine in Dubai or Abu Dhabi UAE</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Rent an Electric Car in Dubai or Abu Dhabi UAE</li>\n<li style="margin-bottom: 0.5rem; line-height: 1.8; color: #333; font-size: 1.125rem; list-style-type: disc; display: list-item; margin-left: 1.5rem;">Rent a Bus in Dubai or Abu Dhabi UAE</li>\n</ul>	Affordable	2026-01-04 18:09:00	2026-01-05 13:10:10.956008	2026-01-05 14:38:10.295374	Happy New Year Deal for Rent a Car in Dubai | Bumper Offers on JAC S3	sample description
\.


--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.bookings (id, car_id, start_date, end_date, status, created_at, updated_at, user_id, payment_processed, stripe_session_id, stripe_payment_intent_id, payment_mode, selected_period, selected_price, selected_mileage_limit, vendor_id, total_amount, delivery_option, payment_status, discount_percentage) FROM stdin;
13	26	2026-02-26	2026-02-26	pending	2026-02-24 11:32:58.083481	2026-02-24 11:32:58.112377	1	f	\N	\N	1	5 Hours	250.00	0	1	237.50		pending	5.0
3	3	2026-01-25	2026-02-24	pending	2026-01-05 12:59:02.736084	2026-01-05 12:59:02.748487	1	t	cs_test_1767617944_1721ec5f2e08a5fa	pi_test_1767617944_ccc6775aaa6788ec	1	monthly	1950.00	4000	1	2000.00	pickup	paid	\N
4	21	2026-01-28	2026-01-28	pending	2026-01-28 14:47:52.293928	2026-01-28 14:48:32.099802	2	f	\N	\N	1	5 Hours	250.00	0	1	250.00		pending	\N
14	4	2026-02-25	2026-02-25	pending	2026-02-24 11:26:58.604019	2026-02-24 11:26:58.604019	1	f	\N	\N	1	5 Hours	0.00	0	2	0.00		pending	\N
6	14	2026-01-28	2026-01-29	pending	2026-01-28 15:22:26.788273	2026-01-28 15:22:26.809256	1	f	\N	\N	1	daily	90.00	250	2	81.00		pending	10.0
7	21	2026-01-29	2026-01-29	pending	2026-01-28 15:28:32.817479	2026-01-28 15:28:32.838494	1	f	\N	\N	1	10 Hours	450.00	0	1	427.50		pending	5.0
8	21	2026-02-05	2026-02-05	pending	2026-02-04 17:33:29.051753	2026-02-04 17:33:29.079103	1	f	\N	\N	1	5 Hours	250.00	0	1	287.50	pickup	pending	5.0
9	20	2026-02-04	2026-02-12	pending	2026-02-04 17:34:15.635886	2026-02-04 17:34:15.643762	1	f	\N	\N	1	daily	110.00	250	4	930.00	pickup	pending	\N
10	26	2026-02-25	2026-02-25	pending	2026-02-24 09:15:09.261605	2026-02-24 09:15:09.289476	1	f	\N	\N	1	5 Hours	250.00	0	1	237.50		pending	5.0
11	27	2026-02-26	2026-02-26	pending	2026-02-24 09:19:14.637153	2026-02-24 09:19:14.678636	1	f	\N	\N	1	5 Hours	230.00	0	1	218.50		pending	5.0
12	20	2026-02-25	2026-03-04	pending	2026-02-24 09:31:24.8311	2026-02-24 09:31:24.850306	1	f	\N	\N	1	weekly	715.00	1400	4	715.00		pending	\N
15	28	2026-02-25	2026-02-25	pending	2026-02-24 12:09:09.103376	2026-02-24 12:09:09.126978	2	f	\N	\N	1	10 Hours	600.00	0	1	570.00		pending	5.0
2	\N	2026-01-15	2026-01-22	pending	2026-01-05 12:59:02.717628	2026-01-28 13:10:12.075509	2	f	cs_test_1767617943_e4a68f056c8fc47a	pi_test_1767617943_4e8cba246e2ad002	0	weekly	312.00	1200	1	362.00	delivery	pending	\N
1	\N	2026-01-10	2026-01-13	pending	2026-01-05 12:59:02.700068	2026-01-05 12:59:02.710472	1	t	cs_test_1767617942_85594294985c8460	pi_test_1767617942_edb99fa5ff08767b	1	daily	55.00	250	1	215.00	pickup	paid	\N
16	30	2026-02-28	2026-02-28	pending	2026-02-27 19:23:55.744682	2026-04-29 12:45:49.144968	1	f	\N	\N	1	5 Hours	450.00	0	1	477.50	pickup	pending	5.0
\.


--
-- Data for Name: car_documents; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.car_documents (id, car_id, document_status, created_at, updated_at) FROM stdin;
3	3	1	2026-01-05 12:59:02.040852	2026-01-05 12:59:02.040852
4	4	0	2026-01-05 12:59:02.071805	2026-01-05 12:59:02.071805
5	5	2	2026-01-05 12:59:02.120956	2026-01-05 12:59:02.120956
6	6	1	2026-01-05 12:59:02.154812	2026-01-05 12:59:02.154812
7	7	1	2026-01-05 12:59:02.197339	2026-01-05 12:59:02.197339
8	8	2	2026-01-05 12:59:02.24453	2026-01-05 12:59:02.24453
9	9	0	2026-01-05 12:59:02.286186	2026-01-05 12:59:02.286186
10	10	0	2026-01-05 12:59:02.315838	2026-01-05 12:59:02.315838
11	11	0	2026-01-05 12:59:02.347004	2026-01-05 12:59:02.347004
12	12	1	2026-01-05 12:59:02.381094	2026-01-05 12:59:02.381094
13	13	1	2026-01-05 12:59:02.427731	2026-01-05 12:59:02.427731
14	14	2	2026-01-05 12:59:02.459191	2026-01-05 12:59:02.459191
15	15	0	2026-01-05 12:59:02.489917	2026-01-05 12:59:02.489917
16	16	0	2026-01-05 12:59:02.520999	2026-01-05 12:59:02.520999
17	17	0	2026-01-05 12:59:02.551968	2026-01-05 12:59:02.551968
18	18	1	2026-01-05 12:59:02.598013	2026-01-05 12:59:02.598013
19	19	2	2026-01-05 12:59:02.63026	2026-01-05 12:59:02.63026
20	20	1	2026-01-05 12:59:02.661087	2026-01-05 12:59:02.661087
21	21	1	2026-01-28 09:48:44.346975	2026-01-28 09:50:57.951123
22	22	0	2026-01-28 15:53:54.548312	2026-01-28 15:53:54.802965
\.


--
-- Data for Name: car_features; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.car_features (id, car_id, feature_id, created_at, updated_at) FROM stdin;
17	3	1	2026-01-05 12:59:02.02465	2026-01-05 12:59:02.02465
18	3	2	2026-01-05 12:59:02.026476	2026-01-05 12:59:02.026476
19	3	3	2026-01-05 12:59:02.028315	2026-01-05 12:59:02.028315
20	3	4	2026-01-05 12:59:02.029966	2026-01-05 12:59:02.029966
21	3	5	2026-01-05 12:59:02.031528	2026-01-05 12:59:02.031528
22	3	6	2026-01-05 12:59:02.033015	2026-01-05 12:59:02.033015
23	3	7	2026-01-05 12:59:02.034484	2026-01-05 12:59:02.034484
24	3	8	2026-01-05 12:59:02.035898	2026-01-05 12:59:02.035898
25	4	1	2026-01-05 12:59:02.05529	2026-01-05 12:59:02.05529
26	4	2	2026-01-05 12:59:02.056763	2026-01-05 12:59:02.056763
27	4	3	2026-01-05 12:59:02.058095	2026-01-05 12:59:02.058095
28	4	4	2026-01-05 12:59:02.059611	2026-01-05 12:59:02.059611
29	4	5	2026-01-05 12:59:02.060992	2026-01-05 12:59:02.060992
30	4	6	2026-01-05 12:59:02.062308	2026-01-05 12:59:02.062308
31	4	7	2026-01-05 12:59:02.063688	2026-01-05 12:59:02.063688
32	4	8	2026-01-05 12:59:02.065031	2026-01-05 12:59:02.065031
33	5	1	2026-01-05 12:59:02.098342	2026-01-05 12:59:02.098342
34	5	2	2026-01-05 12:59:02.100562	2026-01-05 12:59:02.100562
35	5	3	2026-01-05 12:59:02.102577	2026-01-05 12:59:02.102577
36	5	4	2026-01-05 12:59:02.10446	2026-01-05 12:59:02.10446
37	5	5	2026-01-05 12:59:02.10629	2026-01-05 12:59:02.10629
38	5	6	2026-01-05 12:59:02.108024	2026-01-05 12:59:02.108024
39	5	7	2026-01-05 12:59:02.113709	2026-01-05 12:59:02.113709
40	5	8	2026-01-05 12:59:02.115317	2026-01-05 12:59:02.115317
41	6	1	2026-01-05 12:59:02.136426	2026-01-05 12:59:02.136426
42	6	2	2026-01-05 12:59:02.138139	2026-01-05 12:59:02.138139
43	6	3	2026-01-05 12:59:02.139607	2026-01-05 12:59:02.139607
44	6	4	2026-01-05 12:59:02.141022	2026-01-05 12:59:02.141022
45	6	5	2026-01-05 12:59:02.142885	2026-01-05 12:59:02.142885
46	6	6	2026-01-05 12:59:02.144349	2026-01-05 12:59:02.144349
47	6	7	2026-01-05 12:59:02.145741	2026-01-05 12:59:02.145741
48	6	8	2026-01-05 12:59:02.147443	2026-01-05 12:59:02.147443
49	7	1	2026-01-05 12:59:02.180375	2026-01-05 12:59:02.180375
50	7	2	2026-01-05 12:59:02.182242	2026-01-05 12:59:02.182242
51	7	3	2026-01-05 12:59:02.183844	2026-01-05 12:59:02.183844
52	7	4	2026-01-05 12:59:02.18573	2026-01-05 12:59:02.18573
53	7	5	2026-01-05 12:59:02.187256	2026-01-05 12:59:02.187256
54	7	6	2026-01-05 12:59:02.188754	2026-01-05 12:59:02.188754
55	7	7	2026-01-05 12:59:02.190371	2026-01-05 12:59:02.190371
56	7	8	2026-01-05 12:59:02.191902	2026-01-05 12:59:02.191902
57	8	1	2026-01-05 12:59:02.224045	2026-01-05 12:59:02.224045
58	8	2	2026-01-05 12:59:02.226317	2026-01-05 12:59:02.226317
59	8	3	2026-01-05 12:59:02.22816	2026-01-05 12:59:02.22816
60	8	4	2026-01-05 12:59:02.230365	2026-01-05 12:59:02.230365
61	8	5	2026-01-05 12:59:02.232092	2026-01-05 12:59:02.232092
62	8	6	2026-01-05 12:59:02.233728	2026-01-05 12:59:02.233728
63	8	7	2026-01-05 12:59:02.23549	2026-01-05 12:59:02.23549
64	8	8	2026-01-05 12:59:02.237114	2026-01-05 12:59:02.237114
65	9	1	2026-01-05 12:59:02.269463	2026-01-05 12:59:02.269463
66	9	2	2026-01-05 12:59:02.271503	2026-01-05 12:59:02.271503
67	9	3	2026-01-05 12:59:02.273333	2026-01-05 12:59:02.273333
68	9	4	2026-01-05 12:59:02.275369	2026-01-05 12:59:02.275369
69	9	5	2026-01-05 12:59:02.276896	2026-01-05 12:59:02.276896
70	9	6	2026-01-05 12:59:02.278276	2026-01-05 12:59:02.278276
71	9	7	2026-01-05 12:59:02.279818	2026-01-05 12:59:02.279818
72	9	8	2026-01-05 12:59:02.281295	2026-01-05 12:59:02.281295
73	10	1	2026-01-05 12:59:02.300511	2026-01-05 12:59:02.300511
74	10	2	2026-01-05 12:59:02.302077	2026-01-05 12:59:02.302077
75	10	3	2026-01-05 12:59:02.303449	2026-01-05 12:59:02.303449
76	10	4	2026-01-05 12:59:02.30489	2026-01-05 12:59:02.30489
77	10	5	2026-01-05 12:59:02.306245	2026-01-05 12:59:02.306245
78	10	6	2026-01-05 12:59:02.307868	2026-01-05 12:59:02.307868
79	10	7	2026-01-05 12:59:02.309328	2026-01-05 12:59:02.309328
80	10	8	2026-01-05 12:59:02.310911	2026-01-05 12:59:02.310911
81	11	1	2026-01-05 12:59:02.332107	2026-01-05 12:59:02.332107
82	11	2	2026-01-05 12:59:02.333588	2026-01-05 12:59:02.333588
83	11	3	2026-01-05 12:59:02.334985	2026-01-05 12:59:02.334985
84	11	4	2026-01-05 12:59:02.336388	2026-01-05 12:59:02.336388
85	11	5	2026-01-05 12:59:02.337739	2026-01-05 12:59:02.337739
86	11	6	2026-01-05 12:59:02.339264	2026-01-05 12:59:02.339264
87	11	7	2026-01-05 12:59:02.34069	2026-01-05 12:59:02.34069
88	11	8	2026-01-05 12:59:02.342049	2026-01-05 12:59:02.342049
89	12	1	2026-01-05 12:59:02.364483	2026-01-05 12:59:02.364483
90	12	2	2026-01-05 12:59:02.366672	2026-01-05 12:59:02.366672
91	12	3	2026-01-05 12:59:02.368215	2026-01-05 12:59:02.368215
92	12	4	2026-01-05 12:59:02.369592	2026-01-05 12:59:02.369592
93	12	5	2026-01-05 12:59:02.371314	2026-01-05 12:59:02.371314
94	12	6	2026-01-05 12:59:02.372873	2026-01-05 12:59:02.372873
95	12	7	2026-01-05 12:59:02.374246	2026-01-05 12:59:02.374246
96	12	8	2026-01-05 12:59:02.376013	2026-01-05 12:59:02.376013
97	13	1	2026-01-05 12:59:02.409274	2026-01-05 12:59:02.409274
98	13	2	2026-01-05 12:59:02.411504	2026-01-05 12:59:02.411504
99	13	3	2026-01-05 12:59:02.413405	2026-01-05 12:59:02.413405
100	13	4	2026-01-05 12:59:02.415674	2026-01-05 12:59:02.415674
101	13	5	2026-01-05 12:59:02.417598	2026-01-05 12:59:02.417598
102	13	6	2026-01-05 12:59:02.4192	2026-01-05 12:59:02.4192
103	13	7	2026-01-05 12:59:02.421229	2026-01-05 12:59:02.421229
104	13	8	2026-01-05 12:59:02.422724	2026-01-05 12:59:02.422724
105	14	1	2026-01-05 12:59:02.443158	2026-01-05 12:59:02.443158
106	14	2	2026-01-05 12:59:02.444709	2026-01-05 12:59:02.444709
107	14	3	2026-01-05 12:59:02.446293	2026-01-05 12:59:02.446293
108	14	4	2026-01-05 12:59:02.448052	2026-01-05 12:59:02.448052
109	14	5	2026-01-05 12:59:02.449511	2026-01-05 12:59:02.449511
110	14	6	2026-01-05 12:59:02.45086	2026-01-05 12:59:02.45086
111	14	7	2026-01-05 12:59:02.452547	2026-01-05 12:59:02.452547
112	14	8	2026-01-05 12:59:02.453914	2026-01-05 12:59:02.453914
113	15	1	2026-01-05 12:59:02.474422	2026-01-05 12:59:02.474422
114	15	2	2026-01-05 12:59:02.475889	2026-01-05 12:59:02.475889
115	15	3	2026-01-05 12:59:02.477514	2026-01-05 12:59:02.477514
116	15	4	2026-01-05 12:59:02.479194	2026-01-05 12:59:02.479194
117	15	5	2026-01-05 12:59:02.480702	2026-01-05 12:59:02.480702
118	15	6	2026-01-05 12:59:02.482088	2026-01-05 12:59:02.482088
119	15	7	2026-01-05 12:59:02.48359	2026-01-05 12:59:02.48359
120	15	8	2026-01-05 12:59:02.485023	2026-01-05 12:59:02.485023
121	16	1	2026-01-05 12:59:02.505282	2026-01-05 12:59:02.505282
122	16	2	2026-01-05 12:59:02.506969	2026-01-05 12:59:02.506969
123	16	3	2026-01-05 12:59:02.508669	2026-01-05 12:59:02.508669
124	16	4	2026-01-05 12:59:02.510174	2026-01-05 12:59:02.510174
125	16	5	2026-01-05 12:59:02.511677	2026-01-05 12:59:02.511677
126	16	6	2026-01-05 12:59:02.51309	2026-01-05 12:59:02.51309
127	16	7	2026-01-05 12:59:02.514421	2026-01-05 12:59:02.514421
128	16	8	2026-01-05 12:59:02.515759	2026-01-05 12:59:02.515759
137	18	1	2026-01-05 12:59:02.580294	2026-01-05 12:59:02.580294
138	18	2	2026-01-05 12:59:02.582239	2026-01-05 12:59:02.582239
139	18	3	2026-01-05 12:59:02.583679	2026-01-05 12:59:02.583679
140	18	4	2026-01-05 12:59:02.585526	2026-01-05 12:59:02.585526
141	18	5	2026-01-05 12:59:02.586989	2026-01-05 12:59:02.586989
142	18	6	2026-01-05 12:59:02.588866	2026-01-05 12:59:02.588866
143	18	7	2026-01-05 12:59:02.590941	2026-01-05 12:59:02.590941
144	18	8	2026-01-05 12:59:02.592505	2026-01-05 12:59:02.592505
145	19	1	2026-01-05 12:59:02.614072	2026-01-05 12:59:02.614072
146	19	2	2026-01-05 12:59:02.615468	2026-01-05 12:59:02.615468
147	19	3	2026-01-05 12:59:02.617178	2026-01-05 12:59:02.617178
148	19	4	2026-01-05 12:59:02.618628	2026-01-05 12:59:02.618628
149	19	5	2026-01-05 12:59:02.620283	2026-01-05 12:59:02.620283
150	19	6	2026-01-05 12:59:02.621964	2026-01-05 12:59:02.621964
151	19	7	2026-01-05 12:59:02.623433	2026-01-05 12:59:02.623433
152	19	8	2026-01-05 12:59:02.62483	2026-01-05 12:59:02.62483
153	20	1	2026-01-05 12:59:02.645007	2026-01-05 12:59:02.645007
154	20	2	2026-01-05 12:59:02.646394	2026-01-05 12:59:02.646394
155	20	3	2026-01-05 12:59:02.647879	2026-01-05 12:59:02.647879
156	20	4	2026-01-05 12:59:02.649285	2026-01-05 12:59:02.649285
157	20	5	2026-01-05 12:59:02.650652	2026-01-05 12:59:02.650652
158	20	6	2026-01-05 12:59:02.652718	2026-01-05 12:59:02.652718
159	20	7	2026-01-05 12:59:02.65408	2026-01-05 12:59:02.65408
160	20	8	2026-01-05 12:59:02.655509	2026-01-05 12:59:02.655509
161	21	1	2026-01-28 09:48:44.388417	2026-01-28 09:48:44.388417
162	21	2	2026-01-28 09:48:44.393646	2026-01-28 09:48:44.393646
163	21	3	2026-01-28 09:48:44.395517	2026-01-28 09:48:44.395517
164	21	4	2026-01-28 09:48:44.397119	2026-01-28 09:48:44.397119
165	21	5	2026-01-28 09:48:44.399233	2026-01-28 09:48:44.399233
166	21	6	2026-01-28 09:48:44.400962	2026-01-28 09:48:44.400962
167	21	7	2026-01-28 09:48:44.402566	2026-01-28 09:48:44.402566
168	21	8	2026-01-28 09:48:44.404107	2026-01-28 09:48:44.404107
169	22	1	2026-01-28 15:53:54.628487	2026-01-28 15:53:54.628487
170	22	2	2026-01-28 15:53:54.634725	2026-01-28 15:53:54.634725
171	22	3	2026-01-28 15:53:54.640706	2026-01-28 15:53:54.640706
172	22	4	2026-01-28 15:53:54.646394	2026-01-28 15:53:54.646394
173	22	5	2026-01-28 15:53:54.652277	2026-01-28 15:53:54.652277
174	22	6	2026-01-28 15:53:54.658025	2026-01-28 15:53:54.658025
175	22	7	2026-01-28 15:53:54.663962	2026-01-28 15:53:54.663962
176	22	8	2026-01-28 15:53:54.669661	2026-01-28 15:53:54.669661
177	22	15	2026-01-28 15:53:55.318368	2026-01-28 15:53:55.318368
178	22	9	2026-01-28 15:53:55.328678	2026-01-28 15:53:55.328678
179	22	12	2026-01-28 15:53:55.335606	2026-01-28 15:53:55.335606
180	22	16	2026-01-28 15:53:55.341551	2026-01-28 15:53:55.341551
181	22	11	2026-01-28 15:53:55.347291	2026-01-28 15:53:55.347291
190	24	1	2026-02-19 07:19:20.389848	2026-02-19 07:19:20.389848
191	24	2	2026-02-19 07:19:20.392585	2026-02-19 07:19:20.392585
192	24	3	2026-02-19 07:19:20.394267	2026-02-19 07:19:20.394267
193	24	4	2026-02-19 07:19:20.39585	2026-02-19 07:19:20.39585
194	24	5	2026-02-19 07:19:20.397514	2026-02-19 07:19:20.397514
195	24	6	2026-02-19 07:19:20.399192	2026-02-19 07:19:20.399192
196	24	7	2026-02-19 07:19:20.402223	2026-02-19 07:19:20.402223
197	24	8	2026-02-19 07:19:20.404725	2026-02-19 07:19:20.404725
198	25	1	2026-02-19 07:21:17.215175	2026-02-19 07:21:17.215175
199	25	2	2026-02-19 07:21:17.21718	2026-02-19 07:21:17.21718
200	25	3	2026-02-19 07:21:17.219039	2026-02-19 07:21:17.219039
201	25	4	2026-02-19 07:21:17.221774	2026-02-19 07:21:17.221774
202	25	5	2026-02-19 07:21:17.224996	2026-02-19 07:21:17.224996
203	25	6	2026-02-19 07:21:17.227049	2026-02-19 07:21:17.227049
204	25	7	2026-02-19 07:21:17.228642	2026-02-19 07:21:17.228642
205	25	8	2026-02-19 07:21:17.230283	2026-02-19 07:21:17.230283
206	26	1	2026-02-19 07:28:19.686035	2026-02-19 07:28:19.686035
207	26	2	2026-02-19 07:28:19.688973	2026-02-19 07:28:19.688973
208	26	3	2026-02-19 07:28:19.691655	2026-02-19 07:28:19.691655
209	26	4	2026-02-19 07:28:19.693661	2026-02-19 07:28:19.693661
210	26	5	2026-02-19 07:28:19.695806	2026-02-19 07:28:19.695806
211	26	6	2026-02-19 07:28:19.697481	2026-02-19 07:28:19.697481
212	26	7	2026-02-19 07:28:19.699084	2026-02-19 07:28:19.699084
213	26	8	2026-02-19 07:28:19.701165	2026-02-19 07:28:19.701165
214	27	1	2026-02-19 07:32:05.96571	2026-02-19 07:32:05.96571
215	27	2	2026-02-19 07:32:05.967802	2026-02-19 07:32:05.967802
216	27	3	2026-02-19 07:32:05.96966	2026-02-19 07:32:05.96966
217	27	4	2026-02-19 07:32:05.972264	2026-02-19 07:32:05.972264
218	27	5	2026-02-19 07:32:05.975365	2026-02-19 07:32:05.975365
219	27	6	2026-02-19 07:32:05.977872	2026-02-19 07:32:05.977872
220	27	7	2026-02-19 07:32:05.979939	2026-02-19 07:32:05.979939
221	27	8	2026-02-19 07:32:05.981828	2026-02-19 07:32:05.981828
222	28	1	2026-02-24 11:30:23.419851	2026-02-24 11:30:23.419851
223	28	2	2026-02-24 11:30:23.423037	2026-02-24 11:30:23.423037
224	28	3	2026-02-24 11:30:23.425602	2026-02-24 11:30:23.425602
225	28	4	2026-02-24 11:30:23.4274	2026-02-24 11:30:23.4274
226	28	5	2026-02-24 11:30:23.429049	2026-02-24 11:30:23.429049
227	28	6	2026-02-24 11:30:23.430642	2026-02-24 11:30:23.430642
228	28	7	2026-02-24 11:30:23.43225	2026-02-24 11:30:23.43225
229	28	8	2026-02-24 11:30:23.433765	2026-02-24 11:30:23.433765
230	29	1	2026-02-24 11:33:42.296287	2026-02-24 11:33:42.296287
231	29	2	2026-02-24 11:33:42.298929	2026-02-24 11:33:42.298929
232	29	3	2026-02-24 11:33:42.300795	2026-02-24 11:33:42.300795
233	29	4	2026-02-24 11:33:42.302614	2026-02-24 11:33:42.302614
234	29	5	2026-02-24 11:33:42.304337	2026-02-24 11:33:42.304337
235	29	6	2026-02-24 11:33:42.306071	2026-02-24 11:33:42.306071
236	29	7	2026-02-24 11:33:42.309186	2026-02-24 11:33:42.309186
237	29	8	2026-02-24 11:33:42.311923	2026-02-24 11:33:42.311923
238	30	1	2026-02-24 11:38:36.352413	2026-02-24 11:38:36.352413
239	30	2	2026-02-24 11:38:36.355078	2026-02-24 11:38:36.355078
240	30	3	2026-02-24 11:38:36.357044	2026-02-24 11:38:36.357044
241	30	4	2026-02-24 11:38:36.358889	2026-02-24 11:38:36.358889
242	30	5	2026-02-24 11:38:36.361893	2026-02-24 11:38:36.361893
243	30	6	2026-02-24 11:38:36.363807	2026-02-24 11:38:36.363807
244	30	7	2026-02-24 11:38:36.366163	2026-02-24 11:38:36.366163
245	30	8	2026-02-24 11:38:36.368847	2026-02-24 11:38:36.368847
246	31	1	2026-02-24 12:19:55.252922	2026-02-24 12:19:55.252922
247	31	2	2026-02-24 12:19:55.255713	2026-02-24 12:19:55.255713
248	31	3	2026-02-24 12:19:55.257396	2026-02-24 12:19:55.257396
249	31	4	2026-02-24 12:19:55.259171	2026-02-24 12:19:55.259171
250	31	5	2026-02-24 12:19:55.260831	2026-02-24 12:19:55.260831
251	31	6	2026-02-24 12:19:55.262504	2026-02-24 12:19:55.262504
252	31	7	2026-02-24 12:19:55.264312	2026-02-24 12:19:55.264312
253	31	8	2026-02-24 12:19:55.266682	2026-02-24 12:19:55.266682
254	32	1	2026-02-27 21:38:16.364563	2026-02-27 21:38:16.364563
255	32	2	2026-02-27 21:38:16.368556	2026-02-27 21:38:16.368556
256	32	3	2026-02-27 21:38:16.371196	2026-02-27 21:38:16.371196
257	32	4	2026-02-27 21:38:16.373081	2026-02-27 21:38:16.373081
258	32	5	2026-02-27 21:38:16.374635	2026-02-27 21:38:16.374635
259	32	6	2026-02-27 21:38:16.376359	2026-02-27 21:38:16.376359
260	32	7	2026-02-27 21:38:16.378244	2026-02-27 21:38:16.378244
261	32	8	2026-02-27 21:38:16.379833	2026-02-27 21:38:16.379833
270	34	1	2026-02-27 22:43:29.581639	2026-02-27 22:43:29.581639
271	34	2	2026-02-27 22:43:29.583749	2026-02-27 22:43:29.583749
272	34	3	2026-02-27 22:43:29.586116	2026-02-27 22:43:29.586116
273	34	4	2026-02-27 22:43:29.587708	2026-02-27 22:43:29.587708
274	34	5	2026-02-27 22:43:29.589276	2026-02-27 22:43:29.589276
275	34	6	2026-02-27 22:43:29.591448	2026-02-27 22:43:29.591448
276	34	7	2026-02-27 22:43:29.593397	2026-02-27 22:43:29.593397
277	34	8	2026-02-27 22:43:29.595647	2026-02-27 22:43:29.595647
278	35	1	2026-03-04 12:34:20.530834	2026-03-04 12:34:20.530834
279	35	2	2026-03-04 12:34:20.534155	2026-03-04 12:34:20.534155
280	35	3	2026-03-04 12:34:20.536365	2026-03-04 12:34:20.536365
281	35	4	2026-03-04 12:34:20.538571	2026-03-04 12:34:20.538571
282	35	5	2026-03-04 12:34:20.541481	2026-03-04 12:34:20.541481
283	35	6	2026-03-04 12:34:20.544233	2026-03-04 12:34:20.544233
284	35	7	2026-03-04 12:34:20.546282	2026-03-04 12:34:20.546282
285	35	8	2026-03-04 12:34:20.548637	2026-03-04 12:34:20.548637
286	36	1	2026-03-09 08:02:46.899931	2026-03-09 08:02:46.899931
287	36	2	2026-03-09 08:02:46.903851	2026-03-09 08:02:46.903851
288	36	3	2026-03-09 08:02:46.905894	2026-03-09 08:02:46.905894
289	36	4	2026-03-09 08:02:46.907887	2026-03-09 08:02:46.907887
290	36	5	2026-03-09 08:02:46.910098	2026-03-09 08:02:46.910098
291	36	6	2026-03-09 08:02:46.91306	2026-03-09 08:02:46.91306
292	36	7	2026-03-09 08:02:46.915945	2026-03-09 08:02:46.915945
293	36	8	2026-03-09 08:02:46.920826	2026-03-09 08:02:46.920826
294	37	1	2026-03-11 21:40:07.75868	2026-03-11 21:40:07.75868
295	37	2	2026-03-11 21:40:07.762943	2026-03-11 21:40:07.762943
296	37	3	2026-03-11 21:40:07.766191	2026-03-11 21:40:07.766191
297	37	4	2026-03-11 21:40:07.769151	2026-03-11 21:40:07.769151
298	37	5	2026-03-11 21:40:07.771639	2026-03-11 21:40:07.771639
299	37	6	2026-03-11 21:40:07.773814	2026-03-11 21:40:07.773814
300	37	7	2026-03-11 21:40:07.775836	2026-03-11 21:40:07.775836
301	37	8	2026-03-11 21:40:07.779433	2026-03-11 21:40:07.779433
\.


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.cars (id, model, brand, category, color, year, daily_price, status, main_image_url, transmission, fuel_type, seats, engine_size, air_conditioning, gps, sunroof, bluetooth, featured, created_at, updated_at, vendor_id, stripe_product_id, stripe_price_id, weekly_price, monthly_price, daily_milleage, weekly_milleage, monthly_milleage, insurance_policy, additional_mileage_charge, bookings_count, slug, with_driver, five_hours_charge, ten_hours_charge, luggage_capacity, hourly_price) FROM stdin;
5	Model 3	Tesla	Electric	Silver	2022	80	available	https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80	Automatic	Electric	5	-	t	t	t	t	t	2026-01-05 12:59:02.087332	2026-01-05 12:59:02.087332	2	\N	\N	520	2080	250	1200	4000	Basic Comprehensive Insurance	5	0	tesla-model-3	f	\N	\N	\N	\N
6	C-Class	Mercedes-Benz	Luxury	Silver	2023	85	available	https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?auto=format&fit=crop&w=800&q=80	Automatic	Petrol	5	2.0L	t	t	t	t	f	2026-01-05 12:59:02.129776	2026-01-05 12:59:02.129776	2	\N	\N	552	2210	250	1200	4000	Basic Comprehensive Insurance	5	0	mercedes-benz-c-class	t	\N	\N	\N	\N
7	A4	Audi	Luxury	Gray	2022	72	available	https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?auto=format&fit=crop&w=800&q=80	Automatic	Petrol	5	2.0L	t	t	f	t	f	2026-01-05 12:59:02.170871	2026-01-05 12:59:02.170871	3	\N	\N	468	1872	250	1200	4000	Basic Comprehensive Insurance	5	0	audi-a4	t	\N	\N	\N	\N
8	Tucson	Hyundai	SUV	Blue	2023	45	available	https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&w=800&q=80	Automatic	Hybrid	5	1.6L	t	t	t	t	f	2026-01-05 12:59:02.212639	2026-01-05 12:59:02.212639	3	\N	\N	292	1170	250	1200	4000	Basic Comprehensive Insurance	5	0	hyundai-tucson	t	\N	\N	\N	\N
9	Sportage	Kia	SUV	White	2022	42	available	https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?auto=format&fit=crop&w=800&q=80	Automatic	Petrol	5	2.0L	t	t	f	t	f	2026-01-05 12:59:02.260372	2026-01-05 12:59:02.260372	3	\N	\N	273	1092	250	1200	4000	Basic Comprehensive Insurance	5	0	kia-sportage	f	\N	\N	\N	\N
10	Golf	Volkswagen	Compact	Red	2021	38	available	https://images.unsplash.com/photo-1549924231-f129b911e442?auto=format&fit=crop&w=800&q=80	Manual	Petrol	5	1.5L	t	f	t	t	f	2026-01-05 12:59:02.294407	2026-01-05 12:59:02.294407	4	\N	\N	247	988	250	1200	4000	Basic Comprehensive Insurance	5	0	volkswagen-golf	f	\N	\N	\N	\N
11	Altima	Nissan	Sedan	Black	2022	50	available	https://images.unsplash.com/photo-1617470706004-e6ed057f782c?auto=format&fit=crop&w=800&q=80	Automatic	Petrol	5	2.5L	t	t	f	t	f	2026-01-05 12:59:02.326211	2026-01-05 12:59:02.326211	4	\N	\N	325	1300	250	1200	4000	Basic Comprehensive Insurance	5	0	nissan-altima	f	\N	\N	\N	\N
12	Camaro	Chevrolet	Sports	Yellow	2021	70	available	https://images.unsplash.com/photo-1582639510494-c80b5de9f148?auto=format&fit=crop&w=800&q=80	Manual	Petrol	4	3.6L	t	f	t	t	f	2026-01-05 12:59:02.357617	2026-01-05 12:59:02.357617	4	\N	\N	455	1820	250	1200	4000	Basic Comprehensive Insurance	5	0	chevrolet-camaro	t	\N	\N	\N	\N
13	Wrangler	Jeep	SUV	Green	2023	65	available	https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?auto=format&fit=crop&w=800&q=80	Manual	Petrol	5	3.6L	t	t	t	t	f	2026-01-05 12:59:02.396686	2026-01-05 12:59:02.396686	1	\N	\N	422	1690	250	1200	4000	Basic Comprehensive Insurance	5	0	jeep-wrangler	t	\N	\N	\N	\N
15	Outback	Subaru	SUV	Blue	2023	52	available	https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&w=800&q=80	Automatic	Petrol	5	2.5L	t	t	f	t	f	2026-01-05 12:59:02.46787	2026-01-05 12:59:02.46787	3	\N	\N	338	1352	250	1200	4000	Basic Comprehensive Insurance	5	0	subaru-outback	f	\N	\N	\N	\N
16	CX-5	Mazda	SUV	Red	2022	48	available	https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?auto=format&fit=crop&w=800&q=80	Automatic	Petrol	5	2.5L	t	t	t	t	f	2026-01-05 12:59:02.499068	2026-01-05 12:59:02.499068	4	\N	\N	312	1248	250	1200	4000	Basic Comprehensive Insurance	5	0	mazda-cx-5	t	\N	\N	\N	\N
18	Range Rover Sport	Land Rover	Luxury	Black	2022	120	available	https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&w=800&q=80	Automatic	Petrol	5	3.0L	t	t	t	t	t	2026-01-05 12:59:02.5695	2026-01-05 12:59:02.5695	2	\N	\N	780	3120	250	1200	4000	Basic Comprehensive Insurance	5	0	land-rover-range-rover-sport	t	\N	\N	\N	\N
19	911	Porsche	Sports	Red	2021	150	available	https://images.unsplash.com/photo-1502877338535-766e1452684a?auto=format&fit=crop&w=800&q=80	Manual	Petrol	2	3.0L	t	t	f	t	t	2026-01-05 12:59:02.607401	2026-01-05 12:59:02.607401	3	\N	\N	975	3900	250	1200	4000	Basic Comprehensive Insurance	5	0	porsche-911	f	\N	\N	\N	\N
3	3 Series	BMW	Luxury	Black	2023	75	available	https://images.unsplash.com/photo-1555215695-3004980ad54e?auto=format&fit=crop&w=800&q=80	Automatic	Diesel	5	3.0L	t	t	t	t	f	2026-01-05 12:59:02.015661	2026-04-29 12:57:35.577892	1	\N	\N	487	1950	250	1200	4000	Basic Comprehensive Insurance	5	1	bmw-3-series	t	\N	\N	\N	\N
22	3 Series	Mercedes-Benz	SUV	Blue	2024	50	available	\N	Manual	Petrol	4	1.5	t	f	f	f	f	2026-01-28 15:53:54.539312	2026-01-28 15:53:55.290523	1	\N	\N	300	1000	0	0	0	As per laws	0	0	mercedes-benz-3-series	f	\N	\N	\N	\N
14	RX	Lexus	Luxury	Silver	2022	90	available	https://images.unsplash.com/photo-1617470706004-e6ed057f782c?auto=format&fit=crop&w=800&q=80	Automatic	Hybrid	5	2.5L	t	t	t	t	t	2026-01-05 12:59:02.436592	2026-01-05 12:59:02.436592	2	\N	\N	585	2340	250	1200	4000	Basic Comprehensive Insurance	5	1	lexus-rx	f	\N	\N	\N	\N
21	Cross	Toyota		White	2026	0	available	\N			4		t	f	f	f	f	2026-01-28 09:48:44.335323	2026-01-28 09:48:44.550847	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	3	toyota-cross	t	250	450	3	\N
26	Civic	toyota		Black	2026	0	available	\N			4		t	f	f	f	f	2026-02-19 07:28:19.656046	2026-02-19 07:28:19.768864	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	2	toyota-civic	t	250	450	4	\N
23	Civic	Mercedes Benz		Black	2026	0	available	\N			4		t	f	f	f	f	2026-01-29 11:02:23.917806	2026-01-29 11:05:05.405558	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	0	mercedes-benz-civic	t	150	200	3	\N
24	Civic	Mercedes Benz		Black	2026	0	available	\N			4		t	f	f	f	f	2026-02-19 07:19:20.362022	2026-02-19 07:19:20.520728	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	0	mercedes-benz-civic-2026	t	300	550	2	\N
25	C-Class	Toyota		white	2026	0	available	\N			3		t	f	f	f	f	2026-02-19 07:21:17.185396	2026-02-19 07:21:17.264808	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	0	toyota-c-class	t	500	900	3	\N
4	Mustang	Ford	Sports	Red	2020	68	available	https://images.unsplash.com/photo-1502877338535-766e1452684a?auto=format&fit=crop&w=800&q=80	Manual	Petrol	4	5.0L	t	f	f	t	f	2026-01-05 12:59:02.04915	2026-01-05 12:59:02.04915	2	\N	\N	442	1768	250	1200	4000	Basic Comprehensive Insurance	5	1	ford-mustang	t	\N	\N	\N	\N
20	F-Type	Jaguar	Sports	British Racing Green	2022	110	available	https://images.unsplash.com/photo-1582639510494-c80b5de9f148?auto=format&fit=crop&w=800&q=80	Automatic	Petrol	2	3.0L	t	t	t	t	f	2026-01-05 12:59:02.638717	2026-01-05 12:59:02.638717	4	\N	\N	715	2860	250	1200	4000	Basic Comprehensive Insurance	5	2	jaguar-f-type	f	\N	\N	\N	\N
36	Limousine	Toyota	Limousine	N/A	2026	0	available	\N			\N		t	f	f	f	f	2026-03-09 08:02:46.866753	2026-03-09 08:02:47.005676	1	\N	\N	\N	\N	0	0	0	Included for Limousine	0	0	shehroz-toyota	t	\N	\N	\N	150
27	Camry	Mercedes Benz		Blue	2026	0	available	\N			4		t	f	f	f	f	2026-02-19 07:32:05.931266	2026-02-19 07:32:06.043931	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	1	mercedes-benz-camry	t	230	450	6	\N
37	Limousine	Toyota	Limousine	N/A	2026	0	available	\N			\N		t	f	f	f	f	2026-03-11 21:40:07.7224	2026-03-11 21:40:08.198982	1	\N	\N	\N	\N	0	0	0	Included for Limousine	0	0	tronsit-stuff	t	\N	\N	\N	200
29	Civic	BMW		Blue	2026	0	available	\N			1		t	f	f	f	f	2026-02-24 11:33:42.268321	2026-02-24 11:33:42.345424	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	0	bmw-civic	t	250	522	2	\N
28	camrey	Mercedes-Benz		White	2026	0	available	\N			4		t	f	f	f	f	2026-02-24 11:30:23.409747	2026-02-24 11:30:23.507089	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	1	mercedes-benz-camrey	t	450	600	5	\N
31	Civic	BMW		Black	2026	0	available	\N			5		t	f	f	f	f	2026-02-24 12:19:55.227615	2026-02-24 12:19:55.344164	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	0	bmw-civic-2026	t	450	600	3	\N
30	camry	Mercedes Benz		Numquam exercitation	2026	0	available	\N			2		t	f	f	f	f	2026-02-24 11:38:36.31664	2026-02-24 11:38:36.43913	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	1	mercedes-benz-camry-2026	t	450	455	3	\N
32	limosine	Mercedes-Benz	Limousine	Black	2026	0	available	\N			7		t	f	f	f	f	2026-02-27 21:49:09.178756	2026-02-27 21:38:16.476926	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	0	mercedes-benz-limosine	t	500	1500	4	\N
34	Camry	BMW		Black	2026	0	available	\N			6		t	f	f	f	f	2026-02-27 22:43:29.571634	2026-02-27 22:43:29.634582	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	0	bmw-camry	t	450	499	4	\N
35	Limousine	Toyota	Limousine	N/A	2026	0	available	\N			\N		t	f	f	f	f	2026-03-04 12:34:20.48551	2026-03-04 12:34:20.642614	1	\N	\N	\N	\N	0	0	0	Included for Limousine	0	0	toyota-limousine	t	\N	\N	\N	650
33	LC	Toyota	Limousine	Blue	2026	0	available	\N			8		t	f	f	f	f	2026-02-27 22:41:16.117015	2026-03-05 11:14:23.096901	1	\N	\N	\N	\N	0	0	0	Included as per standard terms	0	0	toyota-lc	t	450	900	5	199
17	XC70	Volvo	Luxury	White	2023	78	available	https://images.unsplash.com/photo-1617470706004-e6ed057f782c?auto=format&fit=crop&w=800&q=80	Automatic	Hybrid	5	2.0L	t	t	t	t	f	2026-01-05 12:59:02.529521	2026-03-09 06:53:06.768957	1	\N	\N	507	2028	250	1200	4000	Basic Comprehensive Insurance	5	0	volvo-xc60	t	250	450	4	\N
\.


--
-- Data for Name: discounts; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.discounts (id, vendor_id, category, discount_percentage, active, created_at, updated_at) FROM stdin;
3	1	{"With Driver"}	5.0	t	2026-01-28 15:12:17.112366	2026-01-28 15:12:17.112366
4	\N	{Luxury}	10.0	t	2026-01-28 15:22:05.777804	2026-01-28 15:22:05.777804
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.documents (id, user_id, doc_name, document_type, status, reason, created_at, updated_at) FROM stdin;
1	1	A Valid UAE driving license	Resident	approved		2026-01-05 12:59:00.654561	2026-01-05 12:59:00.654561
3	2	Home country driving license and IDP	Tourist	approved		2026-01-05 12:59:00.862079	2026-01-05 12:59:00.862079
4	2	Passport Copy	Tourist	approved		2026-01-05 12:59:00.863765	2026-01-05 12:59:00.863765
5	2	Copy of visa Entry Stamp	Tourist	approved		2026-01-05 12:59:00.865114	2026-01-05 12:59:00.865114
2	1	Emirates ID front and back	Resident	approved	\N	2026-01-05 12:59:00.656519	2026-01-28 15:15:50.941431
\.


--
-- Data for Name: features; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.features (id, name, common, created_at, updated_at) FROM stdin;
1	Air Conditioning	t	2026-01-05 13:08:33.166237	2026-01-05 13:08:33.166237
2	Bluetooth	t	2026-01-05 13:08:33.185175	2026-01-05 13:08:33.185175
3	USB Port	t	2026-01-05 13:08:33.195872	2026-01-05 13:08:33.195872
4	AM/FM Radio	t	2026-01-05 12:59:01.728957	2026-01-05 12:59:01.728957
5	Power Windows	t	2026-01-05 12:59:01.739603	2026-01-05 12:59:01.739603
6	Power Steering	t	2026-01-05 12:59:01.751558	2026-01-05 12:59:01.751558
7	Central Locking	t	2026-01-05 12:59:01.768241	2026-01-05 12:59:01.768241
8	Cruise Control	t	2026-01-05 12:59:01.788019	2026-01-05 12:59:01.788019
9	GPS Navigation	f	2026-01-05 12:59:01.803051	2026-01-05 12:59:01.803051
10	Sunroof/Moonroof	f	2026-01-05 12:59:01.819294	2026-01-05 12:59:01.819294
11	Leather Seats	f	2026-01-05 12:59:01.830804	2026-01-05 12:59:01.830804
12	Heated Seats	f	2026-01-05 12:59:01.839262	2026-01-05 12:59:01.839262
13	Backup Camera	f	2026-01-05 12:59:01.84656	2026-01-05 12:59:01.84656
14	Apple CarPlay	f	2026-01-05 12:59:01.85362	2026-01-05 12:59:01.85362
15	Android Auto	f	2026-01-05 12:59:01.872051	2026-01-05 12:59:01.872051
16	Keyless Entry	f	2026-01-05 12:59:01.887037	2026-01-05 12:59:01.887037
17	Premium Sound System	f	2026-01-05 12:59:01.898292	2026-01-05 12:59:01.898292
18	Blind Spot Monitoring	f	2026-01-05 12:59:01.907225	2026-01-05 12:59:01.907225
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) FROM stdin;
\.


--
-- Data for Name: invited_vendors; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.invited_vendors (id, email, first_name, last_name, invite_token, invite_sent, status, created_at, updated_at) FROM stdin;
1	newpartner@rents.com	New	Partner	1ab9da4a72eb4860f4e810bf84e3f00d	t	pending	2026-01-05 12:59:02.893034	2026-01-05 12:59:02.893034
2	expired@vendor.com	Old	Invite	2fb3cfd7147f31091a3a01264bab4274	t	pending	2026-01-05 12:59:02.899564	2026-01-05 12:59:02.899564
\.


--
-- Data for Name: invoice_items; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.invoice_items (id, invoice_id, description, amount, created_at, updated_at) FROM stdin;
1	1	Monthly Subscription	500.00	2026-01-05 12:59:02.839869	2026-01-05 12:59:02.839869
2	2	Commission Fees	750.00	2026-01-05 12:59:02.856729	2026-01-05 12:59:02.856729
\.


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.invoices (id, vendor_id, payment_status, amount, created_at, updated_at, stripe_payment_intent_id, paid_at, payment_method_id, save_payment_method, payment_mode) FROM stdin;
1	1	pending	500.00	2026-01-05 12:59:02.821238	2026-01-05 12:59:02.821238	pi_inv_1767617942_1	\N	\N	f	Online
2	2	paid	750.00	2026-01-05 12:59:02.847197	2026-01-05 12:59:02.847197	pi_inv_1767617942_2	2026-01-03 12:59:02.846818	\N	f	Online
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.notifications (id, admin_id, title, message, related_path, read_at, created_at, updated_at) FROM stdin;
2	2	New Vendor Request	C Company: (Tester Dexter) has submitted a registration request.	/admin/vendor_requests	\N	2026-03-14 09:32:29.352578	2026-03-14 09:32:29.352578
1	1	New Vendor Request	C Company: (Tester Dexter) has submitted a registration request.	/admin/vendor_requests	2026-03-14 09:41:39.560556	2026-03-14 09:32:29.342048	2026-03-14 09:41:39.561478
4	2	New Car Listed	Vendor Speedy Rentals Inc. has listed a new car: Toyota Civic.	/admin/cars	\N	2026-03-14 10:16:36.587406	2026-03-14 10:16:36.587406
3	1	New Car Listed	Vendor Speedy Rentals Inc. has listed a new car: Toyota Civic.	/admin/cars	2026-03-14 10:16:49.474274	2026-03-14 10:16:36.578411	2026-03-14 10:16:49.475193
6	2	Car Deleted	Vendor Speedy Rentals Inc. has deleted their car: Toyota Civic.	/admin/vendors/1	\N	2026-03-14 10:23:35.652802	2026-03-14 10:23:35.652802
5	1	Car Deleted	Vendor Speedy Rentals Inc. has deleted their car: Toyota Civic.	/admin/vendors/1	2026-03-14 10:23:52.540998	2026-03-14 10:23:35.606246	2026-03-14 10:23:35.606246
7	1	Car Deleted	Vendor Speedy Rentals Inc. has deleted their car: Honda Civic.	/admin/vendors/1	2026-03-14 11:00:12.528385	2026-03-14 10:56:06.382993	2026-03-14 10:56:06.382993
9	2	Car Deleted	Vendor Speedy Rentals Inc. has deleted their car: Toyota Camry.	/admin/vendors/1	\N	2026-03-14 11:00:42.64345	2026-03-14 11:00:42.64345
8	1	Car Deleted	Vendor Speedy Rentals Inc. has deleted their car: Toyota Camry.	/admin/vendors/1	2026-03-14 11:00:57.086078	2026-03-14 11:00:42.592223	2026-03-14 11:00:57.086455
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.schema_migrations (version) FROM stdin;
20250702123519
20250702123547
20250703204611
20250703205413
20250704000000
20250704223810
20250705121818
20250705150652
20250705151819
20250708181453
20250708181454
20250710184021
20250711162739
20250711162801
20250724185211
20250725124128
20250728145450
20250728173202
20250728173725
20250731162619
20250801140627
20250803003924
20250806161806
20250916170917
20250917120000
20250923120000
20250923121000
20250923121500
20250924171306
20250925073641
20250925082920
20250926120317
20250929150925
20250929162228
20250930093424
20250930123942
20250930140153
20250930174636
20250930225417
20251001095506
20251001191814
20251003011411
20251004172448
20251008071959
20251008133245
20251013124019
20251017092034
20251018064926
20251018064939
20251020130940
20251020141936
20251021103521
20251021112109
20251029134455
20251029134522
20251104145316
20251105112507
20251105113056
20251110144213
20251110163318
20251111103001
20251113102710
20251125154638
20251201071358
20251203115240
20251204182927
20251205071244
20251207162859
20251209200731
20251211094653
20260102114701
20251211113202
20251211115215
20251212070227
20251212112708
20260128092926
20260304113837
20260311185354
20260314091304
20260314104729
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.transactions (id, booking_id, stripe_payment_intent_id, stripe_session_id, amount, status, transaction_type, refund_amount, refund_reason, processed_at, created_at, updated_at) FROM stdin;
1	1	pi_test_1767617942_edb99fa5ff08767b	cs_test_1767617942_85594294985c8460	55.0	completed	payment	\N	\N	2026-01-05 12:59:02.755343	2026-01-05 12:59:02.768725	2026-01-05 12:59:02.768725
2	2	pi_test_1767617943_4e8cba246e2ad002	cs_test_1767617943_e4a68f056c8fc47a	312.0	pending	payment	\N	\N	\N	2026-01-05 12:59:02.779474	2026-01-05 12:59:02.779474
3	3	pi_test_1767617944_ccc6775aaa6788ec	cs_test_1767617944_1721ec5f2e08a5fa	1950.0	failed	payment	\N	\N	2026-01-05 12:59:02.784564	2026-01-05 12:59:02.789903	2026-01-05 12:59:02.789903
4	1	pi_refund_1767617942_b5efc77bf9fe5eba	cs_refund_1767617942_cc159b7b12c501dd	27.5	completed	refund	\N	Customer request	2026-01-05 12:59:02.79512	2026-01-05 12:59:02.798537	2026-01-05 12:59:02.798537
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, created_at, updated_at, first_name, last_name, phone, home_address, terms_accepted, card_number, card_expiry, card_cvc, payment_done, nationality, whatsapp_number, whatsapp_country_code, provider, uid) FROM stdin;
1	john@example.com	$2a$12$Qa6gj2OcZLZciCvZJe09p.BkBtX1tnvO59ZmZIZ9MRRgzKOwc5Nca	\N	\N	\N	0	\N	2026-01-05 12:59:00.642237	2026-01-05 12:59:00.642237	John	Doe	+1-555-0123	123 Main St, New York, NY 10001	t	4242424242424242	12/30	123	t	resident	5550123	+1	\N	\N
2	jane@example.com	$2a$12$ppcxeZGXj.VpiIqz1HM4vOGrvM44s3gmoUThXyT7Vp0RTcdZSOeH6	\N	\N	\N	0	\N	2026-01-05 12:59:00.858842	2026-01-05 12:59:00.858842	Jane	Smith	+1-555-0456	456 Oak Ave, Los Angeles, CA 90210	t	4242424242424242	12/30	123	t	tourist	5550456	+1	\N	\N
\.


--
-- Data for Name: vendor_documents; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.vendor_documents (id, vendor_id, document_status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: vendor_requests; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.vendor_requests (id, email, first_name, last_name, status, created_at, updated_at, phone, vehicle_count, company_name) FROM stdin;
1	shehrozehsan@gmail.com	Nargis	Parveen	0	2026-03-03 16:40:39.895027	2026-03-03 16:40:39.895027	+923354506647	5	T Square
2	shehroz@gmail.com	Nargis	Parveen	0	2026-03-03 16:44:41.197227	2026-03-03 16:44:41.197227	+923354506647	5	T Square
3	shehrozehsan@ymail.com	Yolo	Popo	0	2026-03-03 17:31:06.935461	2026-03-03 17:31:06.935461	+923354656565	7	C Square
4	testing@dexter.com	Tester	Dexter	0	2026-03-14 09:32:28.713313	2026-03-14 09:32:28.713313	+923354506647	5	C Company
\.


--
-- Data for Name: vendors; Type: TABLE DATA; Schema: public; Owner: tronsit
--

COPY public.vendors (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, phone, company_name, company_logo, address, website, description, created_at, updated_at, first_name, last_name, emirates_id, emirates_id_expires_on, deleted_at, payment_mode, terms_accepted, whatsapp_number, whatsapp_country_code, provider, uid, is_active) FROM stdin;
1	speedy@rentals.com	$2a$12$m4cTGm3QwJb78v7CbNokdehpDr3ElvUC2cskoSEy.316sajZWgcYi	\N	\N	\N	+1-555-123-4567	Speedy Rentals Inc.	https://randomuser.me/api/portraits/men/32.jpg	123 Fast Lane, New York, NY 10001	https://speedyrentals.com	Fast and reliable car rentals for all your needs.	2026-01-05 12:59:01.074245	2026-01-05 12:59:01.074245	Speedy	Rentals	784198765432109	2027-01-05	\N	1	t	5551234567	+1	\N	\N	t
3	contact@luxurywheels.com	$2a$12$4omyCxKIqQaf/eYXR5AOxeQ0N2nmSB7ovHw8Z..MTGfe3weNI/9Gi	\N	\N	\N	+1-555-222-3333	Luxury Wheels Group	https://randomuser.me/api/portraits/men/55.jpg	789 Elite Rd, Miami, FL 33101	https://luxurywheels.com	Premium and luxury vehicles for special occasions.	2026-01-05 13:08:32.957291	2026-01-05 13:08:32.957291	Luxury	Wheels	784109876543210	2026-07-05	\N	1	t	5552223333	+1	\N	\N	t
4	hello@ecodrive.com	$2a$12$dnjQtOrE.TqBBXwueXQ/yunhul25Jh9w8GQlNLWCOq1uhVOa4g.pm	\N	\N	\N	+1-555-444-5555	Eco Drive Solutions	https://randomuser.me/api/portraits/women/65.jpg	321 Green St, San Francisco, CA 94105	https://ecodrive.com	Eco-friendly and hybrid car rentals.	2026-01-05 13:08:33.147788	2026-01-05 13:08:33.147788	Eco	Drive	784100000000001	2028-01-05	\N	1	t	5554445555	+1	\N	\N	t
2	info@citycars.com	$2a$12$DQ2iBXxbOc/dvKS4FwnTJ..r/scExjmaWrHCtwSL.7TGga/R05SWO	\N	\N	\N	+1-555-987-6543	City Cars LLC	https://randomuser.me/api/portraits/women/44.jpg	456 Urban Ave, Los Angeles, CA 90210	https://citycars.com	Your trusted partner for city driving.	2026-01-05 12:59:01.257783	2026-01-05 12:59:01.257783	City	Cars	784123456789012	2025-12-05	\N	1	t	5559876543	+1	\N	\N	t
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 29, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 29, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 2, true);


--
-- Name: activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.activities_id_seq', 67, true);


--
-- Name: admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.admins_id_seq', 2, true);


--
-- Name: announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.announcements_id_seq', 1, true);


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.blogs_id_seq', 1, true);


--
-- Name: bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.bookings_id_seq', 16, true);


--
-- Name: car_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.car_documents_id_seq', 22, true);


--
-- Name: car_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.car_features_id_seq', 309, true);


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.cars_id_seq', 39, true);


--
-- Name: discounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.discounts_id_seq', 4, true);


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.documents_id_seq', 5, true);


--
-- Name: features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.features_id_seq', 18, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 1, false);


--
-- Name: invited_vendors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.invited_vendors_id_seq', 2, true);


--
-- Name: invoice_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.invoice_items_id_seq', 2, true);


--
-- Name: invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.invoices_id_seq', 2, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.notifications_id_seq', 9, true);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.transactions_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: vendor_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.vendor_documents_id_seq', 1, false);


--
-- Name: vendor_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.vendor_requests_id_seq', 4, true);


--
-- Name: vendors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tronsit
--

SELECT pg_catalog.setval('public.vendors_id_seq', 4, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: activities activities_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);


--
-- Name: admins admins_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);


--
-- Name: announcements announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);


--
-- Name: car_documents car_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.car_documents
    ADD CONSTRAINT car_documents_pkey PRIMARY KEY (id);


--
-- Name: car_features car_features_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.car_features
    ADD CONSTRAINT car_features_pkey PRIMARY KEY (id);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- Name: discounts discounts_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.discounts
    ADD CONSTRAINT discounts_pkey PRIMARY KEY (id);


--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: features features_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: invited_vendors invited_vendors_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.invited_vendors
    ADD CONSTRAINT invited_vendors_pkey PRIMARY KEY (id);


--
-- Name: invoice_items invoice_items_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.invoice_items
    ADD CONSTRAINT invoice_items_pkey PRIMARY KEY (id);


--
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vendor_documents vendor_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.vendor_documents
    ADD CONSTRAINT vendor_documents_pkey PRIMARY KEY (id);


--
-- Name: vendor_requests vendor_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.vendor_requests
    ADD CONSTRAINT vendor_requests_pkey PRIMARY KEY (id);


--
-- Name: vendors vendors_pkey; Type: CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.vendors
    ADD CONSTRAINT vendors_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_activities_on_action; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_activities_on_action ON public.activities USING btree (action);


--
-- Name: index_activities_on_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_activities_on_created_at ON public.activities USING btree (created_at);


--
-- Name: index_activities_on_subject; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_activities_on_subject ON public.activities USING btree (subject_type, subject_id);


--
-- Name: index_activities_on_subject_type_and_subject_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_activities_on_subject_type_and_subject_id ON public.activities USING btree (subject_type, subject_id);


--
-- Name: index_activities_on_user_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_activities_on_user_id ON public.activities USING btree (user_id);


--
-- Name: index_activities_on_user_id_and_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_activities_on_user_id_and_created_at ON public.activities USING btree (user_id, created_at);


--
-- Name: index_activities_on_vendor_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_activities_on_vendor_id ON public.activities USING btree (vendor_id);


--
-- Name: index_admins_on_email; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_admins_on_email ON public.admins USING btree (email);


--
-- Name: index_admins_on_reset_password_token; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_admins_on_reset_password_token ON public.admins USING btree (reset_password_token);


--
-- Name: index_admins_on_role_type; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_admins_on_role_type ON public.admins USING btree (role_type);


--
-- Name: index_bookings_on_car_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_bookings_on_car_id ON public.bookings USING btree (car_id);


--
-- Name: index_bookings_on_car_id_and_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_bookings_on_car_id_and_created_at ON public.bookings USING btree (car_id, created_at);


--
-- Name: index_bookings_on_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_bookings_on_created_at ON public.bookings USING btree (created_at);


--
-- Name: index_bookings_on_payment_mode; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_bookings_on_payment_mode ON public.bookings USING btree (payment_mode);


--
-- Name: index_bookings_on_status; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_bookings_on_status ON public.bookings USING btree (status);


--
-- Name: index_bookings_on_user_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_bookings_on_user_id ON public.bookings USING btree (user_id);


--
-- Name: index_bookings_on_vendor_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_bookings_on_vendor_id ON public.bookings USING btree (vendor_id);


--
-- Name: index_bookings_on_vendor_id_and_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_bookings_on_vendor_id_and_created_at ON public.bookings USING btree (vendor_id, created_at);


--
-- Name: index_car_documents_on_car_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_car_documents_on_car_id ON public.car_documents USING btree (car_id);


--
-- Name: index_car_features_on_car_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_car_features_on_car_id ON public.car_features USING btree (car_id);


--
-- Name: index_car_features_on_car_id_and_feature_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_car_features_on_car_id_and_feature_id ON public.car_features USING btree (car_id, feature_id);


--
-- Name: index_car_features_on_feature_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_car_features_on_feature_id ON public.car_features USING btree (feature_id);


--
-- Name: index_cars_on_brand; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_brand ON public.cars USING btree (brand);


--
-- Name: index_cars_on_category; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_category ON public.cars USING btree (category);


--
-- Name: index_cars_on_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_created_at ON public.cars USING btree (created_at);


--
-- Name: index_cars_on_featured; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_featured ON public.cars USING btree (featured);


--
-- Name: index_cars_on_slug; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_cars_on_slug ON public.cars USING btree (slug);


--
-- Name: index_cars_on_status; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_status ON public.cars USING btree (status);


--
-- Name: index_cars_on_status_and_featured; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_status_and_featured ON public.cars USING btree (status, featured);


--
-- Name: index_cars_on_stripe_price_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_stripe_price_id ON public.cars USING btree (stripe_price_id);


--
-- Name: index_cars_on_stripe_product_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_stripe_product_id ON public.cars USING btree (stripe_product_id);


--
-- Name: index_cars_on_vendor_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_cars_on_vendor_id ON public.cars USING btree (vendor_id);


--
-- Name: index_discounts_on_vendor_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_discounts_on_vendor_id ON public.discounts USING btree (vendor_id);


--
-- Name: index_documents_on_user_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_documents_on_user_id ON public.documents USING btree (user_id);


--
-- Name: index_features_on_name; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_features_on_name ON public.features USING btree (name);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_type_and_sluggable_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type_and_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_type, sluggable_id);


--
-- Name: index_invoice_items_on_invoice_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_invoice_items_on_invoice_id ON public.invoice_items USING btree (invoice_id);


--
-- Name: index_invoices_on_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_invoices_on_created_at ON public.invoices USING btree (created_at);


--
-- Name: index_invoices_on_payment_status; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_invoices_on_payment_status ON public.invoices USING btree (payment_status);


--
-- Name: index_invoices_on_stripe_payment_intent_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_invoices_on_stripe_payment_intent_id ON public.invoices USING btree (stripe_payment_intent_id);


--
-- Name: index_invoices_on_vendor_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_invoices_on_vendor_id ON public.invoices USING btree (vendor_id);


--
-- Name: index_invoices_on_vendor_id_and_payment_status; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_invoices_on_vendor_id_and_payment_status ON public.invoices USING btree (vendor_id, payment_status);


--
-- Name: index_notifications_on_admin_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_notifications_on_admin_id ON public.notifications USING btree (admin_id);


--
-- Name: index_transactions_on_booking_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_transactions_on_booking_id ON public.transactions USING btree (booking_id);


--
-- Name: index_users_on_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_users_on_created_at ON public.users USING btree (created_at);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_whatsapp_country_code; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_users_on_whatsapp_country_code ON public.users USING btree (whatsapp_country_code);


--
-- Name: index_users_on_whatsapp_number; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_users_on_whatsapp_number ON public.users USING btree (whatsapp_number);


--
-- Name: index_vendor_documents_on_vendor_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_vendor_documents_on_vendor_id ON public.vendor_documents USING btree (vendor_id);


--
-- Name: index_vendors_on_created_at; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_vendors_on_created_at ON public.vendors USING btree (created_at);


--
-- Name: index_vendors_on_email; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_vendors_on_email ON public.vendors USING btree (email);


--
-- Name: index_vendors_on_emirates_id; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_vendors_on_emirates_id ON public.vendors USING btree (emirates_id) WHERE (emirates_id IS NOT NULL);


--
-- Name: index_vendors_on_is_active; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_vendors_on_is_active ON public.vendors USING btree (is_active);


--
-- Name: index_vendors_on_reset_password_token; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE UNIQUE INDEX index_vendors_on_reset_password_token ON public.vendors USING btree (reset_password_token);


--
-- Name: index_vendors_on_whatsapp_country_code; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_vendors_on_whatsapp_country_code ON public.vendors USING btree (whatsapp_country_code);


--
-- Name: index_vendors_on_whatsapp_number; Type: INDEX; Schema: public; Owner: tronsit
--

CREATE INDEX index_vendors_on_whatsapp_number ON public.vendors USING btree (whatsapp_number);


--
-- Name: discounts fk_rails_1279e42b88; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.discounts
    ADD CONSTRAINT fk_rails_1279e42b88 FOREIGN KEY (vendor_id) REFERENCES public.vendors(id);


--
-- Name: invoices fk_rails_1551636a56; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT fk_rails_1551636a56 FOREIGN KEY (vendor_id) REFERENCES public.vendors(id);


--
-- Name: bookings fk_rails_22fb9d2368; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk_rails_22fb9d2368 FOREIGN KEY (vendor_id) REFERENCES public.vendors(id);


--
-- Name: invoice_items fk_rails_25bf3d2c5e; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.invoice_items
    ADD CONSTRAINT fk_rails_25bf3d2c5e FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- Name: documents fk_rails_2be0318c46; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT fk_rails_2be0318c46 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: bookings fk_rails_5e4e81d007; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk_rails_5e4e81d007 FOREIGN KEY (car_id) REFERENCES public.cars(id);


--
-- Name: activities fk_rails_7e11bb717f; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT fk_rails_7e11bb717f FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: activities fk_rails_8ab01f415a; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT fk_rails_8ab01f415a FOREIGN KEY (vendor_id) REFERENCES public.vendors(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: cars fk_rails_a1736337f3; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT fk_rails_a1736337f3 FOREIGN KEY (vendor_id) REFERENCES public.vendors(id);


--
-- Name: notifications fk_rails_a2ee297040; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_rails_a2ee297040 FOREIGN KEY (admin_id) REFERENCES public.admins(id);


--
-- Name: car_documents fk_rails_aa63eda6e7; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.car_documents
    ADD CONSTRAINT fk_rails_aa63eda6e7 FOREIGN KEY (car_id) REFERENCES public.cars(id);


--
-- Name: vendor_documents fk_rails_bc9289090f; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.vendor_documents
    ADD CONSTRAINT fk_rails_bc9289090f FOREIGN KEY (vendor_id) REFERENCES public.vendors(id);


--
-- Name: car_features fk_rails_bf80bb14f1; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.car_features
    ADD CONSTRAINT fk_rails_bf80bb14f1 FOREIGN KEY (car_id) REFERENCES public.cars(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: car_features fk_rails_d5c322092c; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.car_features
    ADD CONSTRAINT fk_rails_d5c322092c FOREIGN KEY (feature_id) REFERENCES public.features(id);


--
-- Name: transactions fk_rails_e76839a97c; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk_rails_e76839a97c FOREIGN KEY (booking_id) REFERENCES public.bookings(id);


--
-- Name: bookings fk_rails_ef0571f117; Type: FK CONSTRAINT; Schema: public; Owner: tronsit
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk_rails_ef0571f117 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict eFsrMJNzYP6r4HPc3l5CQG06NH51Sg4ldzyDMxbNlJHlhuT6oyz381djazBo7Xe

