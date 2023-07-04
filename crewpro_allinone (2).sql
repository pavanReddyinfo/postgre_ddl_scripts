--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8
-- Dumped by pg_dump version 14.8

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

--
-- Name: cpv; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cpv;


ALTER SCHEMA cpv OWNER TO postgres;

SET default_tablespace = cpvdata;

SET default_table_access_method = heap;

--
-- Name: allc_chng_cmnt; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.allc_chng_cmnt (
    allc_chng_cmnt_oid numeric(22,0) NOT NULL,
    vac_rstr_oid numeric(22,0) NOT NULL,
    year smallint NOT NULL,
    chng_src character varying(50) NOT NULL,
    cmnt_txt character varying(250) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp(6) without time zone NOT NULL
);


ALTER TABLE cpv.allc_chng_cmnt OWNER TO postgres;

--
-- Name: bank_time_neut_code; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.bank_time_neut_code (
    bank_time_neut_code_oid bigint NOT NULL,
    orgn_unit_bank_time_oid bigint,
    orgn_unit_neut_code_oid bigint,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp(6) without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp(6) without time zone NOT NULL
);


ALTER TABLE cpv.bank_time_neut_code OWNER TO postgres;

--
-- Name: TABLE bank_time_neut_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.bank_time_neut_code IS 'Bank Timeoff Code';


--
-- Name: COLUMN bank_time_neut_code.bank_time_neut_code_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_neut_code.bank_time_neut_code_oid IS 'Bank Timeoff Neutral Code OID';


--
-- Name: COLUMN bank_time_neut_code.orgn_unit_bank_time_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_neut_code.orgn_unit_bank_time_oid IS 'Org Unit Bank time OID';


--
-- Name: COLUMN bank_time_neut_code.orgn_unit_neut_code_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_neut_code.orgn_unit_neut_code_oid IS 'Org Unit Neutral Code OID';


--
-- Name: COLUMN bank_time_neut_code.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_neut_code.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN bank_time_neut_code.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_neut_code.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN bank_time_neut_code.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_neut_code.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN bank_time_neut_code.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_neut_code.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: bank_time_off_rule_attrs; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.bank_time_off_rule_attrs (
    time_off_rule_attr_oid bigint NOT NULL,
    bank_time_off_rule_attrs_oid bigint NOT NULL,
    max_allw_bank_time smallint NOT NULL,
    minm_allw_bank_time smallint,
    max_allw_wdrw_time smallint NOT NULL,
    mkup_dur_in_days smallint NOT NULL,
    max_allw_dep_time smallint NOT NULL,
    crtd_user_id character varying(10),
    crtd_ts timestamp(6) without time zone,
    last_updt_user_id character varying(20),
    last_updt_ts timestamp(6) without time zone,
    time_off_use_ind character varying(1) NOT NULL
);


ALTER TABLE cpv.bank_time_off_rule_attrs OWNER TO postgres;

--
-- Name: TABLE bank_time_off_rule_attrs; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.bank_time_off_rule_attrs IS 'Bank Timeoff Rule attributes';


--
-- Name: COLUMN bank_time_off_rule_attrs.time_off_rule_attr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.time_off_rule_attr_oid IS 'Timeoff rule attribute OID';


--
-- Name: COLUMN bank_time_off_rule_attrs.bank_time_off_rule_attrs_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.bank_time_off_rule_attrs_oid IS 'Bank timeoff Rule attributes OID';


--
-- Name: COLUMN bank_time_off_rule_attrs.max_allw_bank_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.max_allw_bank_time IS 'Max Allowed Bank time';


--
-- Name: COLUMN bank_time_off_rule_attrs.minm_allw_bank_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.minm_allw_bank_time IS 'Minimum Allowed bank Time';


--
-- Name: COLUMN bank_time_off_rule_attrs.max_allw_wdrw_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.max_allw_wdrw_time IS 'Max Allowed Withdrawal time';


--
-- Name: COLUMN bank_time_off_rule_attrs.mkup_dur_in_days; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.mkup_dur_in_days IS 'Markup duration in days';


--
-- Name: COLUMN bank_time_off_rule_attrs.max_allw_dep_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.max_allw_dep_time IS 'Max Allowed Deposit Time';


--
-- Name: COLUMN bank_time_off_rule_attrs.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN bank_time_off_rule_attrs.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN bank_time_off_rule_attrs.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN bank_time_off_rule_attrs.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN bank_time_off_rule_attrs.time_off_use_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bank_time_off_rule_attrs.time_off_use_ind IS 'Time off User indicator';


--
-- Name: bid_open; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.bid_open (
    bid_open_oid bigint NOT NULL,
    bid_open_date timestamp(0) without time zone,
    bid_strt_date timestamp(0) without time zone NOT NULL,
    bid_end_date timestamp(0) without time zone NOT NULL,
    bid_stat_flag character varying(1) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    orgn_unit_oid bigint
);


ALTER TABLE cpv.bid_open OWNER TO postgres;

--
-- Name: TABLE bid_open; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.bid_open IS 'Bid Open';


--
-- Name: COLUMN bid_open.bid_open_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.bid_open_oid IS 'Bid open oid';


--
-- Name: COLUMN bid_open.bid_open_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.bid_open_date IS 'date of advertisement of the bid open';


--
-- Name: COLUMN bid_open.bid_strt_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.bid_strt_date IS 'bid start date';


--
-- Name: COLUMN bid_open.bid_end_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.bid_end_date IS 'bid end date (for single day bid start and bid end date will be same)';


--
-- Name: COLUMN bid_open.bid_stat_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.bid_stat_flag IS 'bid status flag';


--
-- Name: COLUMN bid_open.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN bid_open.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN bid_open.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN bid_open.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN bid_open.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_open.orgn_unit_oid IS 'Organization unit Id of the Bid Open ';


--
-- Name: bid_reqs; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.bid_reqs (
    empl_mstr_oid bigint NOT NULL,
    bid_open_oid bigint NOT NULL,
    bid_req_oid bigint NOT NULL,
    bid_req_stat_flag character varying(1) NOT NULL,
    bid_reqs_date timestamp(0) without time zone NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    unsc_days smallint,
    pty_nbr smallint,
    time_off_req_oid bigint,
    bid_awrd_date timestamp(0) without time zone
);


ALTER TABLE cpv.bid_reqs OWNER TO postgres;

--
-- Name: TABLE bid_reqs; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.bid_reqs IS 'Bid request';


--
-- Name: COLUMN bid_reqs.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.empl_mstr_oid IS 'bid request for the employee(refers to employee master)';


--
-- Name: COLUMN bid_reqs.bid_open_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.bid_open_oid IS 'Bid open oid';


--
-- Name: COLUMN bid_reqs.bid_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.bid_req_oid IS 'bid request OID';


--
-- Name: COLUMN bid_reqs.bid_req_stat_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.bid_req_stat_flag IS 'bid requests status';


--
-- Name: COLUMN bid_reqs.bid_reqs_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.bid_reqs_date IS 'bid request date';


--
-- Name: COLUMN bid_reqs.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN bid_reqs.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN bid_reqs.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN bid_reqs.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN bid_reqs.unsc_days; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.unsc_days IS 'Unscheduled Days';


--
-- Name: COLUMN bid_reqs.pty_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.pty_nbr IS 'Bid Request Priority Number';


--
-- Name: COLUMN bid_reqs.time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.time_off_req_oid IS 'Time off request OID';


--
-- Name: COLUMN bid_reqs.bid_awrd_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs.bid_awrd_date IS 'bid awarded date';


--
-- Name: bid_reqs_cmnt; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.bid_reqs_cmnt (
    bid_req_oid bigint NOT NULL,
    bid_req_cmnt_oid bigint NOT NULL,
    cmnt character varying(255) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    last_updt_user_id character varying(10),
    last_updt_ts timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE cpv.bid_reqs_cmnt OWNER TO postgres;

--
-- Name: TABLE bid_reqs_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.bid_reqs_cmnt IS 'This table store comments for Bid request';


--
-- Name: COLUMN bid_reqs_cmnt.bid_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_cmnt.bid_req_oid IS 'Bid Request OID - PK';


--
-- Name: COLUMN bid_reqs_cmnt.bid_req_cmnt_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_cmnt.bid_req_cmnt_oid IS 'Comment OID';


--
-- Name: COLUMN bid_reqs_cmnt.cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_cmnt.cmnt IS 'Bid Comments';


--
-- Name: COLUMN bid_reqs_cmnt.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_cmnt.crtd_user_id IS 'Created User ID';


--
-- Name: COLUMN bid_reqs_cmnt.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_cmnt.crtd_ts IS 'Created Timestamp';


--
-- Name: COLUMN bid_reqs_cmnt.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_cmnt.last_updt_user_id IS 'Last Updated User ID';


--
-- Name: COLUMN bid_reqs_cmnt.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_cmnt.last_updt_ts IS 'Last Updated Timestamp';


--
-- Name: bid_reqs_time_off_req_mpng; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.bid_reqs_time_off_req_mpng (
    bid_reqs_time_off_req_mpng_oid bigint NOT NULL,
    bid_req_oid bigint NOT NULL,
    time_off_req_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE cpv.bid_reqs_time_off_req_mpng OWNER TO postgres;

--
-- Name: TABLE bid_reqs_time_off_req_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.bid_reqs_time_off_req_mpng IS 'Bid Request and Timeoff Request Mapping';


--
-- Name: COLUMN bid_reqs_time_off_req_mpng.bid_reqs_time_off_req_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_time_off_req_mpng.bid_reqs_time_off_req_mpng_oid IS 'Bid Reqeust Timeoff request mapping OID';


--
-- Name: COLUMN bid_reqs_time_off_req_mpng.bid_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_time_off_req_mpng.bid_req_oid IS 'Bid Request OID';


--
-- Name: COLUMN bid_reqs_time_off_req_mpng.time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_time_off_req_mpng.time_off_req_oid IS 'Time off request OID';


--
-- Name: COLUMN bid_reqs_time_off_req_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_time_off_req_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN bid_reqs_time_off_req_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_time_off_req_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN bid_reqs_time_off_req_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_time_off_req_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN bid_reqs_time_off_req_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.bid_reqs_time_off_req_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: chng_hist; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.chng_hist (
    oid bigint NOT NULL,
    table_id character varying(50) NOT NULL,
    table_oid bigint NOT NULL,
    organization_unit_oid bigint,
    tenant_oid bigint,
    business_key character varying(100) NOT NULL,
    screen_name character varying(50) NOT NULL,
    action character varying(50) NOT NULL,
    effective_at timestamp(6) without time zone NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    created_by character varying(50) NOT NULL,
    created_user_role character varying(50) NOT NULL
);


ALTER TABLE cpv.chng_hist OWNER TO postgres;

--
-- Name: TABLE chng_hist; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.chng_hist IS 'The CHANGE_HISTORY table contains the ChangeHistory object.';


--
-- Name: COLUMN chng_hist.oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.oid IS 'The unique object identifier of the record.';


--
-- Name: COLUMN chng_hist.table_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.table_id IS 'Indicates the table of change history.';


--
-- Name: COLUMN chng_hist.table_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.table_oid IS 'The foreign key reference to the Table Id.';


--
-- Name: COLUMN chng_hist.organization_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.organization_unit_oid IS 'Organizatin Unit OID';


--
-- Name: COLUMN chng_hist.tenant_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.tenant_oid IS 'Tenant OID';


--
-- Name: COLUMN chng_hist.business_key; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.business_key IS 'business key';


--
-- Name: COLUMN chng_hist.screen_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.screen_name IS 'Screen Name';


--
-- Name: COLUMN chng_hist.action; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.action IS 'The type of action such as create, update, delete.';


--
-- Name: COLUMN chng_hist.effective_at; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.effective_at IS 'The date % time this history became effective.';


--
-- Name: COLUMN chng_hist.created_at; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.created_at IS 'The last date % time the record was created.';


--
-- Name: COLUMN chng_hist.created_by; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.created_by IS 'The  userid that created this record.';


--
-- Name: COLUMN chng_hist.created_user_role; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist.created_user_role IS 'The user role that created this record.';


--
-- Name: chng_hist_cmnt; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.chng_hist_cmnt (
    oid bigint NOT NULL,
    comment_string character varying(1024) NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    created_by character varying(50) NOT NULL,
    created_user_role character varying(50) NOT NULL,
    change_history_oid bigint
);


ALTER TABLE cpv.chng_hist_cmnt OWNER TO postgres;

--
-- Name: TABLE chng_hist_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.chng_hist_cmnt IS 'The TTX_CHANGE_HISTORY_COMMENT table contains the ChangeHistoryComment object.';


--
-- Name: COLUMN chng_hist_cmnt.oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist_cmnt.oid IS 'The unique object identifier of the record.';


--
-- Name: COLUMN chng_hist_cmnt.comment_string; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist_cmnt.comment_string IS 'Comment String';


--
-- Name: COLUMN chng_hist_cmnt.created_at; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist_cmnt.created_at IS 'The last date % time the record was created.';


--
-- Name: COLUMN chng_hist_cmnt.created_by; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist_cmnt.created_by IS 'The  userid that created this record.';


--
-- Name: COLUMN chng_hist_cmnt.created_user_role; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist_cmnt.created_user_role IS 'The user role that created this record.';


--
-- Name: COLUMN chng_hist_cmnt.change_history_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist_cmnt.change_history_oid IS 'The foreign key reference to Role.';


SET default_tablespace = '';

--
-- Name: chng_hist_data; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.chng_hist_data (
    oid bigint NOT NULL,
    data_string text
);


ALTER TABLE cpv.chng_hist_data OWNER TO postgres;

--
-- Name: TABLE chng_hist_data; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.chng_hist_data IS 'The TTX_CHANGE_HISTORY_DATA table contains the ChangeHistoryData object.';


--
-- Name: COLUMN chng_hist_data.oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist_data.oid IS 'The unique object identifier of the record.';


--
-- Name: COLUMN chng_hist_data.data_string; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.chng_hist_data.data_string IS 'The JSON data of the changehistorydata';


--
-- Name: empl_bank_time; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_bank_time (
    empl_bank_time_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    work_date timestamp without time zone NOT NULL,
    apvl_stat_ind character varying(2) NOT NULL,
    apvd_by character varying(10),
    apvl_cmnt character varying(100),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    time_off_type_oid bigint NOT NULL,
    strt_ts timestamp without time zone NOT NULL,
    end_ts timestamp without time zone NOT NULL,
    pyrl_vrfd_ind character varying(10)
);


ALTER TABLE cpv.empl_bank_time OWNER TO postgres;

--
-- Name: TABLE empl_bank_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_bank_time IS 'Employee Bank Time';


--
-- Name: COLUMN empl_bank_time.empl_bank_time_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.empl_bank_time_oid IS 'Employee Bank Time OID';


--
-- Name: COLUMN empl_bank_time.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN empl_bank_time.work_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.work_date IS 'working date';


--
-- Name: COLUMN empl_bank_time.apvl_stat_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.apvl_stat_ind IS 'Approved status indicator';


--
-- Name: COLUMN empl_bank_time.apvd_by; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.apvd_by IS 'Approved by';


--
-- Name: COLUMN empl_bank_time.apvl_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.apvl_cmnt IS 'Approved Comments';


--
-- Name: COLUMN empl_bank_time.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_bank_time.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_bank_time.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_bank_time.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN empl_bank_time.time_off_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.time_off_type_oid IS 'Timeoff Type OID';


--
-- Name: COLUMN empl_bank_time.strt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.strt_ts IS 'start timestamp';


--
-- Name: COLUMN empl_bank_time.end_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.end_ts IS 'End Timestamp';


--
-- Name: COLUMN empl_bank_time.pyrl_vrfd_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time.pyrl_vrfd_ind IS 'Payroll verifed indicator';


--
-- Name: empl_bank_time_cmnt; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_bank_time_cmnt (
    empl_bank_time_oid bigint NOT NULL,
    empl_bank_time_cmnt_oid bigint NOT NULL,
    cmnt character varying(300) NOT NULL,
    mgr_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.empl_bank_time_cmnt OWNER TO postgres;

--
-- Name: TABLE empl_bank_time_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_bank_time_cmnt IS 'Employee Bank Time comments';


--
-- Name: COLUMN empl_bank_time_cmnt.empl_bank_time_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time_cmnt.empl_bank_time_oid IS 'Employee Bank Time OID';


--
-- Name: COLUMN empl_bank_time_cmnt.empl_bank_time_cmnt_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time_cmnt.empl_bank_time_cmnt_oid IS 'Employee Bank time comment OID';


--
-- Name: COLUMN empl_bank_time_cmnt.cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time_cmnt.cmnt IS 'Comments';


--
-- Name: COLUMN empl_bank_time_cmnt.mgr_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time_cmnt.mgr_flag IS 'Manager Flag';


--
-- Name: COLUMN empl_bank_time_cmnt.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time_cmnt.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_bank_time_cmnt.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time_cmnt.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_bank_time_cmnt.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time_cmnt.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_bank_time_cmnt.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_bank_time_cmnt.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: empl_entl; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_entl (
    empl_mstr_oid bigint NOT NULL,
    year smallint NOT NULL,
    entl_type character varying(1) NOT NULL,
    entl_hrs smallint NOT NULL,
    qlfn_ind character varying(2) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.empl_entl OWNER TO postgres;

--
-- Name: TABLE empl_entl; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_entl IS ' Employee next year entitlements  The data gives the information of
1. Employee''''s Qualification for participating in next year bidding
2. during Next year vacation bidding and awarding these entitlements are used
3. Admin in VS will have access to this data and can update the entitlements for employees
4. The data is received from Mainframes during Vacation Building process. VS calls MF for every employee and gets the information
';


--
-- Name: COLUMN empl_entl.year; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_entl.year IS 'Employee''''s Year of entitlements details';


--
-- Name: COLUMN empl_entl.entl_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_entl.entl_type IS 'Entitlement Type (V-Vacation), (P-Personal Leave)';


--
-- Name: COLUMN empl_entl.entl_hrs; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_entl.entl_hrs IS 'Entitlement Hours assigned to employee';


--
-- Name: COLUMN empl_entl.qlfn_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_entl.qlfn_ind IS 'Qualification of the employee to participate in NEXT YEAR BIDDING';


--
-- Name: COLUMN empl_entl.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_entl.crtd_user_id IS 'Created by User ID';


--
-- Name: COLUMN empl_entl.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_entl.crtd_ts IS 'Created Date and time';


--
-- Name: COLUMN empl_entl.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_entl.last_updt_user_id IS 'Last updated By User ID';


--
-- Name: COLUMN empl_entl.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_entl.last_updt_ts IS 'Last updated Date and Time';


SET default_tablespace = cpvdata;

--
-- Name: empl_hol_pos_pref; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.empl_hol_pos_pref (
    empl_hol_pos_pref_oid bigint NOT NULL,
    empl_mstr_oid bigint,
    empl_pos_oid bigint,
    ord_seq smallint NOT NULL,
    shft_pref smallint,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.empl_hol_pos_pref OWNER TO postgres;

--
-- Name: TABLE empl_hol_pos_pref; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_hol_pos_pref IS 'Employee Holiday position Preferences';


--
-- Name: COLUMN empl_hol_pos_pref.empl_hol_pos_pref_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.empl_hol_pos_pref_oid IS 'Employee Holiday position Preference OID';


--
-- Name: COLUMN empl_hol_pos_pref.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN empl_hol_pos_pref.empl_pos_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.empl_pos_oid IS 'Position OID';


--
-- Name: COLUMN empl_hol_pos_pref.ord_seq; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.ord_seq IS 'Order sequence';


--
-- Name: COLUMN empl_hol_pos_pref.shft_pref; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.shft_pref IS 'Shift Type';


--
-- Name: COLUMN empl_hol_pos_pref.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_hol_pos_pref.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_hol_pos_pref.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_hol_pos_pref.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_pos_pref.last_updt_ts IS 'Last Update on Date and Time';


SET default_tablespace = '';

--
-- Name: empl_hol_qlfn; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_hol_qlfn (
    empl_hol_qlfn_oid bigint NOT NULL,
    empl_mstr_oid bigint,
    evnt_ts timestamp without time zone,
    eff_ts timestamp without time zone,
    clrk_type character varying(2),
    tecs_dist character varying(2),
    tecs_sub_dist character varying(2),
    tecs_asmt character varying(10),
    tecs_crft_code character varying(4),
    tran_code character varying(4),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.empl_hol_qlfn OWNER TO postgres;

--
-- Name: TABLE empl_hol_qlfn; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_hol_qlfn IS 'Employee Holiday Qualification';


--
-- Name: COLUMN empl_hol_qlfn.empl_hol_qlfn_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.empl_hol_qlfn_oid IS 'Employee Holiday Qualification OID';


--
-- Name: COLUMN empl_hol_qlfn.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN empl_hol_qlfn.evnt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.evnt_ts IS 'Event Time stamp';


--
-- Name: COLUMN empl_hol_qlfn.eff_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.eff_ts IS 'effective timestamp';


--
-- Name: COLUMN empl_hol_qlfn.clrk_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.clrk_type IS 'Clark Type';


--
-- Name: COLUMN empl_hol_qlfn.tecs_dist; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.tecs_dist IS 'TECS district';


--
-- Name: COLUMN empl_hol_qlfn.tecs_sub_dist; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.tecs_sub_dist IS 'TECS sub district';


--
-- Name: COLUMN empl_hol_qlfn.tecs_asmt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.tecs_asmt IS 'TECS assignment';


--
-- Name: COLUMN empl_hol_qlfn.tecs_crft_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.tecs_crft_code IS 'TECS Craft code';


--
-- Name: COLUMN empl_hol_qlfn.tran_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.tran_code IS 'Transaction code';


--
-- Name: COLUMN empl_hol_qlfn.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_hol_qlfn.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_hol_qlfn.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_hol_qlfn.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_hol_qlfn.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: empl_ms; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_ms (
    fir_name character varying(30) NOT NULL,
    midl_name character varying(10),
    last_name character varying(30) NOT NULL,
    ph_nbr bigint,
    empl_mstr_oid bigint NOT NULL,
    user_id character varying(10) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    empl_id character varying(10),
    empl_src_sys_sent_ts timestamp without time zone,
    empl_src_sys_msg_id bigint,
    hr_stat_act character varying(10),
    hr_stat_name character varying(50),
    hr_stat_lgcy_id character varying(50),
    sc_prof_role_rule_oid bigint,
    home_stn_code character varying(6),
    empl_orgn_unit_oid bigint
);


ALTER TABLE cpv.empl_ms OWNER TO postgres;

--
-- Name: TABLE empl_ms; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_ms IS 'Employee Master';


--
-- Name: COLUMN empl_ms.fir_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.fir_name IS 'Emplloyee First Name';


--
-- Name: COLUMN empl_ms.midl_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.midl_name IS 'middle name';


--
-- Name: COLUMN empl_ms.last_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.last_name IS 'last name ';


--
-- Name: COLUMN empl_ms.ph_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.ph_nbr IS 'contact phone number';


--
-- Name: COLUMN empl_ms.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.empl_mstr_oid IS 'Employee Master OID';


--
-- Name: COLUMN empl_ms.user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.user_id IS 'User Id (RACFID)';


--
-- Name: COLUMN empl_ms.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_ms.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_ms.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_ms.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN empl_ms.empl_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.empl_id IS 'Employee ID';


--
-- Name: COLUMN empl_ms.empl_src_sys_sent_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.empl_src_sys_sent_ts IS 'Jobtrax message time stamp';


--
-- Name: COLUMN empl_ms.empl_src_sys_msg_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.empl_src_sys_msg_id IS 'jobtrax message ID ';


--
-- Name: COLUMN empl_ms.hr_stat_act; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.hr_stat_act IS 'Employees Active status code';


--
-- Name: COLUMN empl_ms.hr_stat_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.hr_stat_name IS 'Employee Statuss name';


--
-- Name: COLUMN empl_ms.hr_stat_lgcy_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.hr_stat_lgcy_id IS 'Employee Status legacy code';


--
-- Name: COLUMN empl_ms.sc_prof_role_rule_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.sc_prof_role_rule_oid IS 'Role Rule employee resolves to';


--
-- Name: COLUMN empl_ms.home_stn_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.home_stn_code IS ' Employee Master need a new column to store the Home terminal of the employee. This information is used to find employees Holiday for a year
This information is received from a call to Self service';


--
-- Name: COLUMN empl_ms.empl_orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_ms.empl_orgn_unit_oid IS 'Employee can be associated to a an orgunit. This relation helps us in tracking the employee to which District/Sub District he belongs to. This is used for Employee Search based on District/Sub District';


--
-- Name: empl_pos; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_pos (
    empl_pos_oid bigint NOT NULL,
    pos_desc character varying(100),
    stat_ind character varying(2),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    dist_code character varying(50),
    sub_dist_code character varying(50),
    bord_id character varying(50),
    crft_type character varying(50),
    crew_id character varying(50),
    asmt_type character varying(50)
);


ALTER TABLE cpv.empl_pos OWNER TO postgres;

--
-- Name: TABLE empl_pos; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_pos IS 'Position';


--
-- Name: COLUMN empl_pos.empl_pos_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.empl_pos_oid IS 'Postion ID';


--
-- Name: COLUMN empl_pos.pos_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.pos_desc IS 'position Description';


--
-- Name: COLUMN empl_pos.stat_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.stat_ind IS 'Confirm later ?';


--
-- Name: COLUMN empl_pos.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_pos.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_pos.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_pos.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN empl_pos.dist_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.dist_code IS 'department name';


--
-- Name: COLUMN empl_pos.sub_dist_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.sub_dist_code IS 'Sub Department name';


--
-- Name: COLUMN empl_pos.bord_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.bord_id IS 'location name';


--
-- Name: COLUMN empl_pos.crft_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.crft_type IS 'Craft type';


--
-- Name: COLUMN empl_pos.crew_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.crew_id IS 'positon ID';


--
-- Name: COLUMN empl_pos.asmt_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos.asmt_type IS 'To Store the Job Type for the employee. This identify if the employee is specialist';


--
-- Name: empl_pos_dtls; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_pos_dtls (
    empl_pos_dtls_oid bigint NOT NULL,
    empl_pos_oid bigint NOT NULL,
    shft_ind character varying(3) NOT NULL,
    pay_pos_code character varying(5),
    pos_strt_time smallint NOT NULL,
    pos_end_time smallint NOT NULL,
    mon_flag character varying(1),
    tues_flag character varying(1) NOT NULL,
    wed_flag character varying(1) NOT NULL,
    thur_flag character varying(1) NOT NULL,
    fri_flag character varying(1) NOT NULL,
    sat_flag character varying(1) NOT NULL,
    sun_flag character varying(1) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.empl_pos_dtls OWNER TO postgres;

--
-- Name: TABLE empl_pos_dtls; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_pos_dtls IS 'Position Details';


--
-- Name: COLUMN empl_pos_dtls.empl_pos_dtls_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.empl_pos_dtls_oid IS 'Position Details OID';


--
-- Name: COLUMN empl_pos_dtls.empl_pos_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.empl_pos_oid IS 'Postion OID';


--
-- Name: COLUMN empl_pos_dtls.shft_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.shft_ind IS 'Shift Indicator';


--
-- Name: COLUMN empl_pos_dtls.pay_pos_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.pay_pos_code IS 'Payroll code';


--
-- Name: COLUMN empl_pos_dtls.pos_strt_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.pos_strt_time IS 'position start time';


--
-- Name: COLUMN empl_pos_dtls.pos_end_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.pos_end_time IS 'position end time';


--
-- Name: COLUMN empl_pos_dtls.mon_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.mon_flag IS 'Monday Flag';


--
-- Name: COLUMN empl_pos_dtls.tues_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.tues_flag IS 'Tuesday Flag';


--
-- Name: COLUMN empl_pos_dtls.wed_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.wed_flag IS 'Wednesday Flag';


--
-- Name: COLUMN empl_pos_dtls.thur_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.thur_flag IS 'Thursday Flag';


--
-- Name: COLUMN empl_pos_dtls.fri_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.fri_flag IS 'Friday Flag';


--
-- Name: COLUMN empl_pos_dtls.sat_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.sat_flag IS 'saterday flag';


--
-- Name: COLUMN empl_pos_dtls.sun_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.sun_flag IS 'Sunday Flag';


--
-- Name: COLUMN empl_pos_dtls.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_pos_dtls.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_pos_dtls.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_pos_dtls.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_dtls.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: empl_pos_sch; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_pos_sch (
    empl_pos_sch_oid bigint NOT NULL,
    cycl_strt_date timestamp without time zone,
    rank integer,
    shft smallint,
    acty character varying(20),
    strt_at_time character varying(20),
    end_at_time character varying(20),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL,
    empl_pos_oid bigint,
    unpd_brk_dur smallint,
    eff_date timestamp without time zone,
    expy_date timestamp without time zone
);


ALTER TABLE cpv.empl_pos_sch OWNER TO postgres;

--
-- Name: TABLE empl_pos_sch; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_pos_sch IS 'Position Schedule';


--
-- Name: COLUMN empl_pos_sch.empl_pos_sch_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.empl_pos_sch_oid IS 'Position Schedule OID';


--
-- Name: COLUMN empl_pos_sch.cycl_strt_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.cycl_strt_date IS 'Cycle start date';


--
-- Name: COLUMN empl_pos_sch.rank; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.rank IS 'Rank - determine first day of the week as per the schedule';


--
-- Name: COLUMN empl_pos_sch.shft; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.shft IS 'Shift ';


--
-- Name: COLUMN empl_pos_sch.acty; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.acty IS 'Activity (Rest Day or Working )';


--
-- Name: COLUMN empl_pos_sch.strt_at_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.strt_at_time IS 'Schedule - day start time';


--
-- Name: COLUMN empl_pos_sch.end_at_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.end_at_time IS 'Schdule - day end time';


--
-- Name: COLUMN empl_pos_sch.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_pos_sch.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_pos_sch.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_pos_sch.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN empl_pos_sch.empl_pos_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.empl_pos_oid IS 'Position OID';


--
-- Name: COLUMN empl_pos_sch.unpd_brk_dur; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.unpd_brk_dur IS 'To store the unpaid Break Duration. Unpaid hours per day';


--
-- Name: COLUMN empl_pos_sch.eff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.eff_date IS 'Effective Date of the Position Schedule.';


--
-- Name: COLUMN empl_pos_sch.expy_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_pos_sch.expy_date IS 'Expiry Date of the Position Schedule.';


--
-- Name: empl_role_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_role_mpng (
    empl_role_mpng_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    dflt_role character varying(20) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    sc_role_oid bigint NOT NULL,
    role_rank smallint
);


ALTER TABLE cpv.empl_role_mpng OWNER TO postgres;

--
-- Name: TABLE empl_role_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_role_mpng IS 'Employee and Role Mapping';


--
-- Name: COLUMN empl_role_mpng.empl_role_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.empl_role_mpng_oid IS 'Employee Role Mapping OID';


--
-- Name: COLUMN empl_role_mpng.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN empl_role_mpng.dflt_role; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.dflt_role IS 'Default Role ';


--
-- Name: COLUMN empl_role_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_role_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_role_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_role_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN empl_role_mpng.sc_role_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.sc_role_oid IS 'Role OID';


--
-- Name: COLUMN empl_role_mpng.role_rank; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_mpng.role_rank IS 'Role Rank';


--
-- Name: empl_role_org_unit_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_role_org_unit_mpng (
    empl_role_org_unit_mpng_oid bigint NOT NULL,
    empl_role_mpng_oid bigint NOT NULL,
    orgn_unit_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.empl_role_org_unit_mpng OWNER TO postgres;

--
-- Name: TABLE empl_role_org_unit_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_role_org_unit_mpng IS 'Employee Role Org unit Mapping';


--
-- Name: COLUMN empl_role_org_unit_mpng.empl_role_org_unit_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_org_unit_mpng.empl_role_org_unit_mpng_oid IS 'Employee Role Org unit Mapping OID';


--
-- Name: COLUMN empl_role_org_unit_mpng.empl_role_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_org_unit_mpng.empl_role_mpng_oid IS 'Employee Role Mapping OID';


--
-- Name: COLUMN empl_role_org_unit_mpng.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_org_unit_mpng.orgn_unit_oid IS 'Organization unit Id';


--
-- Name: COLUMN empl_role_org_unit_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_org_unit_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_role_org_unit_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_org_unit_mpng.crtd_ts IS 'TECS sub district';


--
-- Name: COLUMN empl_role_org_unit_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_org_unit_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_role_org_unit_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_role_org_unit_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: empl_vac; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_vac (
    empl_mstr_oid bigint NOT NULL,
    empl_vac_oid bigint NOT NULL,
    work_date timestamp without time zone NOT NULL,
    apvl_stat_ind character varying(2) NOT NULL,
    chng_stat_ind character varying(2) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.empl_vac OWNER TO postgres;

--
-- Name: TABLE empl_vac; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_vac IS 'Employee Vacation';


--
-- Name: COLUMN empl_vac.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN empl_vac.empl_vac_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.empl_vac_oid IS 'employee Vacation OID';


--
-- Name: COLUMN empl_vac.work_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.work_date IS 'working date';


--
-- Name: COLUMN empl_vac.apvl_stat_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.apvl_stat_ind IS 'Approved status indicator';


--
-- Name: COLUMN empl_vac.chng_stat_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.chng_stat_ind IS 'change status OID';


--
-- Name: COLUMN empl_vac.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_vac.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_vac.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_vac.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: empl_vac_flex_chocs; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_vac_flex_chocs (
    empl_vac_flex_choc_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    rptg_year smallint NOT NULL,
    flex_sel_flag character varying(1),
    empl_sel_rtmt_flag character varying(1),
    excl_from_vac_sch_flag character varying(1),
    flex_wks_cnt integer,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    tem_ph_nbr bigint,
    mgr_reqd_flag character varying(1) DEFAULT 'N'::character varying NOT NULL
);


ALTER TABLE cpv.empl_vac_flex_chocs OWNER TO postgres;

--
-- Name: TABLE empl_vac_flex_chocs; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_vac_flex_chocs IS 'Employee Flex Choices';


--
-- Name: COLUMN empl_vac_flex_chocs.empl_vac_flex_choc_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.empl_vac_flex_choc_oid IS 'Employee Vacation Flex Choice OID';


--
-- Name: COLUMN empl_vac_flex_chocs.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN empl_vac_flex_chocs.rptg_year; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.rptg_year IS 'Reporting year';


--
-- Name: COLUMN empl_vac_flex_chocs.flex_sel_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.flex_sel_flag IS 'Flex selection flag';


--
-- Name: COLUMN empl_vac_flex_chocs.empl_sel_rtmt_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.empl_sel_rtmt_flag IS 'Emplloyee Selection Retirement Flag';


--
-- Name: COLUMN empl_vac_flex_chocs.excl_from_vac_sch_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.excl_from_vac_sch_flag IS 'Exclude from Vacation Scheduling Flag';


--
-- Name: COLUMN empl_vac_flex_chocs.flex_wks_cnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.flex_wks_cnt IS 'Flex Weeks count';


--
-- Name: COLUMN empl_vac_flex_chocs.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_vac_flex_chocs.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_vac_flex_chocs.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_vac_flex_chocs.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN empl_vac_flex_chocs.tem_ph_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.tem_ph_nbr IS 'Temporary Phone number';


--
-- Name: COLUMN empl_vac_flex_chocs.mgr_reqd_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_flex_chocs.mgr_reqd_flag IS 'Manager Request flag';


--
-- Name: empl_vac_sel; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.empl_vac_sel (
    empl_vac_sel_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    rptg_year smallint NOT NULL,
    sel_grp_nbr integer NOT NULL,
    sel_nbr integer NOT NULL,
    wks_take_cnt smallint NOT NULL,
    wks_allw_cnt smallint NOT NULL,
    sel_strt_date timestamp without time zone NOT NULL,
    sel_end_date timestamp without time zone NOT NULL,
    flex_take_cnt smallint NOT NULL,
    flex_allw_cnt smallint NOT NULL,
    empl_sel_flag character varying(1) NOT NULL,
    plan_cnfd_flag character varying(1) NOT NULL,
    pers_day_flag character varying(1) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    empl_cmnt character varying(1024),
    awrd_cmnt character varying(1024),
    awrd_stat character varying(10) DEFAULT 'P'::character varying NOT NULL,
    awrd_by_user_id character varying(100),
    mgr_reqd_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    sch_stat_ind character varying(1) DEFAULT 'N'::character varying NOT NULL,
    sch_stat_cmnt character varying(1024),
    sch_user_id character varying(10),
    awrd_ntfn_sent_stat_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    awrd_ntfn_tmst timestamp without time zone,
    CONSTRAINT empl_vac_sel_c6 CHECK (((awrd_ntfn_sent_stat_flag)::text = ANY ((ARRAY['N'::character varying, 'Y'::character varying])::text[])))
);


ALTER TABLE cpv.empl_vac_sel OWNER TO postgres;

--
-- Name: TABLE empl_vac_sel; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.empl_vac_sel IS 'Next year Vacation Employee Selections';


--
-- Name: COLUMN empl_vac_sel.empl_vac_sel_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.empl_vac_sel_oid IS 'employee Vacation Selection OID';


--
-- Name: COLUMN empl_vac_sel.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN empl_vac_sel.rptg_year; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.rptg_year IS 'Reporting Year';


--
-- Name: COLUMN empl_vac_sel.sel_grp_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.sel_grp_nbr IS 'Selection Group Number';


--
-- Name: COLUMN empl_vac_sel.sel_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.sel_nbr IS 'Selection Number';


--
-- Name: COLUMN empl_vac_sel.wks_take_cnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.wks_take_cnt IS 'weeks taken cont';


--
-- Name: COLUMN empl_vac_sel.wks_allw_cnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.wks_allw_cnt IS 'weeks allowed count';


--
-- Name: COLUMN empl_vac_sel.sel_strt_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.sel_strt_date IS 'Selection Start Date';


--
-- Name: COLUMN empl_vac_sel.sel_end_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.sel_end_date IS 'Selection End Date';


--
-- Name: COLUMN empl_vac_sel.flex_take_cnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.flex_take_cnt IS 'Flex taken count';


--
-- Name: COLUMN empl_vac_sel.flex_allw_cnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.flex_allw_cnt IS 'Flex allow count';


--
-- Name: COLUMN empl_vac_sel.empl_sel_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.empl_sel_flag IS 'employee selection flag';


--
-- Name: COLUMN empl_vac_sel.plan_cnfd_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.plan_cnfd_flag IS 'Plan Confirmed flag';


--
-- Name: COLUMN empl_vac_sel.pers_day_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.pers_day_flag IS 'Personal Day Flag';


--
-- Name: COLUMN empl_vac_sel.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN empl_vac_sel.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN empl_vac_sel.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN empl_vac_sel.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN empl_vac_sel.empl_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.empl_cmnt IS 'Employee selecion comments';


--
-- Name: COLUMN empl_vac_sel.awrd_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.awrd_cmnt IS 'Awarded comments';


--
-- Name: COLUMN empl_vac_sel.awrd_stat; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.awrd_stat IS 'Award Status';


--
-- Name: COLUMN empl_vac_sel.awrd_by_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.awrd_by_user_id IS 'Awarded by User ID';


--
-- Name: COLUMN empl_vac_sel.mgr_reqd_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.mgr_reqd_flag IS 'Manager Request flag';


--
-- Name: COLUMN empl_vac_sel.sch_stat_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.sch_stat_ind IS 'Status code to tell if this selection was sent to crew call ';


--
-- Name: COLUMN empl_vac_sel.sch_stat_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.sch_stat_cmnt IS 'Status comment received from crew call';


--
-- Name: COLUMN empl_vac_sel.sch_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.sch_user_id IS 'User Id who scheduled the process.';


--
-- Name: COLUMN empl_vac_sel.awrd_ntfn_sent_stat_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.awrd_ntfn_sent_stat_flag IS 'Status that tells if the award notification was sent/resent/recalled to the employee.';


--
-- Name: COLUMN empl_vac_sel.awrd_ntfn_tmst; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.empl_vac_sel.awrd_ntfn_tmst IS 'Timestamp to identify when the notification was last sent or recalled.';


--
-- Name: entl_type_for_pay_code_ctgy; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.entl_type_for_pay_code_ctgy (
    entl_type_oid bigint NOT NULL,
    pyrl_cods_oid bigint NOT NULL,
    entl_type character varying(30),
    crtd_user_id character varying(10),
    crtd_ts timestamp without time zone,
    last_updt_user_id character varying(10),
    last_updt_ts timestamp without time zone,
    pty_nbr smallint
);


ALTER TABLE cpv.entl_type_for_pay_code_ctgy OWNER TO postgres;

--
-- Name: TABLE entl_type_for_pay_code_ctgy; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.entl_type_for_pay_code_ctgy IS 'This tables store the entitlement types received from Timetrax for each pay code category';


--
-- Name: COLUMN entl_type_for_pay_code_ctgy.entl_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.entl_type_for_pay_code_ctgy.entl_type_oid IS 'Primary key - Unique ID';


--
-- Name: COLUMN entl_type_for_pay_code_ctgy.pyrl_cods_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.entl_type_for_pay_code_ctgy.pyrl_cods_oid IS 'Payrol code oid';


--
-- Name: COLUMN entl_type_for_pay_code_ctgy.entl_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.entl_type_for_pay_code_ctgy.entl_type IS 'entitlement type';


--
-- Name: COLUMN entl_type_for_pay_code_ctgy.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.entl_type_for_pay_code_ctgy.crtd_user_id IS 'Created User Id';


--
-- Name: COLUMN entl_type_for_pay_code_ctgy.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.entl_type_for_pay_code_ctgy.crtd_ts IS 'Created timestamp';


--
-- Name: COLUMN entl_type_for_pay_code_ctgy.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.entl_type_for_pay_code_ctgy.last_updt_user_id IS 'Last updated User Id';


--
-- Name: COLUMN entl_type_for_pay_code_ctgy.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.entl_type_for_pay_code_ctgy.last_updt_ts IS 'Last Updated Timestamp';


--
-- Name: COLUMN entl_type_for_pay_code_ctgy.pty_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.entl_type_for_pay_code_ctgy.pty_nbr IS 'This column is to store priority of entitlement type coming from timetrax integration push call';


--
-- Name: hol_asmt; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.hol_asmt (
    hol_asmt_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    hol_grp_code character varying(20) NOT NULL,
    evnt_ts timestamp without time zone NOT NULL,
    eff_ts timestamp without time zone NOT NULL,
    job_trax_pos_id character varying(50) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.hol_asmt OWNER TO postgres;

--
-- Name: TABLE hol_asmt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.hol_asmt IS 'Holiday Assignments';


--
-- Name: COLUMN hol_asmt.hol_asmt_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.hol_asmt_oid IS 'Holiday Assignment OID';


--
-- Name: COLUMN hol_asmt.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN hol_asmt.hol_grp_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.hol_grp_code IS 'Holiday Group Code';


--
-- Name: COLUMN hol_asmt.evnt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.evnt_ts IS 'Event Time stamp';


--
-- Name: COLUMN hol_asmt.eff_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.eff_ts IS 'effective timestamp';


--
-- Name: COLUMN hol_asmt.job_trax_pos_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.job_trax_pos_id IS 'Positon ID of holiday assignement';


--
-- Name: COLUMN hol_asmt.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN hol_asmt.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN hol_asmt.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN hol_asmt.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_asmt.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: hol_dtls; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.hol_dtls (
    hol_dtls_oid bigint NOT NULL,
    rptg_year smallint NOT NULL,
    hol_mo smallint NOT NULL,
    hol_day smallint NOT NULL,
    hol_name character varying(100),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.hol_dtls OWNER TO postgres;

--
-- Name: TABLE hol_dtls; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.hol_dtls IS 'Holiday Details';


--
-- Name: COLUMN hol_dtls.hol_dtls_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.hol_dtls_oid IS 'Holiday Details OID';


--
-- Name: COLUMN hol_dtls.rptg_year; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.rptg_year IS 'Reporting year';


--
-- Name: COLUMN hol_dtls.hol_mo; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.hol_mo IS 'Holiday Month';


--
-- Name: COLUMN hol_dtls.hol_day; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.hol_day IS 'Holiday';


--
-- Name: COLUMN hol_dtls.hol_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.hol_name IS 'Holiday Name';


--
-- Name: COLUMN hol_dtls.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN hol_dtls.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN hol_dtls.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN hol_dtls.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_dtls.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: hol_grp_code; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.hol_grp_code (
    hol_grp_code character varying(20) NOT NULL,
    hol_grp_desc character varying(100),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.hol_grp_code OWNER TO postgres;

--
-- Name: TABLE hol_grp_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.hol_grp_code IS 'Holiday Group Codes';


--
-- Name: COLUMN hol_grp_code.hol_grp_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_grp_code.hol_grp_code IS 'Holiday Group Code';


--
-- Name: COLUMN hol_grp_code.hol_grp_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_grp_code.hol_grp_desc IS 'Holiday Group Desc';


--
-- Name: COLUMN hol_grp_code.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_grp_code.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN hol_grp_code.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_grp_code.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN hol_grp_code.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_grp_code.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN hol_grp_code.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_grp_code.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: hol_pos_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.hol_pos_mpng (
    hol_pos_mpng_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    empl_pos_oid bigint,
    hol_dtls_oid bigint
);


ALTER TABLE cpv.hol_pos_mpng OWNER TO postgres;

--
-- Name: TABLE hol_pos_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.hol_pos_mpng IS 'Holiday to Employee Position Mapping';


--
-- Name: COLUMN hol_pos_mpng.hol_pos_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_pos_mpng.hol_pos_mpng_oid IS 'Holiday position mapping OID';


--
-- Name: COLUMN hol_pos_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_pos_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN hol_pos_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_pos_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN hol_pos_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_pos_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN hol_pos_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_pos_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN hol_pos_mpng.empl_pos_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_pos_mpng.empl_pos_oid IS 'Position OID';


--
-- Name: COLUMN hol_pos_mpng.hol_dtls_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_pos_mpng.hol_dtls_oid IS 'Holiday Details OID';


--
-- Name: hol_prof; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.hol_prof (
    hol_prof_oid character varying(6) NOT NULL,
    agrm_code character varying(6) NOT NULL,
    home_stn_code character varying(6) NOT NULL,
    crft_pos_code character varying(3) NOT NULL,
    uni_code character varying(4) NOT NULL,
    hol_desc character varying(30) NOT NULL,
    hol_date timestamp without time zone NOT NULL,
    hol_year smallint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.hol_prof OWNER TO postgres;

--
-- Name: TABLE hol_prof; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.hol_prof IS 'Holiday Profile  NS Maintain the Holidays as Holiday Profile
Holiday Profile are mapped to employee using the Employee''''s Home terminal
Information is received from main frames
';


--
-- Name: COLUMN hol_prof.hol_prof_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.hol_prof_oid IS 'Holiday Profile OID';


--
-- Name: COLUMN hol_prof.agrm_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.agrm_code IS 'Agreement code';


--
-- Name: COLUMN hol_prof.home_stn_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.home_stn_code IS 'Home Station Code';


--
-- Name: COLUMN hol_prof.crft_pos_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.crft_pos_code IS 'Craft Position Code';


--
-- Name: COLUMN hol_prof.uni_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.uni_code IS 'Union Code';


--
-- Name: COLUMN hol_prof.hol_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.hol_desc IS 'Holiday Description';


--
-- Name: COLUMN hol_prof.hol_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.hol_date IS 'Holiday Date';


--
-- Name: COLUMN hol_prof.hol_year; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.hol_year IS 'Year of Holiday';


--
-- Name: COLUMN hol_prof.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.crtd_user_id IS 'Created by User ID';


--
-- Name: COLUMN hol_prof.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.crtd_ts IS 'Created Date and time';


--
-- Name: COLUMN hol_prof.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.last_updt_user_id IS 'Last updated By User ID';


--
-- Name: COLUMN hol_prof.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_prof.last_updt_ts IS 'Last updated Date and Time';


--
-- Name: hol_sign_up_empl; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.hol_sign_up_empl (
    hol_sign_up_empl_oid bigint NOT NULL,
    prtn_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    dbl_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    splt_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    ord_seq smallint,
    hol_dtls_oid bigint,
    reg_asmt_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    empl_mstr_oid bigint
);


ALTER TABLE cpv.hol_sign_up_empl OWNER TO postgres;

--
-- Name: TABLE hol_sign_up_empl; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.hol_sign_up_empl IS 'Holiday Signup to Employee';


--
-- Name: COLUMN hol_sign_up_empl.hol_sign_up_empl_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.hol_sign_up_empl_oid IS 'Holiday Signup Employee OID';


--
-- Name: COLUMN hol_sign_up_empl.prtn_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.prtn_flag IS 'Pinting flag';


--
-- Name: COLUMN hol_sign_up_empl.dbl_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.dbl_flag IS 'Double Shift Flag';


--
-- Name: COLUMN hol_sign_up_empl.splt_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.splt_flag IS 'Split flag';


--
-- Name: COLUMN hol_sign_up_empl.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN hol_sign_up_empl.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN hol_sign_up_empl.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN hol_sign_up_empl.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN hol_sign_up_empl.ord_seq; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.ord_seq IS 'Order sequence';


--
-- Name: COLUMN hol_sign_up_empl.hol_dtls_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.hol_dtls_oid IS 'Holiday Details OID';


--
-- Name: COLUMN hol_sign_up_empl.reg_asmt_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.reg_asmt_flag IS 'Region Assigment Flag';


--
-- Name: COLUMN hol_sign_up_empl.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: hol_sign_up_empl_pos_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.hol_sign_up_empl_pos_mpng (
    hol_sign_up_empl_pos_mpng_oid bigint NOT NULL,
    hol_sign_up_empl_oid bigint NOT NULL,
    hol_pos_mpng_oid bigint NOT NULL,
    ord_seq smallint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    shft_pref_nbr smallint
);


ALTER TABLE cpv.hol_sign_up_empl_pos_mpng OWNER TO postgres;

--
-- Name: TABLE hol_sign_up_empl_pos_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.hol_sign_up_empl_pos_mpng IS 'Holiday signup to Employee Position Mapping';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.hol_sign_up_empl_pos_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.hol_sign_up_empl_pos_mpng_oid IS 'holiday signup employee position OID';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.hol_sign_up_empl_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.hol_sign_up_empl_oid IS 'Holiday Signup Employee OID';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.hol_pos_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.hol_pos_mpng_oid IS 'Holiday Position Mapping OID';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.ord_seq; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.ord_seq IS 'Order sequence';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN hol_sign_up_empl_pos_mpng.shft_pref_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_pos_mpng.shft_pref_nbr IS 'shift preference number';


SET default_tablespace = cpvdata;

--
-- Name: hol_sign_up_empl_shft_mpng; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.hol_sign_up_empl_shft_mpng (
    hol_sign_up_empl_shft_mpng_oid bigint NOT NULL,
    hol_sign_up_empl_oid bigint,
    shft_pref_name smallint,
    shft_pref_valu character varying(10) DEFAULT 'N'::character varying NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.hol_sign_up_empl_shft_mpng OWNER TO postgres;

--
-- Name: TABLE hol_sign_up_empl_shft_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.hol_sign_up_empl_shft_mpng IS 'Holiday Signup to Employee Shift Mapping';


--
-- Name: COLUMN hol_sign_up_empl_shft_mpng.hol_sign_up_empl_shft_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_shft_mpng.hol_sign_up_empl_shft_mpng_oid IS 'holiday signup employee mapping OID';


--
-- Name: COLUMN hol_sign_up_empl_shft_mpng.hol_sign_up_empl_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_shft_mpng.hol_sign_up_empl_oid IS 'holiday signup employee oid';


--
-- Name: COLUMN hol_sign_up_empl_shft_mpng.shft_pref_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_shft_mpng.shft_pref_name IS 'Shift preference name';


--
-- Name: COLUMN hol_sign_up_empl_shft_mpng.shft_pref_valu; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_shft_mpng.shft_pref_valu IS 'Shift preference value';


--
-- Name: COLUMN hol_sign_up_empl_shft_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_shft_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN hol_sign_up_empl_shft_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_shft_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN hol_sign_up_empl_shft_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_shft_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN hol_sign_up_empl_shft_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.hol_sign_up_empl_shft_mpng.last_updt_ts IS 'Last Update on Date and Time';


SET default_tablespace = '';

--
-- Name: locl_cher_ttl; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.locl_cher_ttl (
    locl_cher_ttl_oid bigint NOT NULL,
    locl_cher_key character varying(50) NOT NULL,
    locl_cher_ttl_valu character varying(100) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.locl_cher_ttl OWNER TO postgres;

--
-- Name: TABLE locl_cher_ttl; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.locl_cher_ttl IS 'Local Chair Title Master';


--
-- Name: COLUMN locl_cher_ttl.locl_cher_ttl_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.locl_cher_ttl.locl_cher_ttl_oid IS 'local chair title oid';


--
-- Name: COLUMN locl_cher_ttl.locl_cher_key; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.locl_cher_ttl.locl_cher_key IS 'Local chair title key';


--
-- Name: COLUMN locl_cher_ttl.locl_cher_ttl_valu; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.locl_cher_ttl.locl_cher_ttl_valu IS 'local chair title value';


--
-- Name: COLUMN locl_cher_ttl.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.locl_cher_ttl.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN locl_cher_ttl.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.locl_cher_ttl.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN locl_cher_ttl.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.locl_cher_ttl.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN locl_cher_ttl.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.locl_cher_ttl.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: minm_stfg; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.minm_stfg (
    minm_stfg_oid bigint NOT NULL,
    vac_rstr_oid bigint,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL,
    staf_reqd_date timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.minm_stfg OWNER TO postgres;

--
-- Name: TABLE minm_stfg; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.minm_stfg IS 'minimum Staffing Master';


--
-- Name: COLUMN minm_stfg.minm_stfg_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg.minm_stfg_oid IS 'Minimum Staffing OID';


--
-- Name: COLUMN minm_stfg.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg.vac_rstr_oid IS 'Vacation Roster OID';


--
-- Name: COLUMN minm_stfg.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN minm_stfg.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN minm_stfg.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN minm_stfg.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN minm_stfg.staf_reqd_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg.staf_reqd_date IS 'Minimum Staff required date';


--
-- Name: minm_stfg_shft_dtls; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.minm_stfg_shft_dtls (
    minm_stfg_shft_dtls_oid bigint NOT NULL,
    minm_stfg_oid bigint,
    shft_nbr smallint,
    shft_propagate_flag character varying(1),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL,
    staf_reqd_cnt smallint DEFAULT 0 NOT NULL
);


ALTER TABLE cpv.minm_stfg_shft_dtls OWNER TO postgres;

--
-- Name: TABLE minm_stfg_shft_dtls; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.minm_stfg_shft_dtls IS 'Minimum Staffing Shift Details';


--
-- Name: COLUMN minm_stfg_shft_dtls.minm_stfg_shft_dtls_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.minm_stfg_shft_dtls_oid IS 'Minimum Staff Shift Details OID';


--
-- Name: COLUMN minm_stfg_shft_dtls.minm_stfg_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.minm_stfg_oid IS 'Minimum Staffing OID';


--
-- Name: COLUMN minm_stfg_shft_dtls.shft_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.shft_nbr IS 'Shift Number';


--
-- Name: COLUMN minm_stfg_shft_dtls.shft_propagate_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.shft_propagate_flag IS 'Shift Propagate Flag';


--
-- Name: COLUMN minm_stfg_shft_dtls.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN minm_stfg_shft_dtls.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN minm_stfg_shft_dtls.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN minm_stfg_shft_dtls.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN minm_stfg_shft_dtls.staf_reqd_cnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.minm_stfg_shft_dtls.staf_reqd_cnt IS 'Store number of workers required at work count';


--
-- Name: next_year_vac_awrd; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.next_year_vac_awrd (
    next_year_vac_awrd_oid bigint NOT NULL,
    vac_rstr_oid bigint,
    year smallint,
    awrd_proc_stat character varying(10),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL,
    awrd_proc_stat_cmnt character varying(1024),
    proc_stat character varying(1),
    cnfl_hndl_stgy_code character varying(2),
    sch_stat_ind character varying(1) DEFAULT 'N'::character varying NOT NULL,
    sch_stat_cmnt character varying(1024),
    sch_user_id character varying(10),
    awrd_ntfn_tmst timestamp without time zone
);


ALTER TABLE cpv.next_year_vac_awrd OWNER TO postgres;

--
-- Name: TABLE next_year_vac_awrd; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.next_year_vac_awrd IS 'Next Year Vacation Awarding';


--
-- Name: COLUMN next_year_vac_awrd.next_year_vac_awrd_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.next_year_vac_awrd_oid IS 'next year vacation Awarded OID';


--
-- Name: COLUMN next_year_vac_awrd.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.vac_rstr_oid IS 'Vacation Roster OID';


--
-- Name: COLUMN next_year_vac_awrd.year; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.year IS 'Year of award';


--
-- Name: COLUMN next_year_vac_awrd.awrd_proc_stat; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.awrd_proc_stat IS 'Award Process Status';


--
-- Name: COLUMN next_year_vac_awrd.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN next_year_vac_awrd.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN next_year_vac_awrd.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN next_year_vac_awrd.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN next_year_vac_awrd.awrd_proc_stat_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.awrd_proc_stat_cmnt IS 'Award Process Status Comments';


--
-- Name: COLUMN next_year_vac_awrd.proc_stat; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.proc_stat IS 'store the status of the process.';


--
-- Name: COLUMN next_year_vac_awrd.sch_stat_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.sch_stat_ind IS 'Status code to tell if vacation list awarding results were was sent to crew call';


--
-- Name: COLUMN next_year_vac_awrd.sch_stat_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.sch_stat_cmnt IS 'Status comment received from crew call for the failed employee';


--
-- Name: COLUMN next_year_vac_awrd.sch_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.sch_user_id IS 'User Id who scheduled the process.';


--
-- Name: COLUMN next_year_vac_awrd.awrd_ntfn_tmst; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.next_year_vac_awrd.awrd_ntfn_tmst IS ' Timestamp to identify when the notification was last sent or recalled.';


--
-- Name: orgn_strc; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.orgn_strc (
    orgn_strc_oid bigint NOT NULL,
    orgn_name character varying(50) NOT NULL,
    orgn_desc character varying(255),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    orgn_strc_type_oid bigint,
    orgn_strc_grp_id smallint DEFAULT 1 NOT NULL
);


ALTER TABLE cpv.orgn_strc OWNER TO postgres;

--
-- Name: TABLE orgn_strc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.orgn_strc IS 'Organization Structure';


--
-- Name: COLUMN orgn_strc.orgn_strc_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.orgn_strc_oid IS 'Organization Structure OID';


--
-- Name: COLUMN orgn_strc.orgn_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.orgn_name IS 'Organization Name';


--
-- Name: COLUMN orgn_strc.orgn_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.orgn_desc IS 'Organization Description';


--
-- Name: COLUMN orgn_strc.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN orgn_strc.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN orgn_strc.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN orgn_strc.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN orgn_strc.orgn_strc_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.orgn_strc_type_oid IS 'Introducing OID column Because CSX raised bug questioning why unable to add new children types or update existing children types for existing groups.';


--
-- Name: COLUMN orgn_strc.orgn_strc_grp_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc.orgn_strc_grp_id IS 'Earlier the grouping of Org structure are done is org structure Type . As per NS requirement org struct type are to be global. in that case we cannot use the group id in org struc type. instead of that we will have the column in ORGN_STRC.';


--
-- Name: orgn_strc_type; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.orgn_strc_type (
    orgn_strc_type character varying(20) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    orgn_strc_desc character varying(50),
    ord_id smallint,
    grp_id smallint,
    orgn_strc_type_oid bigint NOT NULL
);


ALTER TABLE cpv.orgn_strc_type OWNER TO postgres;

--
-- Name: TABLE orgn_strc_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.orgn_strc_type IS 'Organization Structure type';


--
-- Name: COLUMN orgn_strc_type.orgn_strc_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.orgn_strc_type IS 'Sample data - location, area, craft, station, business unit, employee region, etc.';


--
-- Name: COLUMN orgn_strc_type.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN orgn_strc_type.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN orgn_strc_type.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN orgn_strc_type.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN orgn_strc_type.orgn_strc_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.orgn_strc_desc IS 'Organization Structure Description ';


--
-- Name: COLUMN orgn_strc_type.ord_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.ord_id IS 'The purpose of the order id column is to identify who the parent of a type is.';


--
-- Name: COLUMN orgn_strc_type.grp_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.grp_id IS 'group OID';


--
-- Name: COLUMN orgn_strc_type.orgn_strc_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_strc_type.orgn_strc_type_oid IS 'Organization Structure Type OID';


--
-- Name: orgn_unit; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.orgn_unit (
    orgn_unit_oid bigint NOT NULL,
    orgn_strc_par_oid bigint,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    orgn_strc_oid bigint
);


ALTER TABLE cpv.orgn_unit OWNER TO postgres;

--
-- Name: TABLE orgn_unit; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.orgn_unit IS 'Organization Unit Master';


--
-- Name: COLUMN orgn_unit.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit.orgn_unit_oid IS 'Organization unit Id';


--
-- Name: COLUMN orgn_unit.orgn_strc_par_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit.orgn_strc_par_oid IS 'Organization Structure parent OID';


--
-- Name: COLUMN orgn_unit.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN orgn_unit.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN orgn_unit.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN orgn_unit.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN orgn_unit.orgn_strc_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit.orgn_strc_oid IS 'Organization Structure OID';


SET default_tablespace = cpvdata;

--
-- Name: orgn_unit_role_mpng; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.orgn_unit_role_mpng (
    orgn_unit_role_mpng_oid bigint NOT NULL,
    orgn_unit_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    sc_role_oid bigint NOT NULL
);


ALTER TABLE cpv.orgn_unit_role_mpng OWNER TO postgres;

--
-- Name: TABLE orgn_unit_role_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.orgn_unit_role_mpng IS 'Organization Unit to Security Role Mapping';


--
-- Name: COLUMN orgn_unit_role_mpng.orgn_unit_role_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_role_mpng.orgn_unit_role_mpng_oid IS 'organization Unit role mapping OID';


--
-- Name: COLUMN orgn_unit_role_mpng.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_role_mpng.orgn_unit_oid IS 'Organization unit Id';


--
-- Name: COLUMN orgn_unit_role_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_role_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN orgn_unit_role_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_role_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN orgn_unit_role_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_role_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN orgn_unit_role_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_role_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN orgn_unit_role_mpng.sc_role_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_role_mpng.sc_role_oid IS 'Security Role OI';


SET default_tablespace = '';

--
-- Name: orgn_unit_rstr_daly_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.orgn_unit_rstr_daly_mpng (
    orgn_unit_rstr_daly_mpng_oid bigint NOT NULL,
    rstr_daly_max_off_oid bigint NOT NULL,
    orgn_unit_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.orgn_unit_rstr_daly_mpng OWNER TO postgres;

--
-- Name: TABLE orgn_unit_rstr_daly_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.orgn_unit_rstr_daly_mpng IS 'Organization Unit To Vacation Roster Mapping';


--
-- Name: COLUMN orgn_unit_rstr_daly_mpng.orgn_unit_rstr_daly_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_daly_mpng.orgn_unit_rstr_daly_mpng_oid IS 'Organization Unit Roster Daily Mapping OID';


--
-- Name: COLUMN orgn_unit_rstr_daly_mpng.rstr_daly_max_off_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_daly_mpng.rstr_daly_max_off_oid IS 'Roster Daily max off OID';


--
-- Name: COLUMN orgn_unit_rstr_daly_mpng.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_daly_mpng.orgn_unit_oid IS 'Organization unit Id';


--
-- Name: COLUMN orgn_unit_rstr_daly_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_daly_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN orgn_unit_rstr_daly_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_daly_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN orgn_unit_rstr_daly_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_daly_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN orgn_unit_rstr_daly_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_daly_mpng.last_updt_ts IS 'Last Update on Date and Time';


SET default_tablespace = cpvdata;

--
-- Name: orgn_unit_rstr_rule_mpng; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.orgn_unit_rstr_rule_mpng (
    rstr_rule_attr_oid bigint,
    crtd_user_id character varying(10) NOT NULL,
    orgn_unit__mpng_oid bigint NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    orgn_unit_rstr_rule_mpng_oid bigint NOT NULL
);


ALTER TABLE cpv.orgn_unit_rstr_rule_mpng OWNER TO postgres;

--
-- Name: TABLE orgn_unit_rstr_rule_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.orgn_unit_rstr_rule_mpng IS 'Organization unit vacation roster Rule Mapping';


--
-- Name: COLUMN orgn_unit_rstr_rule_mpng.rstr_rule_attr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_rule_mpng.rstr_rule_attr_oid IS 'Roster Rule Attribute OID';


--
-- Name: COLUMN orgn_unit_rstr_rule_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_rule_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN orgn_unit_rstr_rule_mpng.orgn_unit__mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_rule_mpng.orgn_unit__mpng_oid IS 'Organization Unit Mapping OID';


--
-- Name: COLUMN orgn_unit_rstr_rule_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_rule_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN orgn_unit_rstr_rule_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_rule_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN orgn_unit_rstr_rule_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_rule_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN orgn_unit_rstr_rule_mpng.orgn_unit_rstr_rule_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_rstr_rule_mpng.orgn_unit_rstr_rule_mpng_oid IS 'Organization Unit Roster Rule Mapping OID';


SET default_tablespace = '';

--
-- Name: orgn_unit_time_off_type_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.orgn_unit_time_off_type_mpng (
    orgn_unit_time_off_type_mp_oid bigint NOT NULL,
    orgn_unit_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    time_off_type_oid bigint
);


ALTER TABLE cpv.orgn_unit_time_off_type_mpng OWNER TO postgres;

--
-- Name: TABLE orgn_unit_time_off_type_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.orgn_unit_time_off_type_mpng IS 'Organization unit timeoff type mapping';


--
-- Name: COLUMN orgn_unit_time_off_type_mpng.orgn_unit_time_off_type_mp_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_time_off_type_mpng.orgn_unit_time_off_type_mp_oid IS 'Organization Unit to Time off type mapping OID';


--
-- Name: COLUMN orgn_unit_time_off_type_mpng.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_time_off_type_mpng.orgn_unit_oid IS 'Organization unit Id';


--
-- Name: COLUMN orgn_unit_time_off_type_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_time_off_type_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN orgn_unit_time_off_type_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_time_off_type_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN orgn_unit_time_off_type_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_time_off_type_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN orgn_unit_time_off_type_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_time_off_type_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN orgn_unit_time_off_type_mpng.time_off_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.orgn_unit_time_off_type_mpng.time_off_type_oid IS 'Timeoff Type OID';


--
-- Name: over_time_sign_up_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.over_time_sign_up_mpng (
    over_time_sign_up_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    sign_up_flag character varying(1) DEFAULT 'N'::character varying NOT NULL
);


ALTER TABLE cpv.over_time_sign_up_mpng OWNER TO postgres;

--
-- Name: TABLE over_time_sign_up_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.over_time_sign_up_mpng IS 'Over time signup mapping';


--
-- Name: COLUMN over_time_sign_up_mpng.over_time_sign_up_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.over_time_sign_up_mpng.over_time_sign_up_oid IS 'Over time signup oid';


--
-- Name: COLUMN over_time_sign_up_mpng.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.over_time_sign_up_mpng.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN over_time_sign_up_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.over_time_sign_up_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN over_time_sign_up_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.over_time_sign_up_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN over_time_sign_up_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.over_time_sign_up_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN over_time_sign_up_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.over_time_sign_up_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN over_time_sign_up_mpng.sign_up_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.over_time_sign_up_mpng.sign_up_flag IS 'signup flag';


--
-- Name: peak_week_dsgn; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.peak_week_dsgn (
    peak_week_oid character varying(12) NOT NULL,
    vac_rstr_oid bigint,
    allw_unsc_wks_per_pers_cnt smallint,
    allc_type character varying(1) DEFAULT 'W'::character varying,
    year smallint,
    crtd_user_id character varying(10),
    crtd_ts timestamp without time zone DEFAULT statement_timestamp(),
    last_updt_user_id character varying(10),
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp(),
    unsc_wks_perc smallint,
    auto_allc_upd_dsdb_fl character varying(1),
    CONSTRAINT peak_week_dsgn_c1 CHECK (((auto_allc_upd_dsdb_fl)::text = ANY ((ARRAY['N'::character varying, 'Y'::character varying])::text[])))
);


ALTER TABLE cpv.peak_week_dsgn OWNER TO postgres;

--
-- Name: TABLE peak_week_dsgn; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.peak_week_dsgn IS 'Peak Week Designation - Table to store peak week designation. (Peak Weeks - Weeks having More Timeoff request.)NS identifies Peak Weeks before October. This information is used for Caps(Allocation) calculation';


--
-- Name: COLUMN peak_week_dsgn.peak_week_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.peak_week_oid IS 'Peak Week OID (PK)';


--
-- Name: COLUMN peak_week_dsgn.allw_unsc_wks_per_pers_cnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.allw_unsc_wks_per_pers_cnt IS 'Configuration to allow unscheduled Weeks Per Employee in a vacation Roster';


--
-- Name: COLUMN peak_week_dsgn.allc_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.allc_type IS 'Type of allocations. Allowed values (W- Week , D- Daily)';


--
-- Name: COLUMN peak_week_dsgn.year; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.year IS 'Year';


--
-- Name: COLUMN peak_week_dsgn.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.crtd_user_id IS 'Created by User ID';


--
-- Name: COLUMN peak_week_dsgn.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.crtd_ts IS 'Created Date and time';


--
-- Name: COLUMN peak_week_dsgn.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.last_updt_user_id IS 'Last updated By User ID';


--
-- Name: COLUMN peak_week_dsgn.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.last_updt_ts IS 'Last updated Date and Time';


--
-- Name: COLUMN peak_week_dsgn.unsc_wks_perc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn.unsc_wks_perc IS 'percentage of employees taking a week of vacation as days by individual vacation list.';


--
-- Name: peak_week_dsgn_dtls; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.peak_week_dsgn_dtls (
    peak_week_dtls_oid character varying(12) NOT NULL,
    peak_week_oid character varying(12) NOT NULL,
    week_nbr smallint,
    strt_date timestamp without time zone,
    end_date timestamp without time zone,
    max_allcs_cnt smallint NOT NULL,
    crtd_user_id character varying(10),
    crtd_ts timestamp without time zone DEFAULT statement_timestamp(),
    last_updt_user_id character varying(10),
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp()
);


ALTER TABLE cpv.peak_week_dsgn_dtls OWNER TO postgres;

--
-- Name: TABLE peak_week_dsgn_dtls; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.peak_week_dsgn_dtls IS 'Peak Week Designation Details -Table to store peak week designation Details.Details of the required allocation for the Peak weeks.';


--
-- Name: COLUMN peak_week_dsgn_dtls.peak_week_dtls_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.peak_week_dtls_oid IS 'Peak Week Details OID';


--
-- Name: COLUMN peak_week_dsgn_dtls.peak_week_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.peak_week_oid IS 'Peak Week OID refers to Peak Week';


--
-- Name: COLUMN peak_week_dsgn_dtls.week_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.week_nbr IS 'Week Number in a year. (In case of the parent table (Peak Weeks ) has W - Weekly for Allocation Type the the Week ID is saved )';


--
-- Name: COLUMN peak_week_dsgn_dtls.strt_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.strt_date IS 'Start Date of the Date Range is stored : (In Case of parent Table has D - Daily for Allocation Type)';


--
-- Name: COLUMN peak_week_dsgn_dtls.end_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.end_date IS 'End Date of the Date Range is stored : (In Case of parent Table has D - Daily for Allocation Type)';


--
-- Name: COLUMN peak_week_dsgn_dtls.max_allcs_cnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.max_allcs_cnt IS 'Allocations Required for the Week';


--
-- Name: COLUMN peak_week_dsgn_dtls.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.crtd_user_id IS 'Created by User ID';


--
-- Name: COLUMN peak_week_dsgn_dtls.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.crtd_ts IS 'Created Date and time';


--
-- Name: COLUMN peak_week_dsgn_dtls.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.last_updt_user_id IS 'Last updated By User ID';


--
-- Name: COLUMN peak_week_dsgn_dtls.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.peak_week_dsgn_dtls.last_updt_ts IS 'Last updated Date and Time';


--
-- Name: pos_empl_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.pos_empl_mpng (
    empl_pos_mpng_oid bigint NOT NULL,
    empl_mstr_oid bigint,
    empl_pos_oid bigint,
    stra_time_amt real,
    oth_time_amt real,
    over_time_amt real,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    vac_rstr_oid bigint,
    eff_date timestamp without time zone,
    expy_date timestamp without time zone,
    rcd_type_code character varying(1) DEFAULT 'C'::character varying NOT NULL,
    rank_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    sen_date timestamp without time zone,
    sen_rank bigint
);


ALTER TABLE cpv.pos_empl_mpng OWNER TO postgres;

--
-- Name: TABLE pos_empl_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.pos_empl_mpng IS 'Employee Master to Position Mapping';


--
-- Name: COLUMN pos_empl_mpng.empl_pos_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.empl_pos_mpng_oid IS 'Employee to postion mapping OID';


--
-- Name: COLUMN pos_empl_mpng.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN pos_empl_mpng.empl_pos_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.empl_pos_oid IS 'Position OID';


--
-- Name: COLUMN pos_empl_mpng.stra_time_amt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.stra_time_amt IS 'Straight Time Amount';


--
-- Name: COLUMN pos_empl_mpng.oth_time_amt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.oth_time_amt IS 'other time amount';


--
-- Name: COLUMN pos_empl_mpng.over_time_amt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.over_time_amt IS 'over time amount';


--
-- Name: COLUMN pos_empl_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN pos_empl_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN pos_empl_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN pos_empl_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN pos_empl_mpng.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.vac_rstr_oid IS 'Vacation Roster OID';


--
-- Name: COLUMN pos_empl_mpng.eff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.eff_date IS 'effecive date ';


--
-- Name: COLUMN pos_empl_mpng.expy_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.expy_date IS 'Expiry Date';


--
-- Name: COLUMN pos_empl_mpng.rcd_type_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.rcd_type_code IS 'Record Classifier for position assignments (C- Current year, N-Next Year)';


--
-- Name: COLUMN pos_empl_mpng.rank_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.rank_ts IS 'when multiple records are effective for next year bidding /awarding record with oldest timestamp should considered ';


--
-- Name: COLUMN pos_empl_mpng.sen_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.sen_date IS 'Seniority Date for employee in the vacation roster';


--
-- Name: COLUMN pos_empl_mpng.sen_rank; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_empl_mpng.sen_rank IS 'Seniority Rank for employee in the vacation roster';


--
-- Name: pos_fill; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.pos_fill (
    pos_fill_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    evnt_ts timestamp without time zone NOT NULL,
    eff_ts timestamp without time zone NOT NULL,
    job_trax_pos_id character varying(50) NOT NULL,
    shft_nbr smallint NOT NULL,
    cncl_ind character varying(1) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.pos_fill OWNER TO postgres;

--
-- Name: TABLE pos_fill; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.pos_fill IS 'Position fill';


--
-- Name: COLUMN pos_fill.pos_fill_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.pos_fill_oid IS 'Position Fill OID';


--
-- Name: COLUMN pos_fill.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN pos_fill.evnt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.evnt_ts IS 'Event Time stamp';


--
-- Name: COLUMN pos_fill.eff_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.eff_ts IS 'effective timestamp';


--
-- Name: COLUMN pos_fill.job_trax_pos_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.job_trax_pos_id IS 'positon to fill';


--
-- Name: COLUMN pos_fill.shft_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.shft_nbr IS 'Shift Number';


--
-- Name: COLUMN pos_fill.cncl_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.cncl_ind IS 'Cancel Indicator';


--
-- Name: COLUMN pos_fill.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN pos_fill.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN pos_fill.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN pos_fill.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pos_fill.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: pyrl_cods; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.pyrl_cods (
    pyrl_code character varying(100) NOT NULL,
    pay_role_code_ctgy_name character varying(100),
    crtd_user_id character varying(10),
    crtd_ts timestamp without time zone,
    last_updt_user_id character varying(10),
    last_updt_ts timestamp without time zone,
    pyrl_cods_oid bigint NOT NULL,
    time_trax_org_unit character varying(50),
    time_trax_oid bigint,
    entl_vldn_reqd_flag character varying(1) DEFAULT 'N'::character varying NOT NULL
);


ALTER TABLE cpv.pyrl_cods OWNER TO postgres;

--
-- Name: TABLE pyrl_cods; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.pyrl_cods IS 'Payrol codes Master';


--
-- Name: COLUMN pyrl_cods.pyrl_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.pyrl_code IS 'payrol code';


--
-- Name: COLUMN pyrl_cods.pay_role_code_ctgy_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.pay_role_code_ctgy_name IS 'payrol code category name';


--
-- Name: COLUMN pyrl_cods.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN pyrl_cods.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN pyrl_cods.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN pyrl_cods.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN pyrl_cods.pyrl_cods_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.pyrl_cods_oid IS 'payrol code oid';


--
-- Name: COLUMN pyrl_cods.time_trax_org_unit; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.time_trax_org_unit IS 'Timetrax Orgunit ';


--
-- Name: COLUMN pyrl_cods.time_trax_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.time_trax_oid IS 'Timetrac OID';


--
-- Name: COLUMN pyrl_cods.entl_vldn_reqd_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.pyrl_cods.entl_vldn_reqd_flag IS 'To store the Validation required flag received from TT integration call';


--
-- Name: qz_blob_triggers; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.qz_blob_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
);


ALTER TABLE cpv.qz_blob_triggers OWNER TO postgres;

--
-- Name: TABLE qz_blob_triggers; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_blob_triggers IS 'Quartz Blob triggers';


--
-- Name: COLUMN qz_blob_triggers.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_blob_triggers.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_blob_triggers.trigger_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_blob_triggers.trigger_name IS 'Quartz Trigger Name';


--
-- Name: COLUMN qz_blob_triggers.trigger_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_blob_triggers.trigger_group IS 'Quartz Trigger Group';


--
-- Name: COLUMN qz_blob_triggers.blob_data; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_blob_triggers.blob_data IS 'Quartz CLOB data';


SET default_tablespace = cpvdata;

--
-- Name: qz_calendars; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.qz_calendars (
    sched_name character varying(120) NOT NULL,
    calendar_name character varying(200) NOT NULL,
    calendar bytea NOT NULL
);


ALTER TABLE cpv.qz_calendars OWNER TO postgres;

--
-- Name: TABLE qz_calendars; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_calendars IS 'Quartz Calendars';


--
-- Name: COLUMN qz_calendars.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_calendars.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_calendars.calendar_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_calendars.calendar_name IS 'Calendar name';


--
-- Name: COLUMN qz_calendars.calendar; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_calendars.calendar IS 'Calendar ';


SET default_tablespace = '';

--
-- Name: qz_cron_triggers; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.qz_cron_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120) NOT NULL,
    time_zone_id character varying(80)
);


ALTER TABLE cpv.qz_cron_triggers OWNER TO postgres;

--
-- Name: TABLE qz_cron_triggers; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_cron_triggers IS 'Quartz Cron Triggers';


--
-- Name: COLUMN qz_cron_triggers.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_cron_triggers.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_cron_triggers.trigger_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_cron_triggers.trigger_name IS 'Quartz Trigger Name';


--
-- Name: COLUMN qz_cron_triggers.trigger_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_cron_triggers.trigger_group IS 'Quartz Trigger Group';


--
-- Name: COLUMN qz_cron_triggers.cron_expression; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_cron_triggers.cron_expression IS 'CRON expression';


--
-- Name: COLUMN qz_cron_triggers.time_zone_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_cron_triggers.time_zone_id IS 'Quartz Timezone ID';


--
-- Name: qz_fired_triggers; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.qz_fired_triggers (
    sched_name character varying(120) NOT NULL,
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    instance_name character varying(200) NOT NULL,
    fired_time bigint NOT NULL,
    sched_time bigint NOT NULL,
    priority bigint NOT NULL,
    state character varying(16) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_nonconcurrent character varying(1),
    requests_recovery character varying(1)
);


ALTER TABLE cpv.qz_fired_triggers OWNER TO postgres;

--
-- Name: TABLE qz_fired_triggers; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_fired_triggers IS 'Quartz Fired Triggers';


--
-- Name: COLUMN qz_fired_triggers.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_fired_triggers.entry_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.entry_id IS 'Entry ID';


--
-- Name: COLUMN qz_fired_triggers.trigger_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.trigger_name IS 'Quartz Trigger Name';


--
-- Name: COLUMN qz_fired_triggers.trigger_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.trigger_group IS 'Quartz Trigger Group';


--
-- Name: COLUMN qz_fired_triggers.instance_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.instance_name IS 'instance name ';


--
-- Name: COLUMN qz_fired_triggers.fired_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.fired_time IS 'Fired Name';


--
-- Name: COLUMN qz_fired_triggers.sched_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.sched_time IS 'Quartz Scehduled Time';


--
-- Name: COLUMN qz_fired_triggers.priority; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.priority IS 'priority';


--
-- Name: COLUMN qz_fired_triggers.state; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.state IS 'state';


--
-- Name: COLUMN qz_fired_triggers.job_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.job_name IS 'Quatz Job Name';


--
-- Name: COLUMN qz_fired_triggers.job_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.job_group IS 'Quartz Job Group ';


--
-- Name: COLUMN qz_fired_triggers.is_nonconcurrent; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.is_nonconcurrent IS 'nonconcurrent flag';


--
-- Name: COLUMN qz_fired_triggers.requests_recovery; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_fired_triggers.requests_recovery IS 'requests recovery';


--
-- Name: qz_job_details; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.qz_job_details (
    sched_name character varying(120) NOT NULL,
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250) NOT NULL,
    is_durable character varying(1) NOT NULL,
    is_nonconcurrent character varying(1) NOT NULL,
    is_update_data character varying(1) NOT NULL,
    requests_recovery character varying(1) NOT NULL,
    job_data bytea
);


ALTER TABLE cpv.qz_job_details OWNER TO postgres;

--
-- Name: TABLE qz_job_details; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_job_details IS 'Quartz Job Details';


--
-- Name: COLUMN qz_job_details.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_job_details.job_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.job_name IS 'Quatz Job Name';


--
-- Name: COLUMN qz_job_details.job_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.job_group IS 'Quartz Job Group ';


--
-- Name: COLUMN qz_job_details.description; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.description IS 'Desciption';


--
-- Name: COLUMN qz_job_details.job_class_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.job_class_name IS 'Job Class Name';


--
-- Name: COLUMN qz_job_details.is_durable; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.is_durable IS 'is durable flag';


--
-- Name: COLUMN qz_job_details.is_nonconcurrent; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.is_nonconcurrent IS 'is concurrent flag';


--
-- Name: COLUMN qz_job_details.is_update_data; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.is_update_data IS 'is update data';


--
-- Name: COLUMN qz_job_details.requests_recovery; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.requests_recovery IS 'requests recovery';


--
-- Name: COLUMN qz_job_details.job_data; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_job_details.job_data IS 'Job Data';


SET default_tablespace = cpvdata;

--
-- Name: qz_locks; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.qz_locks (
    sched_name character varying(120) NOT NULL,
    lock_name character varying(40) NOT NULL
);


ALTER TABLE cpv.qz_locks OWNER TO postgres;

--
-- Name: TABLE qz_locks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_locks IS 'Quartz Locks';


--
-- Name: COLUMN qz_locks.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_locks.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_locks.lock_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_locks.lock_name IS 'Lock Nmae';


--
-- Name: qz_paused_trigger_grps; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.qz_paused_trigger_grps (
    sched_name character varying(120) NOT NULL,
    trigger_group character varying(200) NOT NULL
);


ALTER TABLE cpv.qz_paused_trigger_grps OWNER TO postgres;

--
-- Name: TABLE qz_paused_trigger_grps; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_paused_trigger_grps IS 'Quartz Paused trigger groups';


--
-- Name: COLUMN qz_paused_trigger_grps.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_paused_trigger_grps.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_paused_trigger_grps.trigger_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_paused_trigger_grps.trigger_group IS 'Quartz Trigger Group';


--
-- Name: qz_scheduler_state; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.qz_scheduler_state (
    sched_name character varying(120) NOT NULL,
    instance_name character varying(200) NOT NULL,
    last_checkin_time bigint NOT NULL,
    checkin_interval bigint NOT NULL
);


ALTER TABLE cpv.qz_scheduler_state OWNER TO postgres;

--
-- Name: TABLE qz_scheduler_state; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_scheduler_state IS 'Quartz Scheduler Date';


--
-- Name: COLUMN qz_scheduler_state.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_scheduler_state.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_scheduler_state.instance_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_scheduler_state.instance_name IS 'instance name ';


--
-- Name: COLUMN qz_scheduler_state.last_checkin_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_scheduler_state.last_checkin_time IS 'last checkin time';


--
-- Name: COLUMN qz_scheduler_state.checkin_interval; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_scheduler_state.checkin_interval IS 'checkin interval';


--
-- Name: qz_simple_triggers; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.qz_simple_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count integer NOT NULL,
    repeat_interval bigint NOT NULL,
    times_triggered bigint NOT NULL
);


ALTER TABLE cpv.qz_simple_triggers OWNER TO postgres;

--
-- Name: TABLE qz_simple_triggers; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_simple_triggers IS 'Quartz simple triggers';


--
-- Name: COLUMN qz_simple_triggers.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simple_triggers.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_simple_triggers.trigger_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simple_triggers.trigger_name IS 'Quartz Trigger Name';


--
-- Name: COLUMN qz_simple_triggers.trigger_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simple_triggers.trigger_group IS 'Quartz Trigger Group';


--
-- Name: COLUMN qz_simple_triggers.repeat_count; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simple_triggers.repeat_count IS 'repeat count';


--
-- Name: COLUMN qz_simple_triggers.repeat_interval; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simple_triggers.repeat_interval IS 'repeat internal ';


--
-- Name: COLUMN qz_simple_triggers.times_triggered; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simple_triggers.times_triggered IS 'Quartz triggered time';


SET default_tablespace = '';

--
-- Name: qz_simprop_triggers; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.qz_simprop_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 bigint,
    int_prop_2 bigint,
    long_prop_1 bigint,
    long_prop_2 bigint,
    dec_prop_1 double precision,
    dec_prop_2 double precision,
    bool_prop_1 character varying(1),
    bool_prop_2 character varying(1)
);


ALTER TABLE cpv.qz_simprop_triggers OWNER TO postgres;

--
-- Name: TABLE qz_simprop_triggers; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_simprop_triggers IS ' Quartz  simple property triggers';


--
-- Name: COLUMN qz_simprop_triggers.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_simprop_triggers.trigger_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.trigger_name IS 'Quartz Trigger Name';


--
-- Name: COLUMN qz_simprop_triggers.trigger_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.trigger_group IS 'Quartz Trigger Group';


--
-- Name: COLUMN qz_simprop_triggers.str_prop_1; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.str_prop_1 IS 'Quatz Simple property 1 trigger ';


--
-- Name: COLUMN qz_simprop_triggers.str_prop_2; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.str_prop_2 IS 'Quatz Simple property 2 trigger ';


--
-- Name: COLUMN qz_simprop_triggers.str_prop_3; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.str_prop_3 IS 'Quatz Simple property 3 trigger ';


--
-- Name: COLUMN qz_simprop_triggers.int_prop_1; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.int_prop_1 IS 'Integer property 1';


--
-- Name: COLUMN qz_simprop_triggers.int_prop_2; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.int_prop_2 IS 'Integer property 2';


--
-- Name: COLUMN qz_simprop_triggers.long_prop_1; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.long_prop_1 IS 'Long Property 1';


--
-- Name: COLUMN qz_simprop_triggers.long_prop_2; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.long_prop_2 IS 'Long Property 2';


--
-- Name: COLUMN qz_simprop_triggers.dec_prop_1; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.dec_prop_1 IS 'Decimal property 1';


--
-- Name: COLUMN qz_simprop_triggers.dec_prop_2; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.dec_prop_2 IS 'Decimal property 2';


--
-- Name: COLUMN qz_simprop_triggers.bool_prop_1; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.bool_prop_1 IS 'boolean property 1';


--
-- Name: COLUMN qz_simprop_triggers.bool_prop_2; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_simprop_triggers.bool_prop_2 IS 'boolean property 2';


--
-- Name: qz_triggers; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.qz_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    next_fire_time bigint,
    prev_fire_time bigint,
    priority bigint,
    trigger_state character varying(16) NOT NULL,
    trigger_type character varying(8) NOT NULL,
    start_time bigint NOT NULL,
    end_time bigint,
    calendar_name character varying(200),
    misfire_instr smallint,
    job_data bytea
);


ALTER TABLE cpv.qz_triggers OWNER TO postgres;

--
-- Name: TABLE qz_triggers; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.qz_triggers IS 'Quartz Trigger';


--
-- Name: COLUMN qz_triggers.sched_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.sched_name IS 'Quartz Scheduled Name';


--
-- Name: COLUMN qz_triggers.trigger_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.trigger_name IS 'Quartz Trigger Name';


--
-- Name: COLUMN qz_triggers.trigger_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.trigger_group IS 'Quartz Trigger Group';


--
-- Name: COLUMN qz_triggers.job_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.job_name IS 'Quatz Job Name';


--
-- Name: COLUMN qz_triggers.job_group; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.job_group IS 'Quartz Job Group ';


--
-- Name: COLUMN qz_triggers.description; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.description IS 'Description';


--
-- Name: COLUMN qz_triggers.next_fire_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.next_fire_time IS 'next fire time ';


--
-- Name: COLUMN qz_triggers.prev_fire_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.prev_fire_time IS 'previou fire time';


--
-- Name: COLUMN qz_triggers.priority; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.priority IS 'priority ';


--
-- Name: COLUMN qz_triggers.trigger_state; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.trigger_state IS 'Quartz Trigger state';


--
-- Name: COLUMN qz_triggers.trigger_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.trigger_type IS 'Quartz Trigger type';


--
-- Name: COLUMN qz_triggers.start_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.start_time IS 'start time ';


--
-- Name: COLUMN qz_triggers.end_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.end_time IS 'End Time';


--
-- Name: COLUMN qz_triggers.calendar_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.calendar_name IS 'Calendar Name';


--
-- Name: COLUMN qz_triggers.misfire_instr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.misfire_instr IS 'Misfire instr';


--
-- Name: COLUMN qz_triggers.job_data; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.qz_triggers.job_data IS 'Job Data';


--
-- Name: rstr_daly_max_off; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.rstr_daly_max_off (
    rstr_daly_max_off_oid bigint NOT NULL,
    max_off_date timestamp without time zone NOT NULL,
    vac_fill_flag character varying(1) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    wkly_caps_lmt smallint,
    daly_caps_lmt smallint,
    shft_1_caps_lmt smallint,
    shft_2_caps_lmt smallint,
    shft_3_caps_lmt smallint
);


ALTER TABLE cpv.rstr_daly_max_off OWNER TO postgres;

--
-- Name: TABLE rstr_daly_max_off; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.rstr_daly_max_off IS 'Vacation Roster Capcity Details';


--
-- Name: COLUMN rstr_daly_max_off.rstr_daly_max_off_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.rstr_daly_max_off_oid IS 'roster daily max off oid';


--
-- Name: COLUMN rstr_daly_max_off.max_off_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.max_off_date IS 'max off date';


--
-- Name: COLUMN rstr_daly_max_off.vac_fill_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.vac_fill_flag IS 'Used to store if the maximum roster vacations reached or not';


--
-- Name: COLUMN rstr_daly_max_off.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN rstr_daly_max_off.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN rstr_daly_max_off.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN rstr_daly_max_off.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN rstr_daly_max_off.wkly_caps_lmt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.wkly_caps_lmt IS 'Weekly caps limit';


--
-- Name: COLUMN rstr_daly_max_off.daly_caps_lmt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.daly_caps_lmt IS 'daily caps limit';


--
-- Name: COLUMN rstr_daly_max_off.shft_1_caps_lmt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.shft_1_caps_lmt IS 'Shift 1 Caps Limit';


--
-- Name: COLUMN rstr_daly_max_off.shft_2_caps_lmt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.shft_2_caps_lmt IS 'Shift 2 Caps Limit';


--
-- Name: COLUMN rstr_daly_max_off.shft_3_caps_lmt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_daly_max_off.shft_3_caps_lmt IS 'Shift 3 Caps Limit';


--
-- Name: rstr_rule_attrs; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.rstr_rule_attrs (
    rstr_rule_attr_oid bigint NOT NULL,
    sch_type character varying(18) NOT NULL,
    next_year_flex_sch_allw_flag character varying(1),
    next_year_pers_day_sch_allw_fl character varying(1),
    cur_year_bid_allw_flag character varying(1) NOT NULL,
    next_year_vac_plan_clse_date timestamp without time zone NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    week_strt_day character varying(3),
    rstc_apvl_by_caps_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    sys_admin_emal_addr character varying(100),
    bid_proc_btch_job_run_day character varying(3),
    sngl_day_req_coff_date timestamp without time zone,
    sngl_day_aprv_coff_date timestamp without time zone,
    allw_unpl_day_befr_sch_day_fl character varying(1),
    all_days_same_vac_week_fir_fl character varying(20),
    sngl_day_vacs_be_used_code character varying(10),
    sngl_week_cnvn_allw_date timestamp without time zone,
    sw_from_week_to_day character varying(10),
    eff_date timestamp without time zone,
    expy_date timestamp without time zone,
    sch_bid_code character varying(10),
    cap_type_ind character varying(1) NOT NULL,
    next_year_vac_plan_strt_date timestamp without time zone NOT NULL,
    fir_week_strt_on_date timestamp without time zone NOT NULL,
    last_week_strt_on_date timestamp without time zone NOT NULL,
    hol_infc_key character varying(50),
    hol_sign_up_type character varying(50),
    one_wk_entl_max_sch_wks smallint,
    two_wk_entl_max_sch_wks smallint,
    thre_wk_entl_max_sch_wks smallint,
    four_wk_entl_max_sch_wks smallint,
    five_wk_entl_max_sch_wks smallint,
    one_wk_entl_max_unsc_wks smallint,
    two_wk_entl_max_unsc_wks smallint,
    thre_wk_entl_max_unsc_wks smallint,
    four_wk_entl_max_unsc_wks smallint,
    five_wk_entl_max_unsc_wks smallint,
    bid_time_off_type_oid bigint,
    entl_type character varying(30),
    vac_prof_oid bigint,
    rstr_rule_attrs character varying(18000) DEFAULT '{ }'::character varying NOT NULL,
    vac_rstr_bld_date timestamp without time zone
);


ALTER TABLE cpv.rstr_rule_attrs OWNER TO postgres;

--
-- Name: TABLE rstr_rule_attrs; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.rstr_rule_attrs IS 'Vacation Roster Rule attributes';


--
-- Name: COLUMN rstr_rule_attrs.rstr_rule_attr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.rstr_rule_attr_oid IS 'Roster Rule Attributes OID';


--
-- Name: COLUMN rstr_rule_attrs.sch_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.sch_type IS 'scehdule type';


--
-- Name: COLUMN rstr_rule_attrs.next_year_flex_sch_allw_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.next_year_flex_sch_allw_flag IS 'Next year flex scheduled allocation flag';


--
-- Name: COLUMN rstr_rule_attrs.next_year_pers_day_sch_allw_fl; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.next_year_pers_day_sch_allw_fl IS 'Next Year Personal Days Scheduled Allowed Flag';


--
-- Name: COLUMN rstr_rule_attrs.cur_year_bid_allw_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.cur_year_bid_allw_flag IS 'current year bid allowed flag';


--
-- Name: COLUMN rstr_rule_attrs.next_year_vac_plan_clse_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.next_year_vac_plan_clse_date IS 'Next year vacation bidding close date';


--
-- Name: COLUMN rstr_rule_attrs.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN rstr_rule_attrs.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN rstr_rule_attrs.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN rstr_rule_attrs.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN rstr_rule_attrs.week_strt_day; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.week_strt_day IS 'Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday';


--
-- Name: COLUMN rstr_rule_attrs.rstc_apvl_by_caps_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.rstc_apvl_by_caps_flag IS 'Restrict Approval on Caps flag';


--
-- Name: COLUMN rstr_rule_attrs.sys_admin_emal_addr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.sys_admin_emal_addr IS 'List of email addresses.';


--
-- Name: COLUMN rstr_rule_attrs.bid_proc_btch_job_run_day; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.bid_proc_btch_job_run_day IS 'Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday';


--
-- Name: COLUMN rstr_rule_attrs.sngl_day_req_coff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.sngl_day_req_coff_date IS 'Single Day Request Cuttoff Date';


--
-- Name: COLUMN rstr_rule_attrs.sngl_day_aprv_coff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.sngl_day_aprv_coff_date IS 'Single day Approval Cuttoff Date';


--
-- Name: COLUMN rstr_rule_attrs.allw_unpl_day_befr_sch_day_fl; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.allw_unpl_day_befr_sch_day_fl IS 'Allow Unpaid day scehdule day flag';


--
-- Name: COLUMN rstr_rule_attrs.all_days_same_vac_week_fir_fl; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.all_days_same_vac_week_fir_fl IS 'All Days Same vacation Week flag';


--
-- Name: COLUMN rstr_rule_attrs.sngl_day_vacs_be_used_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.sngl_day_vacs_be_used_code IS 'Schedule Single Day Vacation to Scheduled Week Code';


--
-- Name: COLUMN rstr_rule_attrs.sngl_week_cnvn_allw_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.sngl_week_cnvn_allw_date IS 'Single Weeks convertion Allowed date';


--
-- Name: COLUMN rstr_rule_attrs.sw_from_week_to_day; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.sw_from_week_to_day IS 'Fetch week from';


--
-- Name: COLUMN rstr_rule_attrs.eff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.eff_date IS 'effecive date ';


--
-- Name: COLUMN rstr_rule_attrs.expy_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.expy_date IS 'Expiry Date';


--
-- Name: COLUMN rstr_rule_attrs.sch_bid_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.sch_bid_code IS 'Add column "put scheduled single day week up for bid" with potential values as "None", "Day", "Week" to RSTR_RULE_ATTRS
Meanings:
None - Not allowed
Day - Advertise the day when the day is used
Week - Advertise the week when the week is used';


--
-- Name: COLUMN rstr_rule_attrs.cap_type_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.cap_type_ind IS 'cap type indicator';


--
-- Name: COLUMN rstr_rule_attrs.next_year_vac_plan_strt_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.next_year_vac_plan_strt_date IS 'Next year vacation bidding start date';


--
-- Name: COLUMN rstr_rule_attrs.fir_week_strt_on_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.fir_week_strt_on_date IS 'fire week start on date';


--
-- Name: COLUMN rstr_rule_attrs.last_week_strt_on_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.last_week_strt_on_date IS 'last week start on date';


--
-- Name: COLUMN rstr_rule_attrs.hol_infc_key; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.hol_infc_key IS 'Holiday Interface Key';


--
-- Name: COLUMN rstr_rule_attrs.hol_sign_up_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.hol_sign_up_type IS 'Holiday signup type';


--
-- Name: COLUMN rstr_rule_attrs.one_wk_entl_max_sch_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.one_wk_entl_max_sch_wks IS '1 week entitlement max schedule weeks';


--
-- Name: COLUMN rstr_rule_attrs.two_wk_entl_max_sch_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.two_wk_entl_max_sch_wks IS '2 week entitlement max scheduled weeks';


--
-- Name: COLUMN rstr_rule_attrs.thre_wk_entl_max_sch_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.thre_wk_entl_max_sch_wks IS '3 week entitlement max scheduled week';


--
-- Name: COLUMN rstr_rule_attrs.four_wk_entl_max_sch_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.four_wk_entl_max_sch_wks IS '4 week entitlement max scheduled weeks';


--
-- Name: COLUMN rstr_rule_attrs.five_wk_entl_max_sch_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.five_wk_entl_max_sch_wks IS '5 week entitlement max scheduled weeks';


--
-- Name: COLUMN rstr_rule_attrs.one_wk_entl_max_unsc_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.one_wk_entl_max_unsc_wks IS '1 week entitlement max unschedule weeks';


--
-- Name: COLUMN rstr_rule_attrs.two_wk_entl_max_unsc_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.two_wk_entl_max_unsc_wks IS '2 week entitlement max unscheduled weeks';


--
-- Name: COLUMN rstr_rule_attrs.thre_wk_entl_max_unsc_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.thre_wk_entl_max_unsc_wks IS '3 week entitlement max unscheduled week';


--
-- Name: COLUMN rstr_rule_attrs.four_wk_entl_max_unsc_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.four_wk_entl_max_unsc_wks IS '4 week entitlement max unscheduled weeks';


--
-- Name: COLUMN rstr_rule_attrs.five_wk_entl_max_unsc_wks; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.five_wk_entl_max_unsc_wks IS '5 week entitlement max unscheduled weeks';


--
-- Name: COLUMN rstr_rule_attrs.bid_time_off_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.bid_time_off_type_oid IS 'bid time off type oid';


--
-- Name: COLUMN rstr_rule_attrs.entl_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.entl_type IS 'entitlement type for the selected BID_TIME_OFF_TYPE is to be saved';


--
-- Name: COLUMN rstr_rule_attrs.vac_prof_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.vac_prof_oid IS 'Vacation Profile OID';


--
-- Name: COLUMN rstr_rule_attrs.rstr_rule_attrs; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.rstr_rule_attrs IS 'We have a lot of parameters configured in RSTR_RULE_ATTRS table. All these parameters are not needed for every customer of Vacation Scheduling and based on customers need we have to delete columns and add new columns. This is resulting in changing the data model for every customer. so to avoid this add a new column with varchar2(18000) to store data in JSON format.';


--
-- Name: COLUMN rstr_rule_attrs.vac_rstr_bld_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.rstr_rule_attrs.vac_rstr_bld_date IS 'Vacation Roster Build Date - Vacation Roster Build Date this is refered as magic Day in';


SET default_tablespace = cpvdata;

--
-- Name: sc_caby; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.sc_caby (
    caby_name character varying(100) NOT NULL,
    caby_desc character varying(100),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.sc_caby OWNER TO postgres;

--
-- Name: TABLE sc_caby; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_caby IS 'Security Capabilities';


--
-- Name: COLUMN sc_caby.caby_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_caby.caby_name IS 'Capability Name';


--
-- Name: COLUMN sc_caby.caby_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_caby.caby_desc IS 'Capability Description';


--
-- Name: COLUMN sc_caby.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_caby.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_caby.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_caby.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_caby.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_caby.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_caby.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_caby.last_updt_ts IS 'Last Update on Date and Time';


SET default_tablespace = '';

--
-- Name: sc_prof_caby_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sc_prof_caby_mpng (
    caby_name character varying(100) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    sc_prof_role_rule_oid bigint
);


ALTER TABLE cpv.sc_prof_caby_mpng OWNER TO postgres;

--
-- Name: TABLE sc_prof_caby_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_prof_caby_mpng IS 'Security Profile Capabiltity Mapping ';


--
-- Name: COLUMN sc_prof_caby_mpng.caby_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_caby_mpng.caby_name IS 'Capability Name';


--
-- Name: COLUMN sc_prof_caby_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_caby_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_prof_caby_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_caby_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_prof_caby_mpng.sc_prof_role_rule_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_caby_mpng.sc_prof_role_rule_oid IS 'security profile role Rule OID';


--
-- Name: sc_prof_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sc_prof_mpng (
    prof_name character varying(30) NOT NULL,
    orgn_unit_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    role_rank smallint
);


ALTER TABLE cpv.sc_prof_mpng OWNER TO postgres;

--
-- Name: TABLE sc_prof_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_prof_mpng IS 'Security Profile Mapping';


--
-- Name: COLUMN sc_prof_mpng.prof_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_mpng.prof_name IS 'Security Profile Name';


--
-- Name: COLUMN sc_prof_mpng.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_mpng.orgn_unit_oid IS 'Organization unit Id';


--
-- Name: COLUMN sc_prof_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_prof_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_prof_mpng.role_rank; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_mpng.role_rank IS 'role rank';


--
-- Name: sc_prof_role_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sc_prof_role_mpng (
    sc_role_caby_mpng_oid character varying(30) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    dflt_role_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    sc_role_oid bigint,
    sc_prof_role_rule_oid bigint,
    role_rank smallint
);


ALTER TABLE cpv.sc_prof_role_mpng OWNER TO postgres;

--
-- Name: TABLE sc_prof_role_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_prof_role_mpng IS 'Security Profile to Role Mapping';


--
-- Name: COLUMN sc_prof_role_mpng.sc_role_caby_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.sc_role_caby_mpng_oid IS 'security Role capability Mapping OID';


--
-- Name: COLUMN sc_prof_role_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_prof_role_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_prof_role_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_prof_role_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN sc_prof_role_mpng.dflt_role_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.dflt_role_flag IS 'Default Role flag';


--
-- Name: COLUMN sc_prof_role_mpng.sc_role_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.sc_role_oid IS 'role OID';


--
-- Name: COLUMN sc_prof_role_mpng.sc_prof_role_rule_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.sc_prof_role_rule_oid IS 'security profile role Rule OID';


--
-- Name: COLUMN sc_prof_role_mpng.role_rank; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_mpng.role_rank IS 'Role Rank';


--
-- Name: sc_prof_role_rule; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sc_prof_role_rule (
    prof_role_rule_name character varying(100) NOT NULL,
    prof_desc character varying(30) NOT NULL,
    rank_ts timestamp without time zone NOT NULL,
    role_rule_nbr smallint NOT NULL,
    crtd_user_id character varying(10),
    crtd_ts timestamp without time zone DEFAULT statement_timestamp(),
    last_updt_user_id character varying(10),
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp(),
    sc_prof_role_rule_oid bigint
);


ALTER TABLE cpv.sc_prof_role_rule OWNER TO postgres;

--
-- Name: TABLE sc_prof_role_rule; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_prof_role_rule IS 'Security Profile Role Rules(Security Profile)';


--
-- Name: COLUMN sc_prof_role_rule.prof_role_rule_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.prof_role_rule_name IS 'Security Profile Name';


--
-- Name: COLUMN sc_prof_role_rule.prof_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.prof_desc IS 'Security Profile Description';


--
-- Name: COLUMN sc_prof_role_rule.rank_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.rank_ts IS 'Rank time stamp';


--
-- Name: COLUMN sc_prof_role_rule.role_rule_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.role_rule_nbr IS 'role rule number';


--
-- Name: COLUMN sc_prof_role_rule.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_prof_role_rule.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_prof_role_rule.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_prof_role_rule.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN sc_prof_role_rule.sc_prof_role_rule_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_role_rule.sc_prof_role_rule_oid IS 'Security Profil Role rule oid';


SET default_tablespace = cpvdata;

--
-- Name: sc_prof_rule_cond; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.sc_prof_rule_cond (
    prof_name character varying(30) NOT NULL,
    rule_attr_name character varying(30) NOT NULL,
    cond_valu character varying(50) NOT NULL,
    rule_opr_name character varying(30) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    sc_prof_role_rule_oid bigint NOT NULL
);


ALTER TABLE cpv.sc_prof_rule_cond OWNER TO postgres;

--
-- Name: TABLE sc_prof_rule_cond; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_prof_rule_cond IS 'Security Profile Rule Conditions';


--
-- Name: COLUMN sc_prof_rule_cond.prof_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_rule_cond.prof_name IS 'Security Profile Name';


--
-- Name: COLUMN sc_prof_rule_cond.rule_attr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_rule_cond.rule_attr_name IS 'Rule attribute Name';


--
-- Name: COLUMN sc_prof_rule_cond.cond_valu; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_rule_cond.cond_valu IS 'condition Value';


--
-- Name: COLUMN sc_prof_rule_cond.rule_opr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_rule_cond.rule_opr_name IS 'Rule Operator Name';


--
-- Name: COLUMN sc_prof_rule_cond.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_rule_cond.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_prof_rule_cond.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_rule_cond.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_prof_rule_cond.sc_prof_role_rule_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_prof_rule_cond.sc_prof_role_rule_oid IS 'Security Profil Role rule oid';


SET default_tablespace = '';

--
-- Name: sc_role; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sc_role (
    role_name character varying(50) NOT NULL,
    role_desc character varying(50) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    all_orgn_unit_flag character varying(1),
    sc_role_oid bigint,
    role_type character varying(20)
);


ALTER TABLE cpv.sc_role OWNER TO postgres;

--
-- Name: TABLE sc_role; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_role IS 'Security Role Maste4';


--
-- Name: COLUMN sc_role.role_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.role_name IS 'Role Name';


--
-- Name: COLUMN sc_role.role_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.role_desc IS 'role Description';


--
-- Name: COLUMN sc_role.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_role.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_role.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN sc_role.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_role.all_orgn_unit_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.all_orgn_unit_flag IS 'All Organization Unit flag';


--
-- Name: COLUMN sc_role.sc_role_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.sc_role_oid IS 'role oid';


--
-- Name: COLUMN sc_role.role_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role.role_type IS 'Role type';


--
-- Name: sc_role_caby_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sc_role_caby_mpng (
    sc_role_caby_mpng_oid character varying(30) NOT NULL,
    caby_name character varying(100),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    sc_role_oid bigint
);


ALTER TABLE cpv.sc_role_caby_mpng OWNER TO postgres;

--
-- Name: TABLE sc_role_caby_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_role_caby_mpng IS 'Security Role Capabilities Mapping';


--
-- Name: COLUMN sc_role_caby_mpng.sc_role_caby_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_caby_mpng.sc_role_caby_mpng_oid IS 'role capability mapping oid';


--
-- Name: COLUMN sc_role_caby_mpng.caby_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_caby_mpng.caby_name IS 'Capability Name';


--
-- Name: COLUMN sc_role_caby_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_caby_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_role_caby_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_caby_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_role_caby_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_caby_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_role_caby_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_caby_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN sc_role_caby_mpng.sc_role_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_caby_mpng.sc_role_oid IS 'role oid';


--
-- Name: sc_role_glbl_prop; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sc_role_glbl_prop (
    sc_role_glbl_prop_oid bigint NOT NULL,
    gobal_key character varying(50),
    glbl_valu character varying(50),
    crtd_user_id character varying(10),
    crtd_ts timestamp without time zone DEFAULT statement_timestamp(),
    last_updt_user_id character varying(10),
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp(),
    sc_role_oid bigint
);


ALTER TABLE cpv.sc_role_glbl_prop OWNER TO postgres;

--
-- Name: TABLE sc_role_glbl_prop; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_role_glbl_prop IS 'Security Role Global Properties';


--
-- Name: COLUMN sc_role_glbl_prop.sc_role_glbl_prop_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_glbl_prop.sc_role_glbl_prop_oid IS 'Security Role Global Property OID';


--
-- Name: COLUMN sc_role_glbl_prop.gobal_key; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_glbl_prop.gobal_key IS 'global property jey';


--
-- Name: COLUMN sc_role_glbl_prop.glbl_valu; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_glbl_prop.glbl_valu IS 'global property value';


--
-- Name: COLUMN sc_role_glbl_prop.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_glbl_prop.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_role_glbl_prop.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_glbl_prop.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_role_glbl_prop.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_glbl_prop.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_role_glbl_prop.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_glbl_prop.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN sc_role_glbl_prop.sc_role_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_role_glbl_prop.sc_role_oid IS 'Security Role OID';


--
-- Name: sc_rule_attr; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sc_rule_attr (
    rule_attr_name character varying(30) NOT NULL,
    rule_attr_desc character varying(50) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL,
    rule_attr_type character varying(10) DEFAULT 'string'::character varying NOT NULL
);


ALTER TABLE cpv.sc_rule_attr OWNER TO postgres;

--
-- Name: TABLE sc_rule_attr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_rule_attr IS 'Security Rule Atributes';


--
-- Name: COLUMN sc_rule_attr.rule_attr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr.rule_attr_name IS 'Rule attribute Name';


--
-- Name: COLUMN sc_rule_attr.rule_attr_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr.rule_attr_desc IS 'Rule Attribute Description';


--
-- Name: COLUMN sc_rule_attr.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_rule_attr.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_rule_attr.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_rule_attr.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN sc_rule_attr.rule_attr_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr.rule_attr_type IS 'rule attribute type';


SET default_tablespace = cpvdata;

--
-- Name: sc_rule_attr_opr; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.sc_rule_attr_opr (
    rule_attr_name character varying(30) NOT NULL,
    rule_opr_name character varying(30) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.sc_rule_attr_opr OWNER TO postgres;

--
-- Name: TABLE sc_rule_attr_opr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_rule_attr_opr IS 'Security Rule attribure Operators filters';


--
-- Name: COLUMN sc_rule_attr_opr.rule_attr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr_opr.rule_attr_name IS 'Rule attribute Name';


--
-- Name: COLUMN sc_rule_attr_opr.rule_opr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr_opr.rule_opr_name IS 'Rule Operator Name';


--
-- Name: COLUMN sc_rule_attr_opr.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr_opr.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_rule_attr_opr.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr_opr.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_rule_attr_opr.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr_opr.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_rule_attr_opr.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_attr_opr.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: sc_rule_opr; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.sc_rule_opr (
    rule_opr_name character varying(30) NOT NULL,
    rule_opr_desc character varying(50) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.sc_rule_opr OWNER TO postgres;

--
-- Name: TABLE sc_rule_opr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sc_rule_opr IS 'Security Rule Operators';


--
-- Name: COLUMN sc_rule_opr.rule_opr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_opr.rule_opr_name IS 'Rule Operator Name';


--
-- Name: COLUMN sc_rule_opr.rule_opr_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_opr.rule_opr_desc IS 'Rule Operator Description';


--
-- Name: COLUMN sc_rule_opr.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_opr.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN sc_rule_opr.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_opr.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN sc_rule_opr.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_opr.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN sc_rule_opr.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sc_rule_opr.last_updt_ts IS 'Last Update on Date and Time';


SET default_tablespace = '';

--
-- Name: sen_rstr_dump; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.sen_rstr_dump (
    sen_rstr_cod character varying(4) NOT NULL,
    sen_rstr_type character varying(10) NOT NULL,
    crft_pos_code character varying(3) NOT NULL,
    sen_rstr_desc character varying(75),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.sen_rstr_dump OWNER TO postgres;

--
-- Name: TABLE sen_rstr_dump; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.sen_rstr_dump IS 'Seniority Rosters ( one time dump of Seniority Roster from mainframe.  Seniority Rosters are provided as one time dump to VS. This data will be used to assign the employee to right vacation list as per his availability';


--
-- Name: COLUMN sen_rstr_dump.sen_rstr_cod; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sen_rstr_dump.sen_rstr_cod IS 'Seniority Roster Code (PK)';


--
-- Name: COLUMN sen_rstr_dump.sen_rstr_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sen_rstr_dump.sen_rstr_type IS 'Seniority Roster Type (Stacked/OSL)';


--
-- Name: COLUMN sen_rstr_dump.crft_pos_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sen_rstr_dump.crft_pos_code IS 'Craft Position Code';


--
-- Name: COLUMN sen_rstr_dump.sen_rstr_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sen_rstr_dump.sen_rstr_desc IS 'Seniority Roser Description';


--
-- Name: COLUMN sen_rstr_dump.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sen_rstr_dump.crtd_user_id IS 'Created by User ID';


--
-- Name: COLUMN sen_rstr_dump.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sen_rstr_dump.crtd_ts IS 'Created Date and time';


--
-- Name: COLUMN sen_rstr_dump.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sen_rstr_dump.last_updt_user_id IS 'Last updated By User ID';


--
-- Name: COLUMN sen_rstr_dump.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.sen_rstr_dump.last_updt_ts IS 'Last updated Date and Time';


--
-- Name: spcl_sch; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.spcl_sch (
    spcl_sch_oid bigint NOT NULL,
    sch_date timestamp without time zone NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    empl_stat character varying(1) DEFAULT 'A'::character varying NOT NULL,
    proc_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    empl_pos_oid bigint,
    crtd_user_oid character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL,
    rank integer,
    shft smallint,
    strt_at_time character varying(20),
    end_at_time character varying(20),
    unpd_brk_dur smallint
);


ALTER TABLE cpv.spcl_sch OWNER TO postgres;

--
-- Name: TABLE spcl_sch; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.spcl_sch IS 'Specialist Scheduling';


--
-- Name: COLUMN spcl_sch.spcl_sch_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.spcl_sch_oid IS 'specialists Schedule OID';


--
-- Name: COLUMN spcl_sch.sch_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.sch_date IS 'Specialists Schedule date';


--
-- Name: COLUMN spcl_sch.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN spcl_sch.empl_stat; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.empl_stat IS 'employee status';


--
-- Name: COLUMN spcl_sch.proc_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.proc_flag IS 'processed flag';


--
-- Name: COLUMN spcl_sch.empl_pos_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.empl_pos_oid IS 'Position OID';


--
-- Name: COLUMN spcl_sch.crtd_user_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.crtd_user_oid IS 'Created By User ID';


--
-- Name: COLUMN spcl_sch.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN spcl_sch.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN spcl_sch.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN spcl_sch.rank; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.rank IS 'rank';


--
-- Name: COLUMN spcl_sch.shft; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.shft IS 'Shift Number';


--
-- Name: COLUMN spcl_sch.strt_at_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.strt_at_time IS 'start at time';


--
-- Name: COLUMN spcl_sch.end_at_time; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.end_at_time IS 'end at time ';


--
-- Name: COLUMN spcl_sch.unpd_brk_dur; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.spcl_sch.unpd_brk_dur IS 'unpaid break duration';


--
-- Name: time_off_req; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.time_off_req (
    time_off_req_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    bid_req_stat character varying(1) NOT NULL,
    req_strt_ts timestamp without time zone NOT NULL,
    req_end_ts timestamp without time zone NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    time_off_type_oid bigint,
    apvd_by character varying(10),
    pyrl_vrfd_ind character varying(10),
    week_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    sch_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    apvr_empl_mstr_oid bigint,
    time_trax_evnt_oid bigint,
    time_trax_sent_flag character varying(1),
    trad_time_off_req_oid bigint,
    splt_par_req_oid bigint,
    next_year_awrd_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    mgr_req_flag character varying(1) DEFAULT 'N'::character varying NOT NULL
);


ALTER TABLE cpv.time_off_req OWNER TO postgres;

--
-- Name: TABLE time_off_req; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_req IS 'Timeoff Request';


--
-- Name: COLUMN time_off_req.time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.time_off_req_oid IS 'Time off request OID';


--
-- Name: COLUMN time_off_req.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.empl_mstr_oid IS 'Employee Master OID ';


--
-- Name: COLUMN time_off_req.bid_req_stat; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.bid_req_stat IS 'Bid request start date';


--
-- Name: COLUMN time_off_req.req_strt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.req_strt_ts IS 'Request start time stamp';


--
-- Name: COLUMN time_off_req.req_end_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.req_end_ts IS 'Request end time stamp';


--
-- Name: COLUMN time_off_req.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_req.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_req.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_req.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN time_off_req.time_off_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.time_off_type_oid IS 'Timeoff Type OID';


--
-- Name: COLUMN time_off_req.apvd_by; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.apvd_by IS 'Approved by';


--
-- Name: COLUMN time_off_req.pyrl_vrfd_ind; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.pyrl_vrfd_ind IS 'payroll validation flag';


--
-- Name: COLUMN time_off_req.week_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.week_flag IS 'Week flag';


--
-- Name: COLUMN time_off_req.sch_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.sch_flag IS 'Schedule flag';


--
-- Name: COLUMN time_off_req.apvr_empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.apvr_empl_mstr_oid IS 'Approver Employee OID';


--
-- Name: COLUMN time_off_req.time_trax_evnt_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.time_trax_evnt_oid IS 'Time trax event OID';


--
-- Name: COLUMN time_off_req.time_trax_sent_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.time_trax_sent_flag IS 'Timetrax Sent flag';


--
-- Name: COLUMN time_off_req.trad_time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.trad_time_off_req_oid IS 'Traded Timeoff request OID';


--
-- Name: COLUMN time_off_req.splt_par_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.splt_par_req_oid IS 'Split Parent Request OID';


--
-- Name: COLUMN time_off_req.next_year_awrd_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.next_year_awrd_flag IS 'Next year awarding flag';


--
-- Name: COLUMN time_off_req.mgr_req_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req.mgr_req_flag IS 'Request Submited by Manager';


--
-- Name: time_off_req_cmnt; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.time_off_req_cmnt (
    time_off_req_oid bigint NOT NULL,
    time_off_req_cmnt_oid bigint NOT NULL,
    cmnt character varying(300) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    mgr_flag character varying(1) DEFAULT 'N'::character varying NOT NULL
);


ALTER TABLE cpv.time_off_req_cmnt OWNER TO postgres;

--
-- Name: TABLE time_off_req_cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_req_cmnt IS 'Timeoff Request Comments';


--
-- Name: COLUMN time_off_req_cmnt.time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_cmnt.time_off_req_oid IS 'Time off request OID';


--
-- Name: COLUMN time_off_req_cmnt.time_off_req_cmnt_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_cmnt.time_off_req_cmnt_oid IS 'Timeoff Request Comments OID';


--
-- Name: COLUMN time_off_req_cmnt.cmnt; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_cmnt.cmnt IS 'comments';


--
-- Name: COLUMN time_off_req_cmnt.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_cmnt.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_req_cmnt.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_cmnt.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_req_cmnt.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_cmnt.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_req_cmnt.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_cmnt.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN time_off_req_cmnt.mgr_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_cmnt.mgr_flag IS 'Manager Submitted Request flag';


--
-- Name: time_off_req_dtls; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.time_off_req_dtls (
    time_off_req_dtls_oid bigint NOT NULL,
    time_off_req_oid bigint NOT NULL,
    req_strt_ts timestamp without time zone NOT NULL,
    req_end_ts timestamp without time zone NOT NULL,
    shft_nbr smallint,
    cap_date timestamp without time zone NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL,
    time_trax_sent_flag character varying(1),
    time_trax_evnt_oid bigint,
    unpd_brk_dur smallint DEFAULT 0 NOT NULL
);


ALTER TABLE cpv.time_off_req_dtls OWNER TO postgres;

--
-- Name: TABLE time_off_req_dtls; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_req_dtls IS 'Timeoff Request Details';


--
-- Name: COLUMN time_off_req_dtls.time_off_req_dtls_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.time_off_req_dtls_oid IS 'Time of request Details OID';


--
-- Name: COLUMN time_off_req_dtls.time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.time_off_req_oid IS 'Time off request OID';


--
-- Name: COLUMN time_off_req_dtls.req_strt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.req_strt_ts IS 'Request start time stamp';


--
-- Name: COLUMN time_off_req_dtls.req_end_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.req_end_ts IS 'Request end time stamp';


--
-- Name: COLUMN time_off_req_dtls.shft_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.shft_nbr IS 'Shift Number';


--
-- Name: COLUMN time_off_req_dtls.cap_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.cap_date IS 'Cap date';


--
-- Name: COLUMN time_off_req_dtls.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_req_dtls.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_req_dtls.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_req_dtls.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN time_off_req_dtls.time_trax_sent_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.time_trax_sent_flag IS 'Timetrax Sent flag';


--
-- Name: COLUMN time_off_req_dtls.time_trax_evnt_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.time_trax_evnt_oid IS 'Time trax event OID';


--
-- Name: COLUMN time_off_req_dtls.unpd_brk_dur; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_dtls.unpd_brk_dur IS 'Store the unpaid Break Duration for the requested date detail.';


--
-- Name: time_off_req_entl_cnsm; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.time_off_req_entl_cnsm (
    time_off_req_entl_cnsm_oid bigint NOT NULL,
    entl_type character varying(30) NOT NULL,
    cnsm_mins smallint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    time_off_req_dtls_oid bigint
);


ALTER TABLE cpv.time_off_req_entl_cnsm OWNER TO postgres;

--
-- Name: TABLE time_off_req_entl_cnsm; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_req_entl_cnsm IS 'This tables store timeoff request entitlement consumed information.';


--
-- Name: COLUMN time_off_req_entl_cnsm.time_off_req_entl_cnsm_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_entl_cnsm.time_off_req_entl_cnsm_oid IS 'Time off reqestEntitlement Consumption OID';


--
-- Name: COLUMN time_off_req_entl_cnsm.entl_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_entl_cnsm.entl_type IS 'Entitlement type used by request for consuming mins. This value comes from Timetrax.';


--
-- Name: COLUMN time_off_req_entl_cnsm.cnsm_mins; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_entl_cnsm.cnsm_mins IS 'Consumed mins in entitlement type for this request';


--
-- Name: COLUMN time_off_req_entl_cnsm.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_entl_cnsm.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_req_entl_cnsm.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_entl_cnsm.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_req_entl_cnsm.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_entl_cnsm.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_req_entl_cnsm.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_entl_cnsm.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN time_off_req_entl_cnsm.time_off_req_dtls_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_entl_cnsm.time_off_req_dtls_oid IS 'Time of request Details OID';


--
-- Name: time_off_req_trd; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.time_off_req_trd (
    time_off_req_trd_oid bigint NOT NULL,
    cur_time_off_req_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    trd_time_off_req_oid bigint
);


ALTER TABLE cpv.time_off_req_trd OWNER TO postgres;

--
-- Name: TABLE time_off_req_trd; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_req_trd IS 'Timeoff Request Traded';


--
-- Name: COLUMN time_off_req_trd.time_off_req_trd_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_trd.time_off_req_trd_oid IS 'Traded Timeoff request OID';


--
-- Name: COLUMN time_off_req_trd.cur_time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_trd.cur_time_off_req_oid IS 'Current year timeoff request OID';


--
-- Name: COLUMN time_off_req_trd.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_trd.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_req_trd.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_trd.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_req_trd.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_trd.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_req_trd.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_trd.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN time_off_req_trd.trd_time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_req_trd.trd_time_off_req_oid IS 'Traded Timeoff request OID';


--
-- Name: time_off_rule_attrs; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.time_off_rule_attrs (
    time_off_rule_attr_oid bigint NOT NULL,
    cal_code character varying(4),
    dspl_code character varying(20),
    daly_caps_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    view_cal_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    vncy_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    minm_time_incr_in_mins smallint,
    sbmt_time_off_in_adv_days_nbr smallint,
    max_req_hrs smallint,
    req_coff_date timestamp without time zone,
    apvl_coff_date timestamp without time zone,
    cncl_coff_date timestamp without time zone,
    sort_ord smallint,
    act_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    pyrl_vrfd_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    eff_date timestamp without time zone,
    bank_time_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    auto_apvl_time_off_flag character varying(1),
    time_off_type_oid bigint,
    expn_date timestamp without time zone,
    used_out_hrs_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    cncl_time_off_in_adv_days_nbr smallint
);


ALTER TABLE cpv.time_off_rule_attrs OWNER TO postgres;

--
-- Name: TABLE time_off_rule_attrs; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_rule_attrs IS 'Timeoff Rule Attributes';


--
-- Name: COLUMN time_off_rule_attrs.time_off_rule_attr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.time_off_rule_attr_oid IS 'Timeoff rule attribute OID';


--
-- Name: COLUMN time_off_rule_attrs.cal_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.cal_code IS 'calendar code';


--
-- Name: COLUMN time_off_rule_attrs.dspl_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.dspl_code IS 'display code';


--
-- Name: COLUMN time_off_rule_attrs.daly_caps_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.daly_caps_flag IS 'daily caps flag';


--
-- Name: COLUMN time_off_rule_attrs.view_cal_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.view_cal_flag IS 'View calender flag';


--
-- Name: COLUMN time_off_rule_attrs.vncy_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.vncy_flag IS 'Vacancy flag';


--
-- Name: COLUMN time_off_rule_attrs.minm_time_incr_in_mins; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.minm_time_incr_in_mins IS 'Minimum time increase in minites';


--
-- Name: COLUMN time_off_rule_attrs.sbmt_time_off_in_adv_days_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.sbmt_time_off_in_adv_days_nbr IS 'Minimum Advance Days Required To Submit This Timeoff';


--
-- Name: COLUMN time_off_rule_attrs.max_req_hrs; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.max_req_hrs IS 'Max reqeust hours';


--
-- Name: COLUMN time_off_rule_attrs.req_coff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.req_coff_date IS 'Request Cutoff Date';


--
-- Name: COLUMN time_off_rule_attrs.apvl_coff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.apvl_coff_date IS 'Appoved date';


--
-- Name: COLUMN time_off_rule_attrs.cncl_coff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.cncl_coff_date IS 'Timeoff Request Cancellation Cutoff Date';


--
-- Name: COLUMN time_off_rule_attrs.sort_ord; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.sort_ord IS 'sort order';


--
-- Name: COLUMN time_off_rule_attrs.act_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.act_flag IS 'Active Flag';


--
-- Name: COLUMN time_off_rule_attrs.pyrl_vrfd_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.pyrl_vrfd_flag IS 'payroll validation flag';


--
-- Name: COLUMN time_off_rule_attrs.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_rule_attrs.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_rule_attrs.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_rule_attrs.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN time_off_rule_attrs.eff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.eff_date IS 'effecive date ';


--
-- Name: COLUMN time_off_rule_attrs.bank_time_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.bank_time_flag IS 'Bank timeoff flag';


--
-- Name: COLUMN time_off_rule_attrs.auto_apvl_time_off_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.auto_apvl_time_off_flag IS 'Auto apporove timeoff flag';


--
-- Name: COLUMN time_off_rule_attrs.time_off_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.time_off_type_oid IS 'Timeoff Type OID';


--
-- Name: COLUMN time_off_rule_attrs.expn_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.expn_date IS 'Expiry Date';


--
-- Name: COLUMN time_off_rule_attrs.used_out_hrs_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.used_out_hrs_flag IS 'Used out hours flag';


--
-- Name: COLUMN time_off_rule_attrs.cncl_time_off_in_adv_days_nbr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_rule_attrs.cncl_time_off_in_adv_days_nbr IS 'This column stores the number of days in advance a time off can be cancelled.';


SET default_tablespace = cpvdata;

--
-- Name: time_off_trd_day_mpng; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.time_off_trd_day_mpng (
    time_off_trd_day_mpng_oid bigint NOT NULL,
    trd_time_off_req_oid bigint NOT NULL,
    time_off_req_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.time_off_trd_day_mpng OWNER TO postgres;

--
-- Name: TABLE time_off_trd_day_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_trd_day_mpng IS 'Timeoff Traded day mapping';


--
-- Name: COLUMN time_off_trd_day_mpng.time_off_trd_day_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_trd_day_mpng.time_off_trd_day_mpng_oid IS 'Timeoff Traded Day Mapping OID';


--
-- Name: COLUMN time_off_trd_day_mpng.trd_time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_trd_day_mpng.trd_time_off_req_oid IS 'Traded Timeoff request OID';


--
-- Name: COLUMN time_off_trd_day_mpng.time_off_req_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_trd_day_mpng.time_off_req_oid IS 'Time off request OID';


--
-- Name: COLUMN time_off_trd_day_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_trd_day_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_trd_day_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_trd_day_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_trd_day_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_trd_day_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_trd_day_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_trd_day_mpng.last_updt_ts IS 'Last Update on Date and Time';


SET default_tablespace = '';

--
-- Name: time_off_type; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.time_off_type (
    time_off_type character varying(10) NOT NULL,
    time_off_type_desc character varying(255),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    time_off_type_oid bigint,
    pyrl_cods_oid bigint,
    dlet_fl character varying(1) DEFAULT 'N'::character varying NOT NULL,
    CONSTRAINT time_off_type_c1 CHECK (((dlet_fl)::text = ANY ((ARRAY['N'::character varying, 'Y'::character varying])::text[])))
);


ALTER TABLE cpv.time_off_type OWNER TO postgres;

--
-- Name: TABLE time_off_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_type IS 'Time off Types';


--
-- Name: COLUMN time_off_type.time_off_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.time_off_type IS 'Timeoff type ';


--
-- Name: COLUMN time_off_type.time_off_type_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.time_off_type_desc IS 'Timeoff type description';


--
-- Name: COLUMN time_off_type.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_type.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_type.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_type.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN time_off_type.time_off_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.time_off_type_oid IS 'Timeoff Type OID';


--
-- Name: COLUMN time_off_type.pyrl_cods_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.pyrl_cods_oid IS 'payrol code oid';


--
-- Name: COLUMN time_off_type.dlet_fl; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type.dlet_fl IS 'default flag';


--
-- Name: time_off_type_temp; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.time_off_type_temp (
    time_off_type character varying(10) NOT NULL,
    time_off_type_desc character varying(255),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL,
    pyrl_code character varying(5),
    time_off_type_oid bigint
);


ALTER TABLE cpv.time_off_type_temp OWNER TO postgres;

--
-- Name: TABLE time_off_type_temp; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.time_off_type_temp IS 'Time off type Temporary';


--
-- Name: COLUMN time_off_type_temp.time_off_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type_temp.time_off_type IS 'Timeoff type ';


--
-- Name: COLUMN time_off_type_temp.time_off_type_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type_temp.time_off_type_desc IS 'Timeoff type description';


--
-- Name: COLUMN time_off_type_temp.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type_temp.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN time_off_type_temp.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type_temp.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN time_off_type_temp.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type_temp.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN time_off_type_temp.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type_temp.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN time_off_type_temp.pyrl_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type_temp.pyrl_code IS 'payrol code';


--
-- Name: COLUMN time_off_type_temp.time_off_type_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.time_off_type_temp.time_off_type_oid IS 'Timeoff Type OID';


SET default_tablespace = cpvdata;

--
-- Name: user_pref; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.user_pref (
    user_pref_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    sc_role_oid bigint NOT NULL,
    orgn_unit_oid bigint,
    act_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL
);


ALTER TABLE cpv.user_pref OWNER TO postgres;

--
-- Name: TABLE user_pref; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.user_pref IS 'CSX have updated the requirement on the way the organization hierarchy is displayed on EPS. As per the requirement.
Employee can save the default orgunits to be shown on all the screen he navigates to.
Employee can be assigned with multiple roles and he has option to change from one role to another. Employee can set default orgunit preference per each role he is associated with
At any time if the role is unassigned to the employee then the preference set for the unassigned role should be deactivated.';


--
-- Name: COLUMN user_pref.user_pref_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.user_pref_oid IS 'Unique Identification of the user preference';


--
-- Name: COLUMN user_pref.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.empl_mstr_oid IS 'Employee to who can have the preferences';


--
-- Name: COLUMN user_pref.sc_role_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.sc_role_oid IS 'Role of an employeee to which the preferences are to be saved.';


--
-- Name: COLUMN user_pref.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.orgn_unit_oid IS 'The default Orgunit prefered by USER to be shown on UI.';


--
-- Name: COLUMN user_pref.act_flag; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.act_flag IS 'Default Value is "Y". The flag to identify it the user preference is active.';


--
-- Name: COLUMN user_pref.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.crtd_ts IS 'Created By User ID';


--
-- Name: COLUMN user_pref.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.crtd_user_id IS 'Created Timestamp';


--
-- Name: COLUMN user_pref.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.last_updt_ts IS 'Updated By User ID';


--
-- Name: COLUMN user_pref.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.user_pref.last_updt_user_id IS 'Last updated timestamp';


SET default_tablespace = '';

--
-- Name: vac_prof; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.vac_prof (
    vac_prof_oid bigint NOT NULL,
    vac_prof_name character varying(50) NOT NULL,
    vac_prof_desc character varying(255),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.vac_prof OWNER TO postgres;

--
-- Name: TABLE vac_prof; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_prof IS 'Vacation Profile Master';


--
-- Name: COLUMN vac_prof.vac_prof_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_prof.vac_prof_oid IS 'Vacation Profile OID';


--
-- Name: COLUMN vac_prof.vac_prof_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_prof.vac_prof_name IS 'Vacation Profile Name';


--
-- Name: COLUMN vac_prof.vac_prof_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_prof.vac_prof_desc IS 'Vacation Profile Description';


--
-- Name: COLUMN vac_prof.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_prof.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN vac_prof.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_prof.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN vac_prof.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_prof.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN vac_prof.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_prof.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: vac_rstr; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.vac_rstr (
    vac_rstr_oid bigint NOT NULL,
    orgn_unit_oid bigint,
    rstr_name character varying(20) NOT NULL,
    rstr_desc character varying(255),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    dflt_vac_rstr_oid bigint,
    lock_ts timestamp without time zone,
    lock_by_id character varying(10),
    allw_unas_week character varying(1) DEFAULT 'N'::character varying NOT NULL,
    lock_type character varying(2)
);


ALTER TABLE cpv.vac_rstr OWNER TO postgres;

--
-- Name: TABLE vac_rstr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_rstr IS 'Vacation Roster Master';


--
-- Name: COLUMN vac_rstr.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.vac_rstr_oid IS 'Vacation Roster OID';


--
-- Name: COLUMN vac_rstr.orgn_unit_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.orgn_unit_oid IS 'Orgunit Id';


--
-- Name: COLUMN vac_rstr.rstr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.rstr_name IS 'Vacation Roster nme';


--
-- Name: COLUMN vac_rstr.rstr_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.rstr_desc IS 'vacation roster description';


--
-- Name: COLUMN vac_rstr.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN vac_rstr.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN vac_rstr.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN vac_rstr.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: COLUMN vac_rstr.dflt_vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.dflt_vac_rstr_oid IS 'default vacation roster when seniority roster mis match(VAC_RSTR_ID)';


--
-- Name: COLUMN vac_rstr.lock_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.lock_ts IS 'Time of when the locking is done';


--
-- Name: COLUMN vac_rstr.lock_by_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.lock_by_id IS 'Admin User ID who locked the vacation list';


--
-- Name: COLUMN vac_rstr.allw_unas_week; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.allw_unas_week IS 'Flag to allow or not allow evaluators to unassign weeks';


--
-- Name: COLUMN vac_rstr.lock_type; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr.lock_type IS ' The lock can be done for Admin when he is trouble shooting the awarding or when Evaliuator is runnning the awarding';


--
-- Name: vac_rstr_daly_mp; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.vac_rstr_daly_mp (
    rstr_daly_max_off_oid bigint NOT NULL,
    vac_rstr_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.vac_rstr_daly_mp OWNER TO postgres;

--
-- Name: TABLE vac_rstr_daly_mp; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_rstr_daly_mp IS ' This changes are to support Vacation list directly attached with Roster Daily Max Off (Caps) tablle.This changes are to support Vacation list directly attached with Roster Daily Max Off (Caps) tablle	';


--
-- Name: COLUMN vac_rstr_daly_mp.rstr_daly_max_off_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_daly_mp.rstr_daly_max_off_oid IS 'Vacation Vacation Caps OID mapping';


--
-- Name: COLUMN vac_rstr_daly_mp.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_daly_mp.vac_rstr_oid IS 'Vacation Roster OID';


--
-- Name: COLUMN vac_rstr_daly_mp.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_daly_mp.crtd_user_id IS 'Created by User ID';


--
-- Name: COLUMN vac_rstr_daly_mp.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_daly_mp.crtd_ts IS 'Created Date and time';


--
-- Name: COLUMN vac_rstr_daly_mp.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_daly_mp.last_updt_user_id IS 'Last updated By User ID';


--
-- Name: COLUMN vac_rstr_daly_mp.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_daly_mp.last_updt_ts IS 'Last updated Date and Time';


--
-- Name: vac_rstr_eval_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.vac_rstr_eval_mpng (
    vac_rstr_oid bigint NOT NULL,
    empl_mstr_oid bigint NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.vac_rstr_eval_mpng OWNER TO postgres;

--
-- Name: TABLE vac_rstr_eval_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_rstr_eval_mpng IS 'Vacation Roster and Evaluator Mapping - VS need a feature to assign certain employees to vacation rosters are Evaluators. An evaluator is like manger responsible for processing the next year awarding and capacity planning for a vacation list';


--
-- Name: COLUMN vac_rstr_eval_mpng.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_eval_mpng.vac_rstr_oid IS 'Vacation Roster Unique ID(refers VAC_RSTR)';


--
-- Name: COLUMN vac_rstr_eval_mpng.empl_mstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_eval_mpng.empl_mstr_oid IS 'Employee Master OID referece of the employee selected as Evaluator for the vacation roster(Refers to Empl_MS)';


--
-- Name: COLUMN vac_rstr_eval_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_eval_mpng.crtd_user_id IS 'Created by User ID';


--
-- Name: COLUMN vac_rstr_eval_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_eval_mpng.crtd_ts IS 'Created Date and time';


--
-- Name: COLUMN vac_rstr_eval_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_eval_mpng.last_updt_user_id IS 'Last updated By User ID';


--
-- Name: COLUMN vac_rstr_eval_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_eval_mpng.last_updt_ts IS 'Last updated Date and Time';


--
-- Name: vac_rstr_locl_cher_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.vac_rstr_locl_cher_mpng (
    vac_rstr_locl_cher_mpng_oid bigint NOT NULL,
    vac_rstr_oid bigint,
    locl_cher_ttl_oid bigint NOT NULL,
    crtd_user_id character varying(10),
    crtd_ts timestamp without time zone DEFAULT statement_timestamp(),
    last_updt_user_id character varying(10),
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp()
);


ALTER TABLE cpv.vac_rstr_locl_cher_mpng OWNER TO postgres;

--
-- Name: TABLE vac_rstr_locl_cher_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_rstr_locl_cher_mpng IS 'Vacation Roster Local Chairman mapping';


--
-- Name: COLUMN vac_rstr_locl_cher_mpng.vac_rstr_locl_cher_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_locl_cher_mpng.vac_rstr_locl_cher_mpng_oid IS 'Vacation Roster Local chairman mapping OID';


--
-- Name: COLUMN vac_rstr_locl_cher_mpng.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_locl_cher_mpng.vac_rstr_oid IS 'Vacation Roster OID';


--
-- Name: COLUMN vac_rstr_locl_cher_mpng.locl_cher_ttl_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_locl_cher_mpng.locl_cher_ttl_oid IS 'Vacation Roster Local chairman mapping OID';


--
-- Name: COLUMN vac_rstr_locl_cher_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_locl_cher_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN vac_rstr_locl_cher_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_locl_cher_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN vac_rstr_locl_cher_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_locl_cher_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN vac_rstr_locl_cher_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_locl_cher_mpng.last_updt_ts IS 'Last Update on Date and Time';


SET default_tablespace = cpvdata;

--
-- Name: vac_rstr_prof_rule_cond; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.vac_rstr_prof_rule_cond (
    vac_rstr_oid bigint NOT NULL,
    cond_valu character varying(500) NOT NULL,
    rule_attr_name character varying(30) NOT NULL,
    rule_opr_name character varying(30) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.vac_rstr_prof_rule_cond OWNER TO postgres;

--
-- Name: TABLE vac_rstr_prof_rule_cond; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_rstr_prof_rule_cond IS 'Vacation Roster Profile Rule Condition';


--
-- Name: COLUMN vac_rstr_prof_rule_cond.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_prof_rule_cond.vac_rstr_oid IS 'Vacation Roster OID';


--
-- Name: COLUMN vac_rstr_prof_rule_cond.cond_valu; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_prof_rule_cond.cond_valu IS 'Condition can become more complex so we may have multiple values or multiple condition can be addeded';


--
-- Name: COLUMN vac_rstr_prof_rule_cond.rule_attr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_prof_rule_cond.rule_attr_name IS 'Rule attribute Name';


--
-- Name: COLUMN vac_rstr_prof_rule_cond.rule_opr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_prof_rule_cond.rule_opr_name IS 'Rule Operator Name';


--
-- Name: COLUMN vac_rstr_prof_rule_cond.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_prof_rule_cond.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN vac_rstr_prof_rule_cond.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_prof_rule_cond.crtd_ts IS 'Created on Time Stamp';


--
-- Name: vac_rstr_rule_attr; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.vac_rstr_rule_attr (
    rule_attr_name character varying(30) NOT NULL,
    rule_attr_desc character varying(50) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.vac_rstr_rule_attr OWNER TO postgres;

--
-- Name: TABLE vac_rstr_rule_attr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_rstr_rule_attr IS 'Vacation Roster Rule Attribute';


--
-- Name: COLUMN vac_rstr_rule_attr.rule_attr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_attr.rule_attr_name IS 'Rule attribute Name';


--
-- Name: COLUMN vac_rstr_rule_attr.rule_attr_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_attr.rule_attr_desc IS 'Rule Attribute Description';


--
-- Name: COLUMN vac_rstr_rule_attr.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_attr.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN vac_rstr_rule_attr.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_attr.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN vac_rstr_rule_attr.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_attr.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN vac_rstr_rule_attr.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_attr.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: vac_rstr_rule_opr; Type: TABLE; Schema: cpv; Owner: postgres; Tablespace: cpvdata
--

CREATE TABLE cpv.vac_rstr_rule_opr (
    rule_opr_name character varying(30) NOT NULL,
    rule_opr_desc character varying(50) NOT NULL,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone NOT NULL
);


ALTER TABLE cpv.vac_rstr_rule_opr OWNER TO postgres;

--
-- Name: TABLE vac_rstr_rule_opr; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_rstr_rule_opr IS 'Vacation Roster Rule Operators';


--
-- Name: COLUMN vac_rstr_rule_opr.rule_opr_name; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_opr.rule_opr_name IS 'Rule Operator Name';


--
-- Name: COLUMN vac_rstr_rule_opr.rule_opr_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_opr.rule_opr_desc IS 'Rule Operator Description';


--
-- Name: COLUMN vac_rstr_rule_opr.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_opr.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN vac_rstr_rule_opr.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_opr.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN vac_rstr_rule_opr.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_opr.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN vac_rstr_rule_opr.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_rule_opr.last_updt_ts IS 'Last Update on Date and Time';


SET default_tablespace = '';

--
-- Name: vac_rstr_vac_prof_mpng; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.vac_rstr_vac_prof_mpng (
    vac_rstr_vac_prof_mpng_oid bigint NOT NULL,
    vac_prof_oid bigint NOT NULL,
    vac_rstr_oid bigint NOT NULL,
    eff_date timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    expy_date timestamp without time zone,
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.vac_rstr_vac_prof_mpng OWNER TO postgres;

--
-- Name: TABLE vac_rstr_vac_prof_mpng; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.vac_rstr_vac_prof_mpng IS 'Vacation Roster Vacation Proflie Mapping';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.vac_rstr_vac_prof_mpng_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.vac_rstr_vac_prof_mpng_oid IS 'Vacation Roster to Vacation profile Maping OID';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.vac_prof_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.vac_prof_oid IS 'Vacation Profile OID';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.vac_rstr_oid; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.vac_rstr_oid IS 'Vacation Roster OID';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.eff_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.eff_date IS 'effecive date ';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.expy_date; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.expy_date IS 'Expiry Date';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN vac_rstr_vac_prof_mpng.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.vac_rstr_vac_prof_mpng.last_updt_ts IS 'Last Update on Date and Time';


--
-- Name: work_grp_code; Type: TABLE; Schema: cpv; Owner: postgres
--

CREATE TABLE cpv.work_grp_code (
    work_grp_code character varying(20) NOT NULL,
    hol_grp_code character varying(20),
    work_grp_desc character varying(100),
    crtd_user_id character varying(10) NOT NULL,
    crtd_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL,
    last_updt_user_id character varying(10) NOT NULL,
    last_updt_ts timestamp without time zone DEFAULT statement_timestamp() NOT NULL
);


ALTER TABLE cpv.work_grp_code OWNER TO postgres;

--
-- Name: TABLE work_grp_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON TABLE cpv.work_grp_code IS 'Work Group Codes';


--
-- Name: COLUMN work_grp_code.work_grp_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.work_grp_code.work_grp_code IS 'Work group code';


--
-- Name: COLUMN work_grp_code.hol_grp_code; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.work_grp_code.hol_grp_code IS 'Holiday Group Code';


--
-- Name: COLUMN work_grp_code.work_grp_desc; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.work_grp_code.work_grp_desc IS 'Work group Description';


--
-- Name: COLUMN work_grp_code.crtd_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.work_grp_code.crtd_user_id IS 'Created By User ID';


--
-- Name: COLUMN work_grp_code.crtd_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.work_grp_code.crtd_ts IS 'Created on Time Stamp';


--
-- Name: COLUMN work_grp_code.last_updt_user_id; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.work_grp_code.last_updt_user_id IS 'Last Update by User ID';


--
-- Name: COLUMN work_grp_code.last_updt_ts; Type: COMMENT; Schema: cpv; Owner: postgres
--

COMMENT ON COLUMN cpv.work_grp_code.last_updt_ts IS 'Last Update on Date and Time';


--
-- Data for Name: allc_chng_cmnt; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.allc_chng_cmnt (allc_chng_cmnt_oid, vac_rstr_oid, year, chng_src, cmnt_txt, crtd_user_id, crtd_ts) FROM stdin;
\.


--
-- Data for Name: bank_time_neut_code; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.bank_time_neut_code (bank_time_neut_code_oid, orgn_unit_bank_time_oid, orgn_unit_neut_code_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: bank_time_off_rule_attrs; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.bank_time_off_rule_attrs (time_off_rule_attr_oid, bank_time_off_rule_attrs_oid, max_allw_bank_time, minm_allw_bank_time, max_allw_wdrw_time, mkup_dur_in_days, max_allw_dep_time, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, time_off_use_ind) FROM stdin;
\.


--
-- Data for Name: bid_open; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.bid_open (bid_open_oid, bid_open_date, bid_strt_date, bid_end_date, bid_stat_flag, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, orgn_unit_oid) FROM stdin;
\.


--
-- Data for Name: bid_reqs; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.bid_reqs (empl_mstr_oid, bid_open_oid, bid_req_oid, bid_req_stat_flag, bid_reqs_date, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, unsc_days, pty_nbr, time_off_req_oid, bid_awrd_date) FROM stdin;
\.


--
-- Data for Name: bid_reqs_cmnt; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.bid_reqs_cmnt (bid_req_oid, bid_req_cmnt_oid, cmnt, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: bid_reqs_time_off_req_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.bid_reqs_time_off_req_mpng (bid_reqs_time_off_req_mpng_oid, bid_req_oid, time_off_req_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: chng_hist; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.chng_hist (oid, table_id, table_oid, organization_unit_oid, tenant_oid, business_key, screen_name, action, effective_at, created_at, created_by, created_user_role) FROM stdin;
\.


--
-- Data for Name: chng_hist_cmnt; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.chng_hist_cmnt (oid, comment_string, created_at, created_by, created_user_role, change_history_oid) FROM stdin;
\.


--
-- Data for Name: chng_hist_data; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.chng_hist_data (oid, data_string) FROM stdin;
\.


--
-- Data for Name: empl_bank_time; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_bank_time (empl_bank_time_oid, empl_mstr_oid, work_date, apvl_stat_ind, apvd_by, apvl_cmnt, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, time_off_type_oid, strt_ts, end_ts, pyrl_vrfd_ind) FROM stdin;
\.


--
-- Data for Name: empl_bank_time_cmnt; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_bank_time_cmnt (empl_bank_time_oid, empl_bank_time_cmnt_oid, cmnt, mgr_flag, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: empl_entl; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_entl (empl_mstr_oid, year, entl_type, entl_hrs, qlfn_ind, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: empl_hol_pos_pref; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_hol_pos_pref (empl_hol_pos_pref_oid, empl_mstr_oid, empl_pos_oid, ord_seq, shft_pref, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: empl_hol_qlfn; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_hol_qlfn (empl_hol_qlfn_oid, empl_mstr_oid, evnt_ts, eff_ts, clrk_type, tecs_dist, tecs_sub_dist, tecs_asmt, tecs_crft_code, tran_code, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: empl_ms; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_ms (fir_name, midl_name, last_name, ph_nbr, empl_mstr_oid, user_id, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, empl_id, empl_src_sys_sent_ts, empl_src_sys_msg_id, hr_stat_act, hr_stat_name, hr_stat_lgcy_id, sc_prof_role_rule_oid, home_stn_code, empl_orgn_unit_oid) FROM stdin;
\.


--
-- Data for Name: empl_pos; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_pos (empl_pos_oid, pos_desc, stat_ind, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, dist_code, sub_dist_code, bord_id, crft_type, crew_id, asmt_type) FROM stdin;
\.


--
-- Data for Name: empl_pos_dtls; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_pos_dtls (empl_pos_dtls_oid, empl_pos_oid, shft_ind, pay_pos_code, pos_strt_time, pos_end_time, mon_flag, tues_flag, wed_flag, thur_flag, fri_flag, sat_flag, sun_flag, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: empl_pos_sch; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_pos_sch (empl_pos_sch_oid, cycl_strt_date, rank, shft, acty, strt_at_time, end_at_time, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, empl_pos_oid, unpd_brk_dur, eff_date, expy_date) FROM stdin;
\.


--
-- Data for Name: empl_role_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_role_mpng (empl_role_mpng_oid, empl_mstr_oid, dflt_role, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, sc_role_oid, role_rank) FROM stdin;
\.


--
-- Data for Name: empl_role_org_unit_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_role_org_unit_mpng (empl_role_org_unit_mpng_oid, empl_role_mpng_oid, orgn_unit_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: empl_vac; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_vac (empl_mstr_oid, empl_vac_oid, work_date, apvl_stat_ind, chng_stat_ind, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: empl_vac_flex_chocs; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_vac_flex_chocs (empl_vac_flex_choc_oid, empl_mstr_oid, rptg_year, flex_sel_flag, empl_sel_rtmt_flag, excl_from_vac_sch_flag, flex_wks_cnt, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, tem_ph_nbr, mgr_reqd_flag) FROM stdin;
\.


--
-- Data for Name: empl_vac_sel; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.empl_vac_sel (empl_vac_sel_oid, empl_mstr_oid, rptg_year, sel_grp_nbr, sel_nbr, wks_take_cnt, wks_allw_cnt, sel_strt_date, sel_end_date, flex_take_cnt, flex_allw_cnt, empl_sel_flag, plan_cnfd_flag, pers_day_flag, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, empl_cmnt, awrd_cmnt, awrd_stat, awrd_by_user_id, mgr_reqd_flag, sch_stat_ind, sch_stat_cmnt, sch_user_id, awrd_ntfn_sent_stat_flag, awrd_ntfn_tmst) FROM stdin;
\.


--
-- Data for Name: entl_type_for_pay_code_ctgy; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.entl_type_for_pay_code_ctgy (entl_type_oid, pyrl_cods_oid, entl_type, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, pty_nbr) FROM stdin;
\.


--
-- Data for Name: hol_asmt; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.hol_asmt (hol_asmt_oid, empl_mstr_oid, hol_grp_code, evnt_ts, eff_ts, job_trax_pos_id, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: hol_dtls; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.hol_dtls (hol_dtls_oid, rptg_year, hol_mo, hol_day, hol_name, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: hol_grp_code; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.hol_grp_code (hol_grp_code, hol_grp_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: hol_pos_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.hol_pos_mpng (hol_pos_mpng_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, empl_pos_oid, hol_dtls_oid) FROM stdin;
\.


--
-- Data for Name: hol_prof; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.hol_prof (hol_prof_oid, agrm_code, home_stn_code, crft_pos_code, uni_code, hol_desc, hol_date, hol_year, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: hol_sign_up_empl; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.hol_sign_up_empl (hol_sign_up_empl_oid, prtn_flag, dbl_flag, splt_flag, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, ord_seq, hol_dtls_oid, reg_asmt_flag, empl_mstr_oid) FROM stdin;
\.


--
-- Data for Name: hol_sign_up_empl_pos_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.hol_sign_up_empl_pos_mpng (hol_sign_up_empl_pos_mpng_oid, hol_sign_up_empl_oid, hol_pos_mpng_oid, ord_seq, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, shft_pref_nbr) FROM stdin;
\.


--
-- Data for Name: hol_sign_up_empl_shft_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.hol_sign_up_empl_shft_mpng (hol_sign_up_empl_shft_mpng_oid, hol_sign_up_empl_oid, shft_pref_name, shft_pref_valu, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: locl_cher_ttl; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.locl_cher_ttl (locl_cher_ttl_oid, locl_cher_key, locl_cher_ttl_valu, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: minm_stfg; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.minm_stfg (minm_stfg_oid, vac_rstr_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, staf_reqd_date) FROM stdin;
\.


--
-- Data for Name: minm_stfg_shft_dtls; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.minm_stfg_shft_dtls (minm_stfg_shft_dtls_oid, minm_stfg_oid, shft_nbr, shft_propagate_flag, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, staf_reqd_cnt) FROM stdin;
\.


--
-- Data for Name: next_year_vac_awrd; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.next_year_vac_awrd (next_year_vac_awrd_oid, vac_rstr_oid, year, awrd_proc_stat, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, awrd_proc_stat_cmnt, proc_stat, cnfl_hndl_stgy_code, sch_stat_ind, sch_stat_cmnt, sch_user_id, awrd_ntfn_tmst) FROM stdin;
\.


--
-- Data for Name: orgn_strc; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.orgn_strc (orgn_strc_oid, orgn_name, orgn_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, orgn_strc_type_oid, orgn_strc_grp_id) FROM stdin;
\.


--
-- Data for Name: orgn_strc_type; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.orgn_strc_type (orgn_strc_type, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, orgn_strc_desc, ord_id, grp_id, orgn_strc_type_oid) FROM stdin;
\.


--
-- Data for Name: orgn_unit; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.orgn_unit (orgn_unit_oid, orgn_strc_par_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, orgn_strc_oid) FROM stdin;
\.


--
-- Data for Name: orgn_unit_role_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.orgn_unit_role_mpng (orgn_unit_role_mpng_oid, orgn_unit_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, sc_role_oid) FROM stdin;
\.


--
-- Data for Name: orgn_unit_rstr_daly_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.orgn_unit_rstr_daly_mpng (orgn_unit_rstr_daly_mpng_oid, rstr_daly_max_off_oid, orgn_unit_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: orgn_unit_rstr_rule_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.orgn_unit_rstr_rule_mpng (rstr_rule_attr_oid, crtd_user_id, orgn_unit__mpng_oid, crtd_ts, last_updt_user_id, last_updt_ts, orgn_unit_rstr_rule_mpng_oid) FROM stdin;
\.


--
-- Data for Name: orgn_unit_time_off_type_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.orgn_unit_time_off_type_mpng (orgn_unit_time_off_type_mp_oid, orgn_unit_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, time_off_type_oid) FROM stdin;
\.


--
-- Data for Name: over_time_sign_up_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.over_time_sign_up_mpng (over_time_sign_up_oid, empl_mstr_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, sign_up_flag) FROM stdin;
\.


--
-- Data for Name: peak_week_dsgn; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.peak_week_dsgn (peak_week_oid, vac_rstr_oid, allw_unsc_wks_per_pers_cnt, allc_type, year, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, unsc_wks_perc, auto_allc_upd_dsdb_fl) FROM stdin;
\.


--
-- Data for Name: peak_week_dsgn_dtls; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.peak_week_dsgn_dtls (peak_week_dtls_oid, peak_week_oid, week_nbr, strt_date, end_date, max_allcs_cnt, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: pos_empl_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.pos_empl_mpng (empl_pos_mpng_oid, empl_mstr_oid, empl_pos_oid, stra_time_amt, oth_time_amt, over_time_amt, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, vac_rstr_oid, eff_date, expy_date, rcd_type_code, rank_ts, sen_date, sen_rank) FROM stdin;
\.


--
-- Data for Name: pos_fill; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.pos_fill (pos_fill_oid, empl_mstr_oid, evnt_ts, eff_ts, job_trax_pos_id, shft_nbr, cncl_ind, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: pyrl_cods; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.pyrl_cods (pyrl_code, pay_role_code_ctgy_name, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, pyrl_cods_oid, time_trax_org_unit, time_trax_oid, entl_vldn_reqd_flag) FROM stdin;
\.


--
-- Data for Name: qz_blob_triggers; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
\.


--
-- Data for Name: qz_calendars; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_calendars (sched_name, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: qz_cron_triggers; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
\.


--
-- Data for Name: qz_fired_triggers; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_nonconcurrent, requests_recovery) FROM stdin;
\.


--
-- Data for Name: qz_job_details; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: qz_locks; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_locks (sched_name, lock_name) FROM stdin;
\.


--
-- Data for Name: qz_paused_trigger_grps; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
\.


--
-- Data for Name: qz_scheduler_state; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
\.


--
-- Data for Name: qz_simple_triggers; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: qz_simprop_triggers; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
\.


--
-- Data for Name: qz_triggers; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.qz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
\.


--
-- Data for Name: rstr_daly_max_off; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.rstr_daly_max_off (rstr_daly_max_off_oid, max_off_date, vac_fill_flag, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, wkly_caps_lmt, daly_caps_lmt, shft_1_caps_lmt, shft_2_caps_lmt, shft_3_caps_lmt) FROM stdin;
\.


--
-- Data for Name: rstr_rule_attrs; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.rstr_rule_attrs (rstr_rule_attr_oid, sch_type, next_year_flex_sch_allw_flag, next_year_pers_day_sch_allw_fl, cur_year_bid_allw_flag, next_year_vac_plan_clse_date, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, week_strt_day, rstc_apvl_by_caps_flag, sys_admin_emal_addr, bid_proc_btch_job_run_day, sngl_day_req_coff_date, sngl_day_aprv_coff_date, allw_unpl_day_befr_sch_day_fl, all_days_same_vac_week_fir_fl, sngl_day_vacs_be_used_code, sngl_week_cnvn_allw_date, sw_from_week_to_day, eff_date, expy_date, sch_bid_code, cap_type_ind, next_year_vac_plan_strt_date, fir_week_strt_on_date, last_week_strt_on_date, hol_infc_key, hol_sign_up_type, one_wk_entl_max_sch_wks, two_wk_entl_max_sch_wks, thre_wk_entl_max_sch_wks, four_wk_entl_max_sch_wks, five_wk_entl_max_sch_wks, one_wk_entl_max_unsc_wks, two_wk_entl_max_unsc_wks, thre_wk_entl_max_unsc_wks, four_wk_entl_max_unsc_wks, five_wk_entl_max_unsc_wks, bid_time_off_type_oid, entl_type, vac_prof_oid, rstr_rule_attrs, vac_rstr_bld_date) FROM stdin;
\.


--
-- Data for Name: sc_caby; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_caby (caby_name, caby_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: sc_prof_caby_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_prof_caby_mpng (caby_name, crtd_user_id, crtd_ts, sc_prof_role_rule_oid) FROM stdin;
\.


--
-- Data for Name: sc_prof_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_prof_mpng (prof_name, orgn_unit_oid, crtd_user_id, crtd_ts, role_rank) FROM stdin;
\.


--
-- Data for Name: sc_prof_role_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_prof_role_mpng (sc_role_caby_mpng_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, dflt_role_flag, sc_role_oid, sc_prof_role_rule_oid, role_rank) FROM stdin;
\.


--
-- Data for Name: sc_prof_role_rule; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_prof_role_rule (prof_role_rule_name, prof_desc, rank_ts, role_rule_nbr, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, sc_prof_role_rule_oid) FROM stdin;
\.


--
-- Data for Name: sc_prof_rule_cond; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_prof_rule_cond (prof_name, rule_attr_name, cond_valu, rule_opr_name, crtd_user_id, crtd_ts, sc_prof_role_rule_oid) FROM stdin;
\.


--
-- Data for Name: sc_role; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_role (role_name, role_desc, crtd_ts, crtd_user_id, last_updt_ts, last_updt_user_id, all_orgn_unit_flag, sc_role_oid, role_type) FROM stdin;
\.


--
-- Data for Name: sc_role_caby_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_role_caby_mpng (sc_role_caby_mpng_oid, caby_name, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, sc_role_oid) FROM stdin;
\.


--
-- Data for Name: sc_role_glbl_prop; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_role_glbl_prop (sc_role_glbl_prop_oid, gobal_key, glbl_valu, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, sc_role_oid) FROM stdin;
\.


--
-- Data for Name: sc_rule_attr; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_rule_attr (rule_attr_name, rule_attr_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, rule_attr_type) FROM stdin;
\.


--
-- Data for Name: sc_rule_attr_opr; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_rule_attr_opr (rule_attr_name, rule_opr_name, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: sc_rule_opr; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sc_rule_opr (rule_opr_name, rule_opr_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: sen_rstr_dump; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.sen_rstr_dump (sen_rstr_cod, sen_rstr_type, crft_pos_code, sen_rstr_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: spcl_sch; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.spcl_sch (spcl_sch_oid, sch_date, empl_mstr_oid, empl_stat, proc_flag, empl_pos_oid, crtd_user_oid, crtd_ts, last_updt_user_id, last_updt_ts, rank, shft, strt_at_time, end_at_time, unpd_brk_dur) FROM stdin;
\.


--
-- Data for Name: time_off_req; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_req (time_off_req_oid, empl_mstr_oid, bid_req_stat, req_strt_ts, req_end_ts, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, time_off_type_oid, apvd_by, pyrl_vrfd_ind, week_flag, sch_flag, apvr_empl_mstr_oid, time_trax_evnt_oid, time_trax_sent_flag, trad_time_off_req_oid, splt_par_req_oid, next_year_awrd_flag, mgr_req_flag) FROM stdin;
\.


--
-- Data for Name: time_off_req_cmnt; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_req_cmnt (time_off_req_oid, time_off_req_cmnt_oid, cmnt, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, mgr_flag) FROM stdin;
\.


--
-- Data for Name: time_off_req_dtls; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_req_dtls (time_off_req_dtls_oid, time_off_req_oid, req_strt_ts, req_end_ts, shft_nbr, cap_date, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, time_trax_sent_flag, time_trax_evnt_oid, unpd_brk_dur) FROM stdin;
\.


--
-- Data for Name: time_off_req_entl_cnsm; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_req_entl_cnsm (time_off_req_entl_cnsm_oid, entl_type, cnsm_mins, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, time_off_req_dtls_oid) FROM stdin;
\.


--
-- Data for Name: time_off_req_trd; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_req_trd (time_off_req_trd_oid, cur_time_off_req_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, trd_time_off_req_oid) FROM stdin;
\.


--
-- Data for Name: time_off_rule_attrs; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_rule_attrs (time_off_rule_attr_oid, cal_code, dspl_code, daly_caps_flag, view_cal_flag, vncy_flag, minm_time_incr_in_mins, sbmt_time_off_in_adv_days_nbr, max_req_hrs, req_coff_date, apvl_coff_date, cncl_coff_date, sort_ord, act_flag, pyrl_vrfd_flag, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, eff_date, bank_time_flag, auto_apvl_time_off_flag, time_off_type_oid, expn_date, used_out_hrs_flag, cncl_time_off_in_adv_days_nbr) FROM stdin;
\.


--
-- Data for Name: time_off_trd_day_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_trd_day_mpng (time_off_trd_day_mpng_oid, trd_time_off_req_oid, time_off_req_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: time_off_type; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_type (time_off_type, time_off_type_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, time_off_type_oid, pyrl_cods_oid, dlet_fl) FROM stdin;
\.


--
-- Data for Name: time_off_type_temp; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.time_off_type_temp (time_off_type, time_off_type_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, pyrl_code, time_off_type_oid) FROM stdin;
\.


--
-- Data for Name: user_pref; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.user_pref (user_pref_oid, empl_mstr_oid, sc_role_oid, orgn_unit_oid, act_flag, crtd_ts, crtd_user_id, last_updt_ts, last_updt_user_id) FROM stdin;
\.


--
-- Data for Name: vac_prof; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_prof (vac_prof_oid, vac_prof_name, vac_prof_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: vac_rstr; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_rstr (vac_rstr_oid, orgn_unit_oid, rstr_name, rstr_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts, dflt_vac_rstr_oid, lock_ts, lock_by_id, allw_unas_week, lock_type) FROM stdin;
\.


--
-- Data for Name: vac_rstr_daly_mp; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_rstr_daly_mp (rstr_daly_max_off_oid, vac_rstr_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: vac_rstr_eval_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_rstr_eval_mpng (vac_rstr_oid, empl_mstr_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: vac_rstr_locl_cher_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_rstr_locl_cher_mpng (vac_rstr_locl_cher_mpng_oid, vac_rstr_oid, locl_cher_ttl_oid, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: vac_rstr_prof_rule_cond; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_rstr_prof_rule_cond (vac_rstr_oid, cond_valu, rule_attr_name, rule_opr_name, crtd_user_id, crtd_ts) FROM stdin;
\.


--
-- Data for Name: vac_rstr_rule_attr; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_rstr_rule_attr (rule_attr_name, rule_attr_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: vac_rstr_rule_opr; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_rstr_rule_opr (rule_opr_name, rule_opr_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: vac_rstr_vac_prof_mpng; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.vac_rstr_vac_prof_mpng (vac_rstr_vac_prof_mpng_oid, vac_prof_oid, vac_rstr_oid, eff_date, expy_date, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Data for Name: work_grp_code; Type: TABLE DATA; Schema: cpv; Owner: postgres
--

COPY cpv.work_grp_code (work_grp_code, hol_grp_code, work_grp_desc, crtd_user_id, crtd_ts, last_updt_user_id, last_updt_ts) FROM stdin;
\.


--
-- Name: allc_chng_cmnt allc_chng_cmnt_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.allc_chng_cmnt
    ADD CONSTRAINT allc_chng_cmnt_pkey PRIMARY KEY (allc_chng_cmnt_oid);


--
-- Name: bank_time_neut_code bank_time_neut_code_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bank_time_neut_code
    ADD CONSTRAINT bank_time_neut_code_pkey PRIMARY KEY (bank_time_neut_code_oid);


--
-- Name: bank_time_off_rule_attrs bank_time_off_rule_attrs_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bank_time_off_rule_attrs
    ADD CONSTRAINT bank_time_off_rule_attrs_pkey PRIMARY KEY (time_off_rule_attr_oid, bank_time_off_rule_attrs_oid);


--
-- Name: bid_open bid_open_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_open
    ADD CONSTRAINT bid_open_pkey PRIMARY KEY (bid_open_oid);


--
-- Name: bid_reqs_cmnt bid_reqs_cmnt_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs_cmnt
    ADD CONSTRAINT bid_reqs_cmnt_pkey PRIMARY KEY (bid_req_oid, bid_req_cmnt_oid);


--
-- Name: bid_reqs bid_reqs_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs
    ADD CONSTRAINT bid_reqs_pkey PRIMARY KEY (bid_req_oid);


--
-- Name: bid_reqs_time_off_req_mpng bid_reqs_time_off_req_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs_time_off_req_mpng
    ADD CONSTRAINT bid_reqs_time_off_req_mpng_pkey PRIMARY KEY (bid_reqs_time_off_req_mpng_oid);


--
-- Name: chng_hist_cmnt chng_hist_cmnt_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.chng_hist_cmnt
    ADD CONSTRAINT chng_hist_cmnt_pkey PRIMARY KEY (oid);


--
-- Name: chng_hist_data chng_hist_data_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.chng_hist_data
    ADD CONSTRAINT chng_hist_data_pkey PRIMARY KEY (oid);


--
-- Name: chng_hist chng_hist_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.chng_hist
    ADD CONSTRAINT chng_hist_pkey PRIMARY KEY (oid);


--
-- Name: empl_bank_time_cmnt empl_bank_time_cmnt_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_bank_time_cmnt
    ADD CONSTRAINT empl_bank_time_cmnt_pkey PRIMARY KEY (empl_bank_time_oid, empl_bank_time_cmnt_oid);


--
-- Name: empl_bank_time empl_bank_time_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_bank_time
    ADD CONSTRAINT empl_bank_time_pkey PRIMARY KEY (empl_bank_time_oid);


--
-- Name: empl_entl empl_entl_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_entl
    ADD CONSTRAINT empl_entl_pkey PRIMARY KEY (empl_mstr_oid, year, entl_type);


--
-- Name: empl_hol_pos_pref empl_hol_pos_pref_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_hol_pos_pref
    ADD CONSTRAINT empl_hol_pos_pref_pkey PRIMARY KEY (empl_hol_pos_pref_oid);


--
-- Name: empl_hol_qlfn empl_hol_qlfn_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_hol_qlfn
    ADD CONSTRAINT empl_hol_qlfn_pkey PRIMARY KEY (empl_hol_qlfn_oid);


--
-- Name: empl_ms empl_ms_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_ms
    ADD CONSTRAINT empl_ms_pkey PRIMARY KEY (empl_mstr_oid);


--
-- Name: empl_pos_dtls empl_pos_dtls_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_pos_dtls
    ADD CONSTRAINT empl_pos_dtls_pkey PRIMARY KEY (empl_pos_dtls_oid);


--
-- Name: empl_pos empl_pos_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_pos
    ADD CONSTRAINT empl_pos_pkey PRIMARY KEY (empl_pos_oid);


--
-- Name: empl_pos_sch empl_pos_sch_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_pos_sch
    ADD CONSTRAINT empl_pos_sch_pkey PRIMARY KEY (empl_pos_sch_oid);


--
-- Name: empl_role_mpng empl_role_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_role_mpng
    ADD CONSTRAINT empl_role_mpng_pkey PRIMARY KEY (empl_role_mpng_oid);


--
-- Name: empl_role_org_unit_mpng empl_role_org_unit_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_role_org_unit_mpng
    ADD CONSTRAINT empl_role_org_unit_mpng_pkey PRIMARY KEY (empl_role_org_unit_mpng_oid);


--
-- Name: empl_vac_flex_chocs empl_vac_flex_chocs_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_vac_flex_chocs
    ADD CONSTRAINT empl_vac_flex_chocs_pkey PRIMARY KEY (empl_vac_flex_choc_oid);


--
-- Name: empl_vac empl_vac_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_vac
    ADD CONSTRAINT empl_vac_pkey PRIMARY KEY (empl_vac_oid);


--
-- Name: empl_vac_sel empl_vac_sel_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_vac_sel
    ADD CONSTRAINT empl_vac_sel_pkey PRIMARY KEY (empl_vac_sel_oid);


--
-- Name: entl_type_for_pay_code_ctgy entl_type_for_pay_code_ctgy_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.entl_type_for_pay_code_ctgy
    ADD CONSTRAINT entl_type_for_pay_code_ctgy_pkey PRIMARY KEY (entl_type_oid);


--
-- Name: hol_asmt hol_asmt_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_asmt
    ADD CONSTRAINT hol_asmt_pkey PRIMARY KEY (hol_asmt_oid);


--
-- Name: hol_dtls hol_dtls_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_dtls
    ADD CONSTRAINT hol_dtls_pkey PRIMARY KEY (hol_dtls_oid);


--
-- Name: hol_grp_code hol_grp_code_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_grp_code
    ADD CONSTRAINT hol_grp_code_pkey PRIMARY KEY (hol_grp_code);


--
-- Name: hol_pos_mpng hol_pos_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_pos_mpng
    ADD CONSTRAINT hol_pos_mpng_pkey PRIMARY KEY (hol_pos_mpng_oid);


--
-- Name: hol_prof hol_prof_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_prof
    ADD CONSTRAINT hol_prof_pkey PRIMARY KEY (hol_prof_oid);


--
-- Name: hol_sign_up_empl hol_sign_up_empl_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_sign_up_empl
    ADD CONSTRAINT hol_sign_up_empl_pkey PRIMARY KEY (hol_sign_up_empl_oid);


--
-- Name: hol_sign_up_empl_pos_mpng hol_sign_up_empl_pos_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_sign_up_empl_pos_mpng
    ADD CONSTRAINT hol_sign_up_empl_pos_mpng_pkey PRIMARY KEY (hol_sign_up_empl_pos_mpng_oid);


--
-- Name: hol_sign_up_empl_shft_mpng hol_sign_up_empl_shft_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_sign_up_empl_shft_mpng
    ADD CONSTRAINT hol_sign_up_empl_shft_mpng_pkey PRIMARY KEY (hol_sign_up_empl_shft_mpng_oid);


--
-- Name: locl_cher_ttl locl_cher_ttl_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.locl_cher_ttl
    ADD CONSTRAINT locl_cher_ttl_pkey PRIMARY KEY (locl_cher_ttl_oid);


--
-- Name: minm_stfg minm_stfg_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.minm_stfg
    ADD CONSTRAINT minm_stfg_pkey PRIMARY KEY (minm_stfg_oid);


--
-- Name: minm_stfg_shft_dtls minm_stfg_shft_dtls_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.minm_stfg_shft_dtls
    ADD CONSTRAINT minm_stfg_shft_dtls_pkey PRIMARY KEY (minm_stfg_shft_dtls_oid);


--
-- Name: next_year_vac_awrd next_year_vac_awrd_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.next_year_vac_awrd
    ADD CONSTRAINT next_year_vac_awrd_pkey PRIMARY KEY (next_year_vac_awrd_oid);


--
-- Name: orgn_strc orgn_strc_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_strc
    ADD CONSTRAINT orgn_strc_pkey PRIMARY KEY (orgn_strc_oid);


--
-- Name: orgn_strc_type orgn_strc_type_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_strc_type
    ADD CONSTRAINT orgn_strc_type_pkey PRIMARY KEY (orgn_strc_type_oid);


--
-- Name: orgn_unit orgn_unit_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit
    ADD CONSTRAINT orgn_unit_pkey PRIMARY KEY (orgn_unit_oid);


--
-- Name: orgn_unit_role_mpng orgn_unit_role_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_role_mpng
    ADD CONSTRAINT orgn_unit_role_mpng_pkey PRIMARY KEY (orgn_unit_role_mpng_oid);


--
-- Name: orgn_unit_rstr_daly_mpng orgn_unit_rstr_daly_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_rstr_daly_mpng
    ADD CONSTRAINT orgn_unit_rstr_daly_mpng_pkey PRIMARY KEY (orgn_unit_rstr_daly_mpng_oid);


--
-- Name: orgn_unit_rstr_rule_mpng orgn_unit_rstr_rule_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_rstr_rule_mpng
    ADD CONSTRAINT orgn_unit_rstr_rule_mpng_pkey PRIMARY KEY (orgn_unit_rstr_rule_mpng_oid);


--
-- Name: orgn_unit_time_off_type_mpng orgn_unit_time_off_type_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_time_off_type_mpng
    ADD CONSTRAINT orgn_unit_time_off_type_mpng_pkey PRIMARY KEY (orgn_unit_time_off_type_mp_oid);


--
-- Name: over_time_sign_up_mpng over_time_sign_up_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.over_time_sign_up_mpng
    ADD CONSTRAINT over_time_sign_up_mpng_pkey PRIMARY KEY (over_time_sign_up_oid);


--
-- Name: peak_week_dsgn_dtls peak_week_dsgn_dtls_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.peak_week_dsgn_dtls
    ADD CONSTRAINT peak_week_dsgn_dtls_pkey PRIMARY KEY (peak_week_dtls_oid);


--
-- Name: peak_week_dsgn peak_week_dsgn_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.peak_week_dsgn
    ADD CONSTRAINT peak_week_dsgn_pkey PRIMARY KEY (peak_week_oid);


--
-- Name: pos_empl_mpng pos_empl_mpng_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.pos_empl_mpng
    ADD CONSTRAINT pos_empl_mpng_pkey PRIMARY KEY (empl_pos_mpng_oid);


--
-- Name: pos_fill pos_fill_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.pos_fill
    ADD CONSTRAINT pos_fill_pkey PRIMARY KEY (pos_fill_oid);


--
-- Name: pyrl_cods pyrl_cods_pkey; Type: CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.pyrl_cods
    ADD CONSTRAINT pyrl_cods_pkey PRIMARY KEY (pyrl_cods_oid);


--
-- Name: allc_chng_cmnt_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX allc_chng_cmnt_pk ON cpv.allc_chng_cmnt USING btree (allc_chng_cmnt_oid);


--
-- Name: bank_time_neut_code_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX bank_time_neut_code_pk ON cpv.bank_time_neut_code USING btree (bank_time_neut_code_oid);


--
-- Name: bank_time_neut_code_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bank_time_neut_code_x1 ON cpv.bank_time_neut_code USING btree (orgn_unit_bank_time_oid);


--
-- Name: bank_time_neut_code_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bank_time_neut_code_x2 ON cpv.bank_time_neut_code USING btree (orgn_unit_neut_code_oid);


--
-- Name: bank_time_off_rule_attrs_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX bank_time_off_rule_attrs_pk ON cpv.bank_time_off_rule_attrs USING btree (time_off_rule_attr_oid, bank_time_off_rule_attrs_oid);


--
-- Name: bank_time_off_rule_attrs_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bank_time_off_rule_attrs_x1 ON cpv.bank_time_off_rule_attrs USING btree (time_off_rule_attr_oid);


--
-- Name: bid_open_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX bid_open_pk ON cpv.bid_open USING btree (bid_open_oid);


--
-- Name: bid_open_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bid_open_x1 ON cpv.bid_open USING btree (orgn_unit_oid);


--
-- Name: bid_reqs_cmnt_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX bid_reqs_cmnt_pk ON cpv.bid_reqs_cmnt USING btree (bid_req_oid, bid_req_cmnt_oid);


--
-- Name: bid_reqs_cmnt_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bid_reqs_cmnt_x1 ON cpv.bid_reqs_cmnt USING btree (bid_req_oid);


--
-- Name: bid_reqs_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX bid_reqs_pk ON cpv.bid_reqs USING btree (bid_req_oid);


--
-- Name: bid_reqs_time_off_req_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX bid_reqs_time_off_req_mpng_pk ON cpv.bid_reqs_time_off_req_mpng USING btree (bid_reqs_time_off_req_mpng_oid);


--
-- Name: bid_reqs_time_off_req_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bid_reqs_time_off_req_mpng_x1 ON cpv.bid_reqs_time_off_req_mpng USING btree (time_off_req_oid);


--
-- Name: bid_reqs_time_off_req_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bid_reqs_time_off_req_mpng_x2 ON cpv.bid_reqs_time_off_req_mpng USING btree (bid_req_oid);


--
-- Name: bid_reqs_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bid_reqs_x1 ON cpv.bid_reqs USING btree (empl_mstr_oid);


--
-- Name: bid_reqs_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bid_reqs_x2 ON cpv.bid_reqs USING btree (bid_open_oid);


--
-- Name: bid_reqs_x3; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX bid_reqs_x3 ON cpv.bid_reqs USING btree (time_off_req_oid);


--
-- Name: chng_hist_cmnt_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX chng_hist_cmnt_pk ON cpv.chng_hist_cmnt USING btree (oid);


--
-- Name: chng_hist_cmnt_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX chng_hist_cmnt_x1 ON cpv.chng_hist_cmnt USING btree (change_history_oid);


--
-- Name: chng_hist_data_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX chng_hist_data_pk ON cpv.chng_hist_data USING btree (oid);


--
-- Name: chng_hist_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX chng_hist_pk ON cpv.chng_hist USING btree (oid);


--
-- Name: cpv_allc_chng_cmnt_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX cpv_allc_chng_cmnt_pk ON cpv.allc_chng_cmnt USING btree (allc_chng_cmnt_oid);


--
-- Name: empl_bank_time_cmnt_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_bank_time_cmnt_pk ON cpv.empl_bank_time_cmnt USING btree (empl_bank_time_oid, empl_bank_time_cmnt_oid);


--
-- Name: empl_bank_time_cmnt_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_bank_time_cmnt_x1 ON cpv.empl_bank_time_cmnt USING btree (empl_bank_time_oid);


--
-- Name: empl_bank_time_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_bank_time_pk ON cpv.empl_bank_time USING btree (empl_bank_time_oid);


--
-- Name: empl_bank_time_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_bank_time_x1 ON cpv.empl_bank_time USING btree (empl_mstr_oid);


--
-- Name: empl_bank_time_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_bank_time_x2 ON cpv.empl_bank_time USING btree (time_off_type_oid);


--
-- Name: empl_entl_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_entl_pk ON cpv.empl_entl USING btree (empl_mstr_oid, year, entl_type);


--
-- Name: empl_entl_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_entl_x1 ON cpv.empl_entl USING btree (empl_mstr_oid);


--
-- Name: empl_hol_pos_pref_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_hol_pos_pref_pk ON cpv.empl_hol_pos_pref USING btree (empl_hol_pos_pref_oid);


--
-- Name: empl_hol_pos_pref_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_hol_pos_pref_x1 ON cpv.empl_hol_pos_pref USING btree (empl_mstr_oid);


--
-- Name: empl_hol_pos_pref_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_hol_pos_pref_x2 ON cpv.empl_hol_pos_pref USING btree (empl_pos_oid);


--
-- Name: empl_hol_qlfn_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_hol_qlfn_pk ON cpv.empl_hol_qlfn USING btree (empl_hol_qlfn_oid);


--
-- Name: empl_hol_qlfn_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_hol_qlfn_x1 ON cpv.empl_hol_qlfn USING btree (empl_mstr_oid);


--
-- Name: empl_ms_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_ms_pk ON cpv.empl_ms USING btree (empl_mstr_oid);


--
-- Name: empl_ms_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_ms_x1 ON cpv.empl_ms USING btree (sc_prof_role_rule_oid);


--
-- Name: empl_ms_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_ms_x2 ON cpv.empl_ms USING btree (empl_orgn_unit_oid);


--
-- Name: empl_pos_dtls_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_pos_dtls_pk ON cpv.empl_pos_dtls USING btree (empl_pos_dtls_oid);


--
-- Name: empl_pos_dtls_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_pos_dtls_x1 ON cpv.empl_pos_dtls USING btree (empl_pos_oid);


--
-- Name: empl_pos_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_pos_pk ON cpv.empl_pos USING btree (empl_pos_oid);


--
-- Name: empl_pos_sch_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_pos_sch_pk ON cpv.empl_pos_sch USING btree (empl_pos_sch_oid);


--
-- Name: empl_pos_sch_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_pos_sch_x1 ON cpv.empl_pos_sch USING btree (empl_pos_oid);


--
-- Name: empl_role_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_role_mpng_pk ON cpv.empl_role_mpng USING btree (empl_role_mpng_oid);


--
-- Name: empl_role_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_role_mpng_x1 ON cpv.empl_role_mpng USING btree (sc_role_oid);


--
-- Name: empl_role_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_role_mpng_x2 ON cpv.empl_role_mpng USING btree (empl_mstr_oid);


--
-- Name: empl_role_org_unit_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_role_org_unit_mpng_pk ON cpv.empl_role_org_unit_mpng USING btree (empl_role_org_unit_mpng_oid);


--
-- Name: empl_role_org_unit_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_role_org_unit_mpng_x1 ON cpv.empl_role_org_unit_mpng USING btree (empl_role_mpng_oid);


--
-- Name: empl_role_org_unit_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_role_org_unit_mpng_x2 ON cpv.empl_role_org_unit_mpng USING btree (orgn_unit_oid);


--
-- Name: empl_vac_flex_chocs_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_vac_flex_chocs_pk ON cpv.empl_vac_flex_chocs USING btree (empl_vac_flex_choc_oid);


--
-- Name: empl_vac_flex_chocs_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_vac_flex_chocs_x1 ON cpv.empl_vac_flex_chocs USING btree (empl_mstr_oid);


--
-- Name: empl_vac_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_vac_pk ON cpv.empl_vac USING btree (empl_vac_oid);


--
-- Name: empl_vac_sel_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX empl_vac_sel_pk ON cpv.empl_vac_sel USING btree (empl_vac_sel_oid);


--
-- Name: empl_vac_sel_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_vac_sel_x1 ON cpv.empl_vac_sel USING btree (empl_mstr_oid);


--
-- Name: empl_vac_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX empl_vac_x1 ON cpv.empl_vac USING btree (empl_mstr_oid);


--
-- Name: entl_type_for_pay_code_ctgy_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX entl_type_for_pay_code_ctgy_pk ON cpv.entl_type_for_pay_code_ctgy USING btree (entl_type_oid);


--
-- Name: entl_type_for_pay_code_ctgy_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX entl_type_for_pay_code_ctgy_x1 ON cpv.entl_type_for_pay_code_ctgy USING btree (pyrl_cods_oid);


--
-- Name: hol_asmt_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX hol_asmt_pk ON cpv.hol_asmt USING btree (hol_asmt_oid);


--
-- Name: hol_asmt_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_asmt_x1 ON cpv.hol_asmt USING btree (empl_mstr_oid);


--
-- Name: hol_asmt_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_asmt_x2 ON cpv.hol_asmt USING btree (hol_grp_code);


--
-- Name: hol_dtls_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX hol_dtls_pk ON cpv.hol_dtls USING btree (hol_dtls_oid);


--
-- Name: hol_grp_code_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX hol_grp_code_pk ON cpv.hol_grp_code USING btree (hol_grp_code);


--
-- Name: hol_pos_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX hol_pos_mpng_pk ON cpv.hol_pos_mpng USING btree (hol_pos_mpng_oid);


--
-- Name: hol_pos_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_pos_mpng_x2 ON cpv.hol_pos_mpng USING btree (empl_pos_oid);


--
-- Name: hol_pos_mpng_x3; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_pos_mpng_x3 ON cpv.hol_pos_mpng USING btree (hol_dtls_oid);


--
-- Name: hol_prof_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX hol_prof_pk ON cpv.hol_prof USING btree (hol_prof_oid);


--
-- Name: hol_sign_up_empl_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX hol_sign_up_empl_pk ON cpv.hol_sign_up_empl USING btree (hol_sign_up_empl_oid);


--
-- Name: hol_sign_up_empl_pos_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX hol_sign_up_empl_pos_mpng_pk ON cpv.hol_sign_up_empl_pos_mpng USING btree (hol_sign_up_empl_pos_mpng_oid);


--
-- Name: hol_sign_up_empl_pos_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_sign_up_empl_pos_mpng_x1 ON cpv.hol_sign_up_empl_pos_mpng USING btree (hol_sign_up_empl_oid);


--
-- Name: hol_sign_up_empl_pos_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_sign_up_empl_pos_mpng_x2 ON cpv.hol_sign_up_empl_pos_mpng USING btree (hol_pos_mpng_oid);


--
-- Name: hol_sign_up_empl_shft_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX hol_sign_up_empl_shft_mpng_pk ON cpv.hol_sign_up_empl_shft_mpng USING btree (hol_sign_up_empl_shft_mpng_oid);


--
-- Name: hol_sign_up_empl_shft_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_sign_up_empl_shft_mpng_x1 ON cpv.hol_sign_up_empl_shft_mpng USING btree (hol_sign_up_empl_oid);


--
-- Name: hol_sign_up_empl_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_sign_up_empl_x1 ON cpv.hol_sign_up_empl USING btree (empl_mstr_oid);


--
-- Name: hol_sign_up_empl_x3; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX hol_sign_up_empl_x3 ON cpv.hol_sign_up_empl USING btree (hol_dtls_oid);


--
-- Name: idx_qrtz_ft_inst_job_req_rcvry; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_inst_job_req_rcvry ON cpv.qz_fired_triggers USING btree (sched_name, instance_name, requests_recovery);


--
-- Name: idx_qrtz_ft_j_g; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_j_g ON cpv.qz_fired_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_ft_jg; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_jg ON cpv.qz_fired_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_ft_t_g; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_t_g ON cpv.qz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: idx_qrtz_ft_tg; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_tg ON cpv.qz_fired_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_j_grp; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_j_grp ON cpv.qz_job_details USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_j_req_recovery; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_j_req_recovery ON cpv.qz_job_details USING btree (sched_name, requests_recovery);


--
-- Name: idx_qrtz_t_c; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_c ON cpv.qz_triggers USING btree (sched_name, calendar_name);


--
-- Name: idx_qrtz_t_j; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_j ON cpv.qz_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_t_jg; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_jg ON cpv.qz_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_t_n_g_state; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_n_g_state ON cpv.qz_triggers USING btree (sched_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_n_state; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_n_state ON cpv.qz_triggers USING btree (sched_name, trigger_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_next_fire_time; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_next_fire_time ON cpv.qz_triggers USING btree (sched_name, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st ON cpv.qz_triggers USING btree (sched_name, trigger_state, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st_misfire; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st_misfire ON cpv.qz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_state);


--
-- Name: idx_qrtz_t_nft_st_misfire_grp; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st_misfire_grp ON cpv.qz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_group, trigger_state);


--
-- Name: locl_cher_ttl_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX locl_cher_ttl_pk ON cpv.locl_cher_ttl USING btree (locl_cher_ttl_oid);


--
-- Name: minm_stfg_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX minm_stfg_pk ON cpv.minm_stfg USING btree (minm_stfg_oid);


--
-- Name: minm_stfg_shft_dtls_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX minm_stfg_shft_dtls_pk ON cpv.minm_stfg_shft_dtls USING btree (minm_stfg_shft_dtls_oid);


--
-- Name: minm_stfg_shft_dtls_u1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX minm_stfg_shft_dtls_u1 ON cpv.minm_stfg_shft_dtls USING btree (minm_stfg_oid, shft_nbr);


--
-- Name: minm_stfg_shft_dtls_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX minm_stfg_shft_dtls_x1 ON cpv.minm_stfg_shft_dtls USING btree (minm_stfg_oid);


--
-- Name: minm_stfg_u1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX minm_stfg_u1 ON cpv.minm_stfg USING btree (vac_rstr_oid, staf_reqd_date);


--
-- Name: minm_stfg_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX minm_stfg_x1 ON cpv.minm_stfg USING btree (vac_rstr_oid);


--
-- Name: next_year_vac_awrd_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX next_year_vac_awrd_pk ON cpv.next_year_vac_awrd USING btree (next_year_vac_awrd_oid);


--
-- Name: next_year_vac_awrd_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX next_year_vac_awrd_x1 ON cpv.next_year_vac_awrd USING btree (vac_rstr_oid);


--
-- Name: orgn_strc_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX orgn_strc_pk ON cpv.orgn_strc USING btree (orgn_strc_oid);


--
-- Name: orgn_strc_type_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX orgn_strc_type_pk ON cpv.orgn_strc_type USING btree (orgn_strc_type_oid);


--
-- Name: orgn_strc_type_u1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX orgn_strc_type_u1 ON cpv.orgn_strc_type USING btree (orgn_strc_type, grp_id);


--
-- Name: orgn_strc_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_strc_x2 ON cpv.orgn_strc USING btree (orgn_strc_type_oid);


--
-- Name: orgn_unit_blkt_wind_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX orgn_unit_blkt_wind_mpng_pk ON cpv.orgn_unit_time_off_type_mpng USING btree (orgn_unit_time_off_type_mp_oid);


--
-- Name: orgn_unit_blkt_wind_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_blkt_wind_mpng_x1 ON cpv.orgn_unit_time_off_type_mpng USING btree (orgn_unit_oid);


--
-- Name: orgn_unit_blkt_wind_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_blkt_wind_mpng_x2 ON cpv.orgn_unit_time_off_type_mpng USING btree (time_off_type_oid);


--
-- Name: orgn_unit_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX orgn_unit_pk ON cpv.orgn_unit USING btree (orgn_unit_oid);


--
-- Name: orgn_unit_role_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX orgn_unit_role_mpng_pk ON cpv.orgn_unit_role_mpng USING btree (orgn_unit_role_mpng_oid);


--
-- Name: orgn_unit_role_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_role_mpng_x1 ON cpv.orgn_unit_role_mpng USING btree (orgn_unit_oid);


--
-- Name: orgn_unit_role_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_role_mpng_x2 ON cpv.orgn_unit_role_mpng USING btree (sc_role_oid);


--
-- Name: orgn_unit_rstr_daly_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX orgn_unit_rstr_daly_mpng_pk ON cpv.orgn_unit_rstr_daly_mpng USING btree (orgn_unit_rstr_daly_mpng_oid);


--
-- Name: orgn_unit_rstr_daly_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_rstr_daly_mpng_x1 ON cpv.orgn_unit_rstr_daly_mpng USING btree (orgn_unit_oid);


--
-- Name: orgn_unit_rstr_daly_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_rstr_daly_mpng_x2 ON cpv.orgn_unit_rstr_daly_mpng USING btree (rstr_daly_max_off_oid);


--
-- Name: orgn_unit_rstr_rule_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX orgn_unit_rstr_rule_mpng_pk ON cpv.orgn_unit_rstr_rule_mpng USING btree (orgn_unit_rstr_rule_mpng_oid);


--
-- Name: orgn_unit_rstr_rule_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_rstr_rule_mpng_x1 ON cpv.orgn_unit_rstr_rule_mpng USING btree (orgn_unit__mpng_oid);


--
-- Name: orgn_unit_rstr_rule_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_rstr_rule_mpng_x2 ON cpv.orgn_unit_rstr_rule_mpng USING btree (rstr_rule_attr_oid);


--
-- Name: orgn_unit_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX orgn_unit_x1 ON cpv.orgn_unit USING btree (orgn_strc_par_oid);


--
-- Name: over_time_sign_up_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX over_time_sign_up_mpng_pk ON cpv.over_time_sign_up_mpng USING btree (over_time_sign_up_oid);


--
-- Name: over_time_sign_up_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX over_time_sign_up_mpng_x1 ON cpv.over_time_sign_up_mpng USING btree (empl_mstr_oid);


--
-- Name: peak_week_dsgn_dtls_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX peak_week_dsgn_dtls_pk ON cpv.peak_week_dsgn_dtls USING btree (peak_week_dtls_oid);


--
-- Name: peak_week_dsgn_dtls_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX peak_week_dsgn_dtls_x1 ON cpv.peak_week_dsgn_dtls USING btree (peak_week_oid);


--
-- Name: peak_week_dsgn_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX peak_week_dsgn_pk ON cpv.peak_week_dsgn USING btree (peak_week_oid);


--
-- Name: peak_week_dsgn_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX peak_week_dsgn_x1 ON cpv.peak_week_dsgn USING btree (vac_rstr_oid);


--
-- Name: pos_empl_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX pos_empl_mpng_pk ON cpv.pos_empl_mpng USING btree (empl_pos_mpng_oid);


--
-- Name: pos_empl_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX pos_empl_mpng_x1 ON cpv.pos_empl_mpng USING btree (empl_mstr_oid);


--
-- Name: pos_empl_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX pos_empl_mpng_x2 ON cpv.pos_empl_mpng USING btree (empl_pos_oid);


--
-- Name: pos_fill_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX pos_fill_pk ON cpv.pos_fill USING btree (pos_fill_oid);


--
-- Name: pos_fill_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX pos_fill_x1 ON cpv.pos_fill USING btree (empl_mstr_oid);


--
-- Name: pyrl_cods_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX pyrl_cods_pk ON cpv.pyrl_cods USING btree (pyrl_cods_oid);


--
-- Name: qz_blob_trig_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_blob_trig_pk ON cpv.qz_blob_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: qz_calendars_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_calendars_pk ON cpv.qz_calendars USING btree (sched_name, calendar_name);


--
-- Name: qz_cron_trig_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_cron_trig_pk ON cpv.qz_cron_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: qz_fired_trigger_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_fired_trigger_pk ON cpv.qz_fired_triggers USING btree (sched_name, entry_id);


--
-- Name: qz_job_details_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_job_details_pk ON cpv.qz_job_details USING btree (sched_name, job_name, job_group);


--
-- Name: qz_locks_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_locks_pk ON cpv.qz_locks USING btree (sched_name, lock_name);


--
-- Name: qz_paused_trig_grps_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_paused_trig_grps_pk ON cpv.qz_paused_trigger_grps USING btree (sched_name, trigger_group);


--
-- Name: qz_scheduler_state_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_scheduler_state_pk ON cpv.qz_scheduler_state USING btree (sched_name, instance_name);


--
-- Name: qz_simple_trig_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_simple_trig_pk ON cpv.qz_simple_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: qz_simprop_trig_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_simprop_trig_pk ON cpv.qz_simprop_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: qz_triggers_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX qz_triggers_pk ON cpv.qz_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: rstr_daly_max_off_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX rstr_daly_max_off_pk ON cpv.rstr_daly_max_off USING btree (rstr_daly_max_off_oid);


--
-- Name: rstr_rule_attrs_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX rstr_rule_attrs_pk ON cpv.rstr_rule_attrs USING btree (rstr_rule_attr_oid);


--
-- Name: rstr_rule_attrs_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX rstr_rule_attrs_x1 ON cpv.rstr_rule_attrs USING btree (bid_time_off_type_oid);


--
-- Name: rstr_rule_attrs_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX rstr_rule_attrs_x2 ON cpv.rstr_rule_attrs USING btree (vac_prof_oid);


--
-- Name: sc_caby_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_caby_pk ON cpv.sc_caby USING btree (caby_name);


--
-- Name: sc_prof_caby_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_prof_caby_mpng_pk ON cpv.sc_prof_caby_mpng USING btree (caby_name, sc_prof_role_rule_oid);


--
-- Name: sc_prof_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_prof_mpng_pk ON cpv.sc_prof_mpng USING btree (prof_name, orgn_unit_oid);


--
-- Name: sc_prof_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX sc_prof_mpng_x2 ON cpv.sc_prof_mpng USING btree (orgn_unit_oid);


--
-- Name: sc_prof_role_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_prof_role_mpng_pk ON cpv.sc_prof_role_mpng USING btree (sc_role_caby_mpng_oid);


--
-- Name: sc_prof_role_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX sc_prof_role_mpng_x1 ON cpv.sc_prof_role_mpng USING btree (sc_role_oid);


--
-- Name: sc_prof_role_rule_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_prof_role_rule_pk ON cpv.sc_prof_role_rule USING btree (sc_prof_role_rule_oid);


--
-- Name: sc_prof_rule_cond_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_prof_rule_cond_pk ON cpv.sc_prof_rule_cond USING btree (prof_name, rule_attr_name, cond_valu, rule_opr_name);


--
-- Name: sc_prof_rule_cond_x4; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX sc_prof_rule_cond_x4 ON cpv.sc_prof_rule_cond USING btree (sc_prof_role_rule_oid);


--
-- Name: sc_role_caby_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_role_caby_mpng_pk ON cpv.sc_role_caby_mpng USING btree (sc_role_caby_mpng_oid);


--
-- Name: sc_role_caby_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX sc_role_caby_mpng_x1 ON cpv.sc_role_caby_mpng USING btree (sc_role_oid);


--
-- Name: sc_role_caby_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX sc_role_caby_mpng_x2 ON cpv.sc_role_caby_mpng USING btree (caby_name);


--
-- Name: sc_role_glbl_prop_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_role_glbl_prop_pk ON cpv.sc_role_glbl_prop USING btree (sc_role_glbl_prop_oid);


--
-- Name: sc_role_glbl_prop_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX sc_role_glbl_prop_x1 ON cpv.sc_role_glbl_prop USING btree (sc_role_oid);


--
-- Name: sc_role_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_role_pk ON cpv.sc_role USING btree (sc_role_oid);


--
-- Name: sc_role_u1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_role_u1 ON cpv.sc_role USING btree (role_name);


--
-- Name: sc_rule_attr_opr_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_rule_attr_opr_pk ON cpv.sc_rule_attr_opr USING btree (rule_attr_name, rule_opr_name);


--
-- Name: sc_rule_attr_opr_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX sc_rule_attr_opr_x1 ON cpv.sc_rule_attr_opr USING btree (rule_opr_name);


--
-- Name: sc_rule_attr_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_rule_attr_pk ON cpv.sc_rule_attr USING btree (rule_attr_name);


--
-- Name: sc_rule_opr_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sc_rule_opr_pk ON cpv.sc_rule_opr USING btree (rule_opr_name);


--
-- Name: sen_rstr_dump_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX sen_rstr_dump_pk ON cpv.sen_rstr_dump USING btree (sen_rstr_cod);


--
-- Name: spcl_sch_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX spcl_sch_pk ON cpv.spcl_sch USING btree (spcl_sch_oid);


--
-- Name: spcl_sch_u1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX spcl_sch_u1 ON cpv.spcl_sch USING btree (empl_mstr_oid, sch_date);


--
-- Name: spcl_sch_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX spcl_sch_x1 ON cpv.spcl_sch USING btree (empl_mstr_oid);


--
-- Name: spcl_sch_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX spcl_sch_x2 ON cpv.spcl_sch USING btree (empl_pos_oid);


--
-- Name: time_off_req_cmnt_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_req_cmnt_pk ON cpv.time_off_req_cmnt USING btree (time_off_req_oid, time_off_req_cmnt_oid);


--
-- Name: time_off_req_dtls_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_req_dtls_pk ON cpv.time_off_req_dtls USING btree (time_off_req_dtls_oid);


--
-- Name: time_off_req_dtls_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_req_dtls_x1 ON cpv.time_off_req_dtls USING btree (time_off_req_oid);


--
-- Name: time_off_req_entl_cnsm_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_req_entl_cnsm_pk ON cpv.time_off_req_entl_cnsm USING btree (time_off_req_entl_cnsm_oid);


--
-- Name: time_off_req_entl_cnsm_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_req_entl_cnsm_x1 ON cpv.time_off_req_entl_cnsm USING btree (time_off_req_dtls_oid);


--
-- Name: time_off_req_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_req_pk ON cpv.time_off_req USING btree (time_off_req_oid);


--
-- Name: time_off_req_trd_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_req_trd_pk ON cpv.time_off_req_trd USING btree (time_off_req_trd_oid);


--
-- Name: time_off_req_trd_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_req_trd_x1 ON cpv.time_off_req_trd USING btree (cur_time_off_req_oid);


--
-- Name: time_off_req_trd_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_req_trd_x2 ON cpv.time_off_req_trd USING btree (trd_time_off_req_oid);


--
-- Name: time_off_req_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_req_x1 ON cpv.time_off_req USING btree (empl_mstr_oid);


--
-- Name: time_off_req_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_req_x2 ON cpv.time_off_req USING btree (time_off_type_oid);


--
-- Name: time_off_req_x3; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_req_x3 ON cpv.time_off_req USING btree (apvr_empl_mstr_oid);


--
-- Name: time_off_rule_attrs_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_rule_attrs_pk ON cpv.time_off_rule_attrs USING btree (time_off_rule_attr_oid, time_off_type_oid);


--
-- Name: time_off_rule_attrs_u1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_rule_attrs_u1 ON cpv.time_off_rule_attrs USING btree (time_off_rule_attr_oid);


--
-- Name: time_off_rule_attrs_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_rule_attrs_x1 ON cpv.time_off_rule_attrs USING btree (time_off_type_oid);


--
-- Name: time_off_trd_day_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_trd_day_mpng_pk ON cpv.time_off_trd_day_mpng USING btree (time_off_trd_day_mpng_oid);


--
-- Name: time_off_trd_day_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_trd_day_mpng_x1 ON cpv.time_off_trd_day_mpng USING btree (trd_time_off_req_oid);


--
-- Name: time_off_trd_day_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_trd_day_mpng_x2 ON cpv.time_off_trd_day_mpng USING btree (time_off_req_oid);


--
-- Name: time_off_type_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX time_off_type_pk ON cpv.time_off_type USING btree (time_off_type_oid);


--
-- Name: time_off_type_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX time_off_type_x1 ON cpv.time_off_type USING btree (pyrl_cods_oid);


--
-- Name: user_pref_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX user_pref_pk ON cpv.user_pref USING btree (user_pref_oid);


--
-- Name: user_pref_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX user_pref_x1 ON cpv.user_pref USING btree (empl_mstr_oid);


--
-- Name: user_pref_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX user_pref_x2 ON cpv.user_pref USING btree (sc_role_oid);


--
-- Name: user_pref_x3; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX user_pref_x3 ON cpv.user_pref USING btree (orgn_unit_oid);


--
-- Name: vac_prof_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_prof_pk ON cpv.vac_prof USING btree (vac_prof_oid);


--
-- Name: vac_rstr_daly_mp_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_rstr_daly_mp_pk ON cpv.vac_rstr_daly_mp USING btree (vac_rstr_oid, rstr_daly_max_off_oid);


--
-- Name: vac_rstr_daly_mp_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX vac_rstr_daly_mp_x1 ON cpv.vac_rstr_daly_mp USING btree (rstr_daly_max_off_oid);


--
-- Name: vac_rstr_eval_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_rstr_eval_mpng_pk ON cpv.vac_rstr_eval_mpng USING btree (vac_rstr_oid, empl_mstr_oid);


--
-- Name: vac_rstr_eval_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX vac_rstr_eval_mpng_x2 ON cpv.vac_rstr_eval_mpng USING btree (empl_mstr_oid);


--
-- Name: vac_rstr_locl_cher_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_rstr_locl_cher_mpng_pk ON cpv.vac_rstr_locl_cher_mpng USING btree (vac_rstr_locl_cher_mpng_oid);


--
-- Name: vac_rstr_locl_cher_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX vac_rstr_locl_cher_mpng_x1 ON cpv.vac_rstr_locl_cher_mpng USING btree (locl_cher_ttl_oid);


--
-- Name: vac_rstr_locl_cher_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX vac_rstr_locl_cher_mpng_x2 ON cpv.vac_rstr_locl_cher_mpng USING btree (vac_rstr_oid);


--
-- Name: vac_rstr_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_rstr_pk ON cpv.vac_rstr USING btree (vac_rstr_oid);


--
-- Name: vac_rstr_prof_rule_cond_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_rstr_prof_rule_cond_pk ON cpv.vac_rstr_prof_rule_cond USING btree (vac_rstr_oid, cond_valu, rule_attr_name, rule_opr_name);


--
-- Name: vac_rstr_rule_attr_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_rstr_rule_attr_pk ON cpv.vac_rstr_rule_attr USING btree (rule_attr_name);


--
-- Name: vac_rstr_rule_opr_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_rstr_rule_opr_pk ON cpv.vac_rstr_rule_opr USING btree (rule_opr_name);


--
-- Name: vac_rstr_vac_prof_mpng_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX vac_rstr_vac_prof_mpng_pk ON cpv.vac_rstr_vac_prof_mpng USING btree (vac_rstr_vac_prof_mpng_oid);


--
-- Name: vac_rstr_vac_prof_mpng_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX vac_rstr_vac_prof_mpng_x1 ON cpv.vac_rstr_vac_prof_mpng USING btree (vac_prof_oid);


--
-- Name: vac_rstr_vac_prof_mpng_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX vac_rstr_vac_prof_mpng_x2 ON cpv.vac_rstr_vac_prof_mpng USING btree (vac_rstr_oid);


--
-- Name: vac_rstr_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX vac_rstr_x1 ON cpv.vac_rstr USING btree (orgn_unit_oid);


--
-- Name: vac_rstr_x2; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX vac_rstr_x2 ON cpv.vac_rstr USING btree (dflt_vac_rstr_oid);


--
-- Name: work_grp_code_pk; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE UNIQUE INDEX work_grp_code_pk ON cpv.work_grp_code USING btree (work_grp_code);


--
-- Name: work_grp_code_x1; Type: INDEX; Schema: cpv; Owner: postgres
--

CREATE INDEX work_grp_code_x1 ON cpv.work_grp_code USING btree (hol_grp_code);


--
-- Name: bank_time_neut_code bank_time_neut_code_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bank_time_neut_code
    ADD CONSTRAINT bank_time_neut_code_f1 FOREIGN KEY (orgn_unit_bank_time_oid) REFERENCES cpv.orgn_unit_time_off_type_mpng(orgn_unit_time_off_type_mp_oid);


--
-- Name: bank_time_neut_code bank_time_neut_code_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bank_time_neut_code
    ADD CONSTRAINT bank_time_neut_code_f2 FOREIGN KEY (orgn_unit_neut_code_oid) REFERENCES cpv.orgn_unit_time_off_type_mpng(orgn_unit_time_off_type_mp_oid);


--
-- Name: bank_time_off_rule_attrs bank_time_off_rule_attrs_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bank_time_off_rule_attrs
    ADD CONSTRAINT bank_time_off_rule_attrs_f1 FOREIGN KEY (time_off_rule_attr_oid) REFERENCES cpv.time_off_rule_attrs(time_off_rule_attr_oid);


--
-- Name: bid_open bid_open_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_open
    ADD CONSTRAINT bid_open_f1 FOREIGN KEY (orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: bid_reqs_cmnt bid_reqs_cmnt_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs_cmnt
    ADD CONSTRAINT bid_reqs_cmnt_f1 FOREIGN KEY (bid_req_oid) REFERENCES cpv.bid_reqs(bid_req_oid);


--
-- Name: bid_reqs bid_reqs_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs
    ADD CONSTRAINT bid_reqs_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: bid_reqs bid_reqs_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs
    ADD CONSTRAINT bid_reqs_f2 FOREIGN KEY (bid_open_oid) REFERENCES cpv.bid_open(bid_open_oid);


--
-- Name: bid_reqs bid_reqs_f3; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs
    ADD CONSTRAINT bid_reqs_f3 FOREIGN KEY (time_off_req_oid) REFERENCES cpv.time_off_req(time_off_req_oid);


--
-- Name: bid_reqs_time_off_req_mpng bid_reqs_time_off_req_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs_time_off_req_mpng
    ADD CONSTRAINT bid_reqs_time_off_req_mpng_f1 FOREIGN KEY (time_off_req_oid) REFERENCES cpv.time_off_req(time_off_req_oid);


--
-- Name: bid_reqs_time_off_req_mpng bid_reqs_time_off_req_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.bid_reqs_time_off_req_mpng
    ADD CONSTRAINT bid_reqs_time_off_req_mpng_f2 FOREIGN KEY (bid_req_oid) REFERENCES cpv.bid_reqs(bid_req_oid);


--
-- Name: empl_bank_time_cmnt empl_bank_time_cmnt_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_bank_time_cmnt
    ADD CONSTRAINT empl_bank_time_cmnt_f1 FOREIGN KEY (empl_bank_time_oid) REFERENCES cpv.empl_bank_time(empl_bank_time_oid);


--
-- Name: empl_bank_time empl_bank_time_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_bank_time
    ADD CONSTRAINT empl_bank_time_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: empl_bank_time empl_bank_time_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_bank_time
    ADD CONSTRAINT empl_bank_time_f2 FOREIGN KEY (time_off_type_oid) REFERENCES cpv.time_off_type(time_off_type_oid);


--
-- Name: empl_entl empl_entl_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_entl
    ADD CONSTRAINT empl_entl_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: empl_hol_pos_pref empl_hol_pos_pref_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_hol_pos_pref
    ADD CONSTRAINT empl_hol_pos_pref_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: empl_hol_pos_pref empl_hol_pos_pref_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_hol_pos_pref
    ADD CONSTRAINT empl_hol_pos_pref_f2 FOREIGN KEY (empl_pos_oid) REFERENCES cpv.empl_pos(empl_pos_oid);


--
-- Name: empl_hol_qlfn empl_hol_qlfn_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_hol_qlfn
    ADD CONSTRAINT empl_hol_qlfn_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: empl_ms empl_ms_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_ms
    ADD CONSTRAINT empl_ms_f1 FOREIGN KEY (sc_prof_role_rule_oid) REFERENCES cpv.sc_prof_role_rule(sc_prof_role_rule_oid);


--
-- Name: empl_ms empl_mstr_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_ms
    ADD CONSTRAINT empl_mstr_f2 FOREIGN KEY (empl_orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: empl_pos_dtls empl_pos_dtls_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_pos_dtls
    ADD CONSTRAINT empl_pos_dtls_f1 FOREIGN KEY (empl_pos_oid) REFERENCES cpv.empl_pos(empl_pos_oid);


--
-- Name: empl_pos_sch empl_pos_sch_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_pos_sch
    ADD CONSTRAINT empl_pos_sch_f1 FOREIGN KEY (empl_pos_oid) REFERENCES cpv.empl_pos(empl_pos_oid);


--
-- Name: empl_role_mpng empl_role_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_role_mpng
    ADD CONSTRAINT empl_role_mpng_f1 FOREIGN KEY (sc_role_oid) REFERENCES cpv.sc_role(sc_role_oid);


--
-- Name: empl_role_mpng empl_role_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_role_mpng
    ADD CONSTRAINT empl_role_mpng_f2 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: empl_role_org_unit_mpng empl_role_org_unit_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_role_org_unit_mpng
    ADD CONSTRAINT empl_role_org_unit_mpng_f1 FOREIGN KEY (empl_role_mpng_oid) REFERENCES cpv.empl_role_mpng(empl_role_mpng_oid);


--
-- Name: empl_role_org_unit_mpng empl_role_org_unit_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_role_org_unit_mpng
    ADD CONSTRAINT empl_role_org_unit_mpng_f2 FOREIGN KEY (orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: empl_vac empl_vac_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_vac
    ADD CONSTRAINT empl_vac_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: empl_vac_flex_chocs empl_vac_flex_chocs_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_vac_flex_chocs
    ADD CONSTRAINT empl_vac_flex_chocs_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: empl_vac_sel empl_vac_sel_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.empl_vac_sel
    ADD CONSTRAINT empl_vac_sel_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: entl_type_for_pay_code_ctgy entl_type_for_pay_code_ctgy_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.entl_type_for_pay_code_ctgy
    ADD CONSTRAINT entl_type_for_pay_code_ctgy_f1 FOREIGN KEY (pyrl_cods_oid) REFERENCES cpv.pyrl_cods(pyrl_cods_oid);


--
-- Name: hol_asmt hol_asmt_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_asmt
    ADD CONSTRAINT hol_asmt_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: hol_asmt hol_asmt_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_asmt
    ADD CONSTRAINT hol_asmt_f2 FOREIGN KEY (hol_grp_code) REFERENCES cpv.hol_grp_code(hol_grp_code);


--
-- Name: hol_pos_mpng hol_pos_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_pos_mpng
    ADD CONSTRAINT hol_pos_mpng_f1 FOREIGN KEY (hol_dtls_oid) REFERENCES cpv.hol_dtls(hol_dtls_oid);


--
-- Name: hol_pos_mpng hol_pos_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_pos_mpng
    ADD CONSTRAINT hol_pos_mpng_f2 FOREIGN KEY (empl_pos_oid) REFERENCES cpv.empl_pos(empl_pos_oid);


--
-- Name: hol_sign_up_empl hol_sign_up_empl_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_sign_up_empl
    ADD CONSTRAINT hol_sign_up_empl_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: hol_sign_up_empl hol_sign_up_empl_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_sign_up_empl
    ADD CONSTRAINT hol_sign_up_empl_f2 FOREIGN KEY (hol_dtls_oid) REFERENCES cpv.hol_dtls(hol_dtls_oid);


--
-- Name: hol_sign_up_empl_pos_mpng hol_sign_up_empl_pos_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_sign_up_empl_pos_mpng
    ADD CONSTRAINT hol_sign_up_empl_pos_mpng_f1 FOREIGN KEY (hol_sign_up_empl_oid) REFERENCES cpv.hol_sign_up_empl(hol_sign_up_empl_oid);


--
-- Name: hol_sign_up_empl_pos_mpng hol_sign_up_empl_pos_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_sign_up_empl_pos_mpng
    ADD CONSTRAINT hol_sign_up_empl_pos_mpng_f2 FOREIGN KEY (hol_pos_mpng_oid) REFERENCES cpv.hol_pos_mpng(hol_pos_mpng_oid);


--
-- Name: hol_sign_up_empl_shft_mpng hol_sign_up_empl_shft_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.hol_sign_up_empl_shft_mpng
    ADD CONSTRAINT hol_sign_up_empl_shft_mpng_f1 FOREIGN KEY (hol_sign_up_empl_oid) REFERENCES cpv.hol_sign_up_empl(hol_sign_up_empl_oid);


--
-- Name: minm_stfg minm_stfg_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.minm_stfg
    ADD CONSTRAINT minm_stfg_f1 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: minm_stfg_shft_dtls minm_stfg_shft_dtls_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.minm_stfg_shft_dtls
    ADD CONSTRAINT minm_stfg_shft_dtls_f1 FOREIGN KEY (minm_stfg_oid) REFERENCES cpv.minm_stfg(minm_stfg_oid);


--
-- Name: next_year_vac_awrd next_year_vac_awrd_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.next_year_vac_awrd
    ADD CONSTRAINT next_year_vac_awrd_f1 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: orgn_strc orgn_strc_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_strc
    ADD CONSTRAINT orgn_strc_f1 FOREIGN KEY (orgn_strc_type_oid) REFERENCES cpv.orgn_strc_type(orgn_strc_type_oid);


--
-- Name: orgn_unit_time_off_type_mpng orgn_unit_blkt_wind_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_time_off_type_mpng
    ADD CONSTRAINT orgn_unit_blkt_wind_mpng_f1 FOREIGN KEY (orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: orgn_unit_time_off_type_mpng orgn_unit_blkt_wind_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_time_off_type_mpng
    ADD CONSTRAINT orgn_unit_blkt_wind_mpng_f2 FOREIGN KEY (time_off_type_oid) REFERENCES cpv.time_off_type(time_off_type_oid);


--
-- Name: orgn_unit orgn_unit_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit
    ADD CONSTRAINT orgn_unit_f1 FOREIGN KEY (orgn_strc_par_oid) REFERENCES cpv.orgn_strc(orgn_strc_oid);


--
-- Name: orgn_unit orgn_unit_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit
    ADD CONSTRAINT orgn_unit_f2 FOREIGN KEY (orgn_strc_oid) REFERENCES cpv.orgn_strc(orgn_strc_oid);


--
-- Name: orgn_unit_role_mpng orgn_unit_role_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_role_mpng
    ADD CONSTRAINT orgn_unit_role_mpng_f1 FOREIGN KEY (orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: orgn_unit_role_mpng orgn_unit_role_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_role_mpng
    ADD CONSTRAINT orgn_unit_role_mpng_f2 FOREIGN KEY (sc_role_oid) REFERENCES cpv.sc_role(sc_role_oid);


--
-- Name: orgn_unit_rstr_daly_mpng orgn_unit_rstr_daly_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_rstr_daly_mpng
    ADD CONSTRAINT orgn_unit_rstr_daly_mpng_f1 FOREIGN KEY (orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: orgn_unit_rstr_daly_mpng orgn_unit_rstr_daly_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_rstr_daly_mpng
    ADD CONSTRAINT orgn_unit_rstr_daly_mpng_f2 FOREIGN KEY (rstr_daly_max_off_oid) REFERENCES cpv.rstr_daly_max_off(rstr_daly_max_off_oid);


--
-- Name: orgn_unit_rstr_rule_mpng orgn_unit_rstr_rule_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_rstr_rule_mpng
    ADD CONSTRAINT orgn_unit_rstr_rule_mpng_f1 FOREIGN KEY (orgn_unit__mpng_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: orgn_unit_rstr_rule_mpng orgn_unit_rstr_rule_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.orgn_unit_rstr_rule_mpng
    ADD CONSTRAINT orgn_unit_rstr_rule_mpng_f2 FOREIGN KEY (rstr_rule_attr_oid) REFERENCES cpv.rstr_rule_attrs(rstr_rule_attr_oid);


--
-- Name: over_time_sign_up_mpng over_time_sign_up_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.over_time_sign_up_mpng
    ADD CONSTRAINT over_time_sign_up_mpng_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: peak_week_dsgn_dtls peak_week_dsgn_dtls_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.peak_week_dsgn_dtls
    ADD CONSTRAINT peak_week_dsgn_dtls_f1 FOREIGN KEY (peak_week_oid) REFERENCES cpv.peak_week_dsgn(peak_week_oid);


--
-- Name: peak_week_dsgn peak_week_dsgn_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.peak_week_dsgn
    ADD CONSTRAINT peak_week_dsgn_f1 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: pos_empl_mpng pos_empl_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.pos_empl_mpng
    ADD CONSTRAINT pos_empl_mpng_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: pos_empl_mpng pos_empl_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.pos_empl_mpng
    ADD CONSTRAINT pos_empl_mpng_f2 FOREIGN KEY (empl_pos_oid) REFERENCES cpv.empl_pos(empl_pos_oid);


--
-- Name: pos_empl_mpng pos_empl_mpng_f3; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.pos_empl_mpng
    ADD CONSTRAINT pos_empl_mpng_f3 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: pos_fill pos_fill_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.pos_fill
    ADD CONSTRAINT pos_fill_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: qz_triggers qz_trigger_to_jobs_fk; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.qz_triggers
    ADD CONSTRAINT qz_trigger_to_jobs_fk FOREIGN KEY (sched_name, job_name, job_group) REFERENCES cpv.qz_job_details(sched_name, job_name, job_group);


--
-- Name: sc_prof_caby_mpng sc_prof_caby_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.sc_prof_caby_mpng
    ADD CONSTRAINT sc_prof_caby_mpng_f1 FOREIGN KEY (caby_name) REFERENCES cpv.sc_caby(caby_name);


--
-- Name: sc_prof_mpng sc_prof_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.sc_prof_mpng
    ADD CONSTRAINT sc_prof_mpng_f2 FOREIGN KEY (orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: sc_prof_rule_cond sc_prof_rule_cond_f4; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.sc_prof_rule_cond
    ADD CONSTRAINT sc_prof_rule_cond_f4 FOREIGN KEY (sc_prof_role_rule_oid) REFERENCES cpv.sc_prof_role_rule(sc_prof_role_rule_oid);


--
-- Name: sc_role_caby_mpng sc_role_caby_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.sc_role_caby_mpng
    ADD CONSTRAINT sc_role_caby_mpng_f1 FOREIGN KEY (sc_role_oid) REFERENCES cpv.sc_role(sc_role_oid);


--
-- Name: sc_role_caby_mpng sc_role_caby_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.sc_role_caby_mpng
    ADD CONSTRAINT sc_role_caby_mpng_f2 FOREIGN KEY (caby_name) REFERENCES cpv.sc_caby(caby_name);


--
-- Name: sc_role_glbl_prop sc_role_glbl_prop_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.sc_role_glbl_prop
    ADD CONSTRAINT sc_role_glbl_prop_f1 FOREIGN KEY (sc_role_oid) REFERENCES cpv.sc_role(sc_role_oid);


--
-- Name: sc_rule_attr_opr sc_rule_attr_opr_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.sc_rule_attr_opr
    ADD CONSTRAINT sc_rule_attr_opr_f2 FOREIGN KEY (rule_attr_name) REFERENCES cpv.sc_rule_attr(rule_attr_name);


--
-- Name: spcl_sch spcl_sch_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.spcl_sch
    ADD CONSTRAINT spcl_sch_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: spcl_sch spcl_sch_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.spcl_sch
    ADD CONSTRAINT spcl_sch_f2 FOREIGN KEY (empl_pos_oid) REFERENCES cpv.empl_pos(empl_pos_oid);


--
-- Name: time_off_req_cmnt time_off_req_cmnt_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_req_cmnt
    ADD CONSTRAINT time_off_req_cmnt_f1 FOREIGN KEY (time_off_req_oid) REFERENCES cpv.time_off_req(time_off_req_oid);


--
-- Name: time_off_req_dtls time_off_req_dtls_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_req_dtls
    ADD CONSTRAINT time_off_req_dtls_f1 FOREIGN KEY (time_off_req_oid) REFERENCES cpv.time_off_req(time_off_req_oid);


--
-- Name: time_off_req_entl_cnsm time_off_req_entl_cnsm_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_req_entl_cnsm
    ADD CONSTRAINT time_off_req_entl_cnsm_f1 FOREIGN KEY (time_off_req_dtls_oid) REFERENCES cpv.time_off_req_dtls(time_off_req_dtls_oid);


--
-- Name: time_off_req time_off_req_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_req
    ADD CONSTRAINT time_off_req_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: time_off_req time_off_req_f3; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_req
    ADD CONSTRAINT time_off_req_f3 FOREIGN KEY (apvr_empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: time_off_req_trd time_off_req_trd_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_req_trd
    ADD CONSTRAINT time_off_req_trd_f1 FOREIGN KEY (cur_time_off_req_oid) REFERENCES cpv.time_off_req(time_off_req_oid);


--
-- Name: time_off_req_trd time_off_req_trd_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_req_trd
    ADD CONSTRAINT time_off_req_trd_f2 FOREIGN KEY (trd_time_off_req_oid) REFERENCES cpv.time_off_req(time_off_req_oid);


--
-- Name: time_off_trd_day_mpng time_off_trd_day_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_trd_day_mpng
    ADD CONSTRAINT time_off_trd_day_mpng_f1 FOREIGN KEY (trd_time_off_req_oid) REFERENCES cpv.time_off_req(time_off_req_oid);


--
-- Name: time_off_trd_day_mpng time_off_trd_day_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_trd_day_mpng
    ADD CONSTRAINT time_off_trd_day_mpng_f2 FOREIGN KEY (time_off_req_oid) REFERENCES cpv.time_off_req(time_off_req_oid);


--
-- Name: time_off_type time_off_type_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.time_off_type
    ADD CONSTRAINT time_off_type_f1 FOREIGN KEY (pyrl_cods_oid) REFERENCES cpv.pyrl_cods(pyrl_cods_oid);


--
-- Name: chng_hist_cmnt ttx_change_history_comment_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.chng_hist_cmnt
    ADD CONSTRAINT ttx_change_history_comment_f1 FOREIGN KEY (change_history_oid) REFERENCES cpv.chng_hist(oid);


--
-- Name: user_pref user_pref_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.user_pref
    ADD CONSTRAINT user_pref_f1 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: user_pref user_pref_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.user_pref
    ADD CONSTRAINT user_pref_f2 FOREIGN KEY (sc_role_oid) REFERENCES cpv.sc_role(sc_role_oid);


--
-- Name: user_pref user_pref_f3; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.user_pref
    ADD CONSTRAINT user_pref_f3 FOREIGN KEY (orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: vac_rstr_daly_mp vac_rstr_daly_mp_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_daly_mp
    ADD CONSTRAINT vac_rstr_daly_mp_f1 FOREIGN KEY (rstr_daly_max_off_oid) REFERENCES cpv.rstr_daly_max_off(rstr_daly_max_off_oid);


--
-- Name: vac_rstr_daly_mp vac_rstr_daly_mp_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_daly_mp
    ADD CONSTRAINT vac_rstr_daly_mp_f2 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: vac_rstr_eval_mpng vac_rstr_eval_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_eval_mpng
    ADD CONSTRAINT vac_rstr_eval_mpng_f1 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: vac_rstr_eval_mpng vac_rstr_eval_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_eval_mpng
    ADD CONSTRAINT vac_rstr_eval_mpng_f2 FOREIGN KEY (empl_mstr_oid) REFERENCES cpv.empl_ms(empl_mstr_oid);


--
-- Name: vac_rstr vac_rstr_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr
    ADD CONSTRAINT vac_rstr_f1 FOREIGN KEY (orgn_unit_oid) REFERENCES cpv.orgn_unit(orgn_unit_oid);


--
-- Name: vac_rstr vac_rstr_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr
    ADD CONSTRAINT vac_rstr_f2 FOREIGN KEY (dflt_vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: vac_rstr_locl_cher_mpng vac_rstr_locl_cher_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_locl_cher_mpng
    ADD CONSTRAINT vac_rstr_locl_cher_mpng_f1 FOREIGN KEY (locl_cher_ttl_oid) REFERENCES cpv.locl_cher_ttl(locl_cher_ttl_oid);


--
-- Name: vac_rstr_locl_cher_mpng vac_rstr_locl_cher_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_locl_cher_mpng
    ADD CONSTRAINT vac_rstr_locl_cher_mpng_f2 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: vac_rstr_prof_rule_cond vac_rstr_prof_rule_cond_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_prof_rule_cond
    ADD CONSTRAINT vac_rstr_prof_rule_cond_f1 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: vac_rstr_vac_prof_mpng vac_rstr_vac_prof_mpng_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_vac_prof_mpng
    ADD CONSTRAINT vac_rstr_vac_prof_mpng_f1 FOREIGN KEY (vac_prof_oid) REFERENCES cpv.vac_prof(vac_prof_oid);


--
-- Name: vac_rstr_vac_prof_mpng vac_rstr_vac_prof_mpng_f2; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.vac_rstr_vac_prof_mpng
    ADD CONSTRAINT vac_rstr_vac_prof_mpng_f2 FOREIGN KEY (vac_rstr_oid) REFERENCES cpv.vac_rstr(vac_rstr_oid);


--
-- Name: work_grp_code work_grp_code_f1; Type: FK CONSTRAINT; Schema: cpv; Owner: postgres
--

ALTER TABLE ONLY cpv.work_grp_code
    ADD CONSTRAINT work_grp_code_f1 FOREIGN KEY (hol_grp_code) REFERENCES cpv.hol_grp_code(hol_grp_code);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO cpv;


--
-- Name: TABLE allc_chng_cmnt; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.allc_chng_cmnt TO cpv_all;


--
-- Name: TABLE bank_time_neut_code; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.bank_time_neut_code TO cpv_all;


--
-- Name: TABLE bank_time_off_rule_attrs; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.bank_time_off_rule_attrs TO cpv_all;


--
-- Name: TABLE bid_open; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.bid_open TO cpv_all;


--
-- Name: TABLE bid_reqs; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.bid_reqs TO cpv_all;


--
-- Name: TABLE bid_reqs_cmnt; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.bid_reqs_cmnt TO cpv_all;


--
-- Name: TABLE bid_reqs_time_off_req_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.bid_reqs_time_off_req_mpng TO cpv_all;


--
-- Name: TABLE chng_hist; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.chng_hist TO cpv_all;


--
-- Name: TABLE chng_hist_cmnt; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.chng_hist_cmnt TO cpv_all;


--
-- Name: TABLE chng_hist_data; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.chng_hist_data TO cpv_all;


--
-- Name: TABLE empl_bank_time; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_bank_time TO cpv_all;


--
-- Name: TABLE empl_bank_time_cmnt; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_bank_time_cmnt TO cpv_all;


--
-- Name: TABLE empl_entl; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_entl TO cpv_all;


--
-- Name: TABLE empl_hol_pos_pref; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_hol_pos_pref TO cpv_all;


--
-- Name: TABLE empl_hol_qlfn; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_hol_qlfn TO cpv_all;


--
-- Name: TABLE empl_ms; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_ms TO cpv_all;


--
-- Name: TABLE empl_pos; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_pos TO cpv_all;


--
-- Name: TABLE empl_pos_dtls; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_pos_dtls TO cpv_all;


--
-- Name: TABLE empl_pos_sch; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_pos_sch TO cpv_all;


--
-- Name: TABLE empl_role_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_role_mpng TO cpv_all;


--
-- Name: TABLE empl_role_org_unit_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_role_org_unit_mpng TO cpv_all;


--
-- Name: TABLE empl_vac; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_vac TO cpv_all;


--
-- Name: TABLE empl_vac_flex_chocs; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_vac_flex_chocs TO cpv_all;


--
-- Name: TABLE empl_vac_sel; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.empl_vac_sel TO cpv_all;


--
-- Name: TABLE entl_type_for_pay_code_ctgy; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.entl_type_for_pay_code_ctgy TO cpv_all;


--
-- Name: TABLE hol_asmt; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.hol_asmt TO cpv_all;


--
-- Name: TABLE hol_dtls; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.hol_dtls TO cpv_all;


--
-- Name: TABLE hol_grp_code; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.hol_grp_code TO cpv_all;


--
-- Name: TABLE hol_pos_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.hol_pos_mpng TO cpv_all;


--
-- Name: TABLE hol_prof; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.hol_prof TO cpv_all;


--
-- Name: TABLE hol_sign_up_empl; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.hol_sign_up_empl TO cpv_all;


--
-- Name: TABLE hol_sign_up_empl_pos_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.hol_sign_up_empl_pos_mpng TO cpv_all;


--
-- Name: TABLE hol_sign_up_empl_shft_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.hol_sign_up_empl_shft_mpng TO cpv_all;


--
-- Name: TABLE locl_cher_ttl; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.locl_cher_ttl TO cpv_all;


--
-- Name: TABLE minm_stfg; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.minm_stfg TO cpv_all;


--
-- Name: TABLE minm_stfg_shft_dtls; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.minm_stfg_shft_dtls TO cpv_all;


--
-- Name: TABLE next_year_vac_awrd; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.next_year_vac_awrd TO cpv_all;


--
-- Name: TABLE orgn_strc; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.orgn_strc TO cpv_all;


--
-- Name: TABLE orgn_strc_type; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.orgn_strc_type TO cpv_all;


--
-- Name: TABLE orgn_unit; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.orgn_unit TO cpv_all;


--
-- Name: TABLE orgn_unit_role_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.orgn_unit_role_mpng TO cpv_all;


--
-- Name: TABLE orgn_unit_rstr_daly_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.orgn_unit_rstr_daly_mpng TO cpv_all;


--
-- Name: TABLE orgn_unit_rstr_rule_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.orgn_unit_rstr_rule_mpng TO cpv_all;


--
-- Name: TABLE orgn_unit_time_off_type_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.orgn_unit_time_off_type_mpng TO cpv_all;


--
-- Name: TABLE over_time_sign_up_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.over_time_sign_up_mpng TO cpv_all;


--
-- Name: TABLE peak_week_dsgn; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.peak_week_dsgn TO cpv_all;


--
-- Name: TABLE peak_week_dsgn_dtls; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.peak_week_dsgn_dtls TO cpv_all;


--
-- Name: TABLE pos_empl_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.pos_empl_mpng TO cpv_all;


--
-- Name: TABLE pos_fill; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.pos_fill TO cpv_all;


--
-- Name: TABLE pyrl_cods; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.pyrl_cods TO cpv_all;


--
-- Name: TABLE qz_blob_triggers; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_blob_triggers TO cpv_all;


--
-- Name: TABLE qz_calendars; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_calendars TO cpv_all;


--
-- Name: TABLE qz_cron_triggers; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_cron_triggers TO cpv_all;


--
-- Name: TABLE qz_fired_triggers; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_fired_triggers TO cpv_all;


--
-- Name: TABLE qz_job_details; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_job_details TO cpv_all;


--
-- Name: TABLE qz_locks; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_locks TO cpv_all;


--
-- Name: TABLE qz_paused_trigger_grps; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_paused_trigger_grps TO cpv_all;


--
-- Name: TABLE qz_scheduler_state; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_scheduler_state TO cpv_all;


--
-- Name: TABLE qz_simple_triggers; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_simple_triggers TO cpv_all;


--
-- Name: TABLE qz_simprop_triggers; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_simprop_triggers TO cpv_all;


--
-- Name: TABLE qz_triggers; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.qz_triggers TO cpv_all;


--
-- Name: TABLE rstr_daly_max_off; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.rstr_daly_max_off TO cpv_all;


--
-- Name: TABLE rstr_rule_attrs; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.rstr_rule_attrs TO cpv_all;


--
-- Name: TABLE sc_caby; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_caby TO cpv_all;


--
-- Name: TABLE sc_prof_caby_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_prof_caby_mpng TO cpv_all;


--
-- Name: TABLE sc_prof_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_prof_mpng TO cpv_all;


--
-- Name: TABLE sc_prof_role_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_prof_role_mpng TO cpv_all;


--
-- Name: TABLE sc_prof_role_rule; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_prof_role_rule TO cpv_all;


--
-- Name: TABLE sc_prof_rule_cond; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_prof_rule_cond TO cpv_all;


--
-- Name: TABLE sc_role; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_role TO cpv_all;


--
-- Name: TABLE sc_role_caby_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_role_caby_mpng TO cpv_all;


--
-- Name: TABLE sc_role_glbl_prop; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_role_glbl_prop TO cpv_all;


--
-- Name: TABLE sc_rule_attr; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_rule_attr TO cpv_all;


--
-- Name: TABLE sc_rule_attr_opr; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_rule_attr_opr TO cpv_all;


--
-- Name: TABLE sc_rule_opr; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sc_rule_opr TO cpv_all;


--
-- Name: TABLE sen_rstr_dump; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.sen_rstr_dump TO cpv_all;


--
-- Name: TABLE spcl_sch; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.spcl_sch TO cpv_all;


--
-- Name: TABLE time_off_req; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_req TO cpv_all;


--
-- Name: TABLE time_off_req_cmnt; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_req_cmnt TO cpv_all;


--
-- Name: TABLE time_off_req_dtls; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_req_dtls TO cpv_all;


--
-- Name: TABLE time_off_req_entl_cnsm; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_req_entl_cnsm TO cpv_all;


--
-- Name: TABLE time_off_req_trd; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_req_trd TO cpv_all;


--
-- Name: TABLE time_off_rule_attrs; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_rule_attrs TO cpv_all;


--
-- Name: TABLE time_off_trd_day_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_trd_day_mpng TO cpv_all;


--
-- Name: TABLE time_off_type; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_type TO cpv_all;


--
-- Name: TABLE time_off_type_temp; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.time_off_type_temp TO cpv_all;


--
-- Name: TABLE user_pref; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.user_pref TO cpv_all;


--
-- Name: TABLE vac_prof; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_prof TO cpv_all;


--
-- Name: TABLE vac_rstr; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_rstr TO cpv_all;


--
-- Name: TABLE vac_rstr_daly_mp; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_rstr_daly_mp TO cpv_all;


--
-- Name: TABLE vac_rstr_eval_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_rstr_eval_mpng TO cpv_all;


--
-- Name: TABLE vac_rstr_locl_cher_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_rstr_locl_cher_mpng TO cpv_all;


--
-- Name: TABLE vac_rstr_prof_rule_cond; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_rstr_prof_rule_cond TO cpv_all;


--
-- Name: TABLE vac_rstr_rule_attr; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_rstr_rule_attr TO cpv_all;


--
-- Name: TABLE vac_rstr_rule_opr; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_rstr_rule_opr TO cpv_all;


--
-- Name: TABLE vac_rstr_vac_prof_mpng; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.vac_rstr_vac_prof_mpng TO cpv_all;


--
-- Name: TABLE work_grp_code; Type: ACL; Schema: cpv; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE cpv.work_grp_code TO cpv_all;


--
-- PostgreSQL database dump complete
--

