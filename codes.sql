--

--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: codes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--
drop table codes;

CREATE TABLE codes (
  code character varying(255),
 name text,
 parent character varying(255),
 children character varying(255),
 all_children_count character varying(255)
);


-- ALTER TABLE public.codes OWNER TO postgres;

--
-- Data for Name: codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY codes (code, name, parent, children, all_children_count) FROM stdin;
15261	Child soldiers (prevention and demobilisation) 	152	15261.01,15261.02,15261.03	3
16030	Housing policy and administrative management	160	16030.01,16030.02,16030.03	3
21020	Road transport	210	21020.01,21020.02,21020.03	3
12182	Medical research	121	12182.01	3
15230	Post-conflict peace-building (un)	152	15230.01	3
16050	Multisector aid for social services 	160	16050.01	3
23050	Gas distribution	230	23050.01,23050.02	3
3	Production sectors	0	310,320,330	3
7	Humanitarian aid	0	70000,720,730,740	3
23040	Electrical transmission/ distribution	230	23040.01,23040.02,23040.03	3
23055	Petroleum distribution and storage	230	23055.01,23055.02	3
24020	Monetary institutions	240	24020.01	3
24030	Formal sector financial intermediaries	240	24030.01,24030.02,24030.03	3
250	Business and other services	200	25010,25020,25081	3
25020	Privatisation	250	25020.01	3
25081	Business education and training	250	25081.01	3
310	Agriculture, forestry, fishing	300	31000,311,312,313	3
31181	Agricultural education/training	311	31181.01,31181.02	3
31182	Agricultural research 	311	31182.01,31182.02,31182.03	3
31281	Forestry education/training	312	31281.01	3
31282	Forestry research	312	31282.01	3
31291	Forestry services	312	31291.01,31291.02,31291.03	3
31381	Fishery education/training	313	31381.01	3
321	Industry	320	32105,32110,32120,32130,32140,32181,32182,32191	3
32140	Cottage industries and handicraft	321	32140.01	3
32181	Industry education and training	321	32181.01	3
32281	Mining education / training	322	32281.01	3
323	Construction	320	32310	3
33130	Regional trade agreements (rtas)	331	33130.01,33130.02	3
330	Trade and tourism	300	331,332	3
33181	Trade education/training	331	33181.01	3
41010	Environmental policy and administrative management	410	41010.01,41010.02,41010.03	3
41040	Site preservation	410	41040.01	3
420	Women	400	42010	3
43010	Multisector aid	430	43010.01	3
43081	Multisector education/training	430	43081.01	3
43082	Research/scientific institutions	430	43082.01	3
510	General budget support	500	51010	3
910	Administrative costs of donors	900	91010	3
92010	Support to national ngos	920	92010.01	3
92020	Support to international ngos	920	92020.01	3
11120.04	Language training	11120		3
21061	Storage	210	21061.01	3
332	Tourism	330	33210	3
16010	Social/ welfare services	160	16010.01,16010.02,16010.03,16010.04,16010.05,16010.06,16010.07,16010.08,16010.09,16010.10,16010.11	3
210	Transport and storage	200	21000,21005,21010,21020,21030,21040,21050,21061,21081	3
22010	Communications policy and administrative management	220	22010.01,22010.02,22010.03,22010.04	3
22040	Information and communication technology (ict)	220	22040.01,22040.02,22040.03,22040.04	3
23005	Energy generation and supply, purpose unspecified or does not fit under any other applicable codes	230	23005.01	3
23010	Energy policy and administrative management	230	23010.01,23010.02,23010.03,23010.04,23010.05	3
230	Energy generation and supply	200	23000,23005,23010,23020,23030,23040,23050,23055,23081,23082	3
23020	Power generation/non-renewable sources 	230	23020.01,23020.02,23020.03,23020.04,23020.05,23020.06	3
23030	Power generation/renewable sources 	230	23030.01,23030.02,23030.03,23030.04,23030.05,23030.06,23030.07	3
24005	Banking and financial services, purpose unspecified or does not fit under any other applicable codes	240	24005.01	3
240	Banking and financial services	200	24000,24005,24010,24020,24030,24040,24081	3
24010	Financial policy and administrative management	240	24010.01,24010.02,24010.03,24010.04	3
24040	Informal/semi-formal financial intermediaries	240	24040.01,24040.02,24040.03	3
24081	Education/training in banking and financial services	240	24081.01	3
25010	Business support services and institutions	250	25010.01,25010.02,25010.03,25010.04,25010.05,25010.06,25010.07,25010.08	3
31105	Agriculture, purpose unspecified or does not fit under any other applicable codes	311	31105.01	3
31110	Agricultural policy and administrative management	311	31110.01,31110.02,31110.03,31110.04,31110.05	3
31120	Agricultural development	311	31120.01,31120.02,31120.03,31120.04,31120.05,31120.06,31120.07,31120.08,31120.09	3
311	Agriculture	310	31100,31105,31110,31120,31130,31140,31150,31181,31182,31191	3
31130	Agricultural land resources	311	31130.01,31130.02,31130.03,31130.04,31130.05,31130.06,31130.07	3
31140	Agricultural water resources	311	31140.01,31140.02,31140.03,31140.04,31140.05	3
31150	Agricultural inputs	311	31150.01,31150.02,31150.03,31150.04	3
31191	Agricultural services, purpose	311	31191.01,31191.02,31191.03,31191.04,31191.05	3
31205	Forestry, purpose unspecified or does not fit under any other applicable codes	312	31205.01	3
31210	Forestry policy and administrative management	312	31210.01,31210.02,31210.03,31210.04	3
31220	Forestry development	312	31220.01,31220.02,31220.03,31220.04,31220.05,31220.06,31220.07,31220.08	3
312	Forestry	310	31205,31210,31220,31281,31282,31291	3
31305	Fishing, purpose unspecified or does not fit under any other applicable codes	313	31305.01	3
313	Fishing	310	31300,31305,31310,31320,31330,31381,31382,31391	3
31310	Fishing policy and administrative management	313	31310.01,31310.02,31310.03	3
31320	Fishery development	313	31320.01,31320.02,31320.03,31320.04,31320.05	3
31330	Fishing development	313	31330.01,31330.02,31330.03	3
31382	Fishery research	313	31382.01,31382.02,31382.03	3
31391	Fishery services	313	31391.01,31391.02,31391.03,31391.04,31391.05	3
320	Industry, mining, construction	300	32000,321,322,323	3
32105	Industry, purpose unspecified (includes manufacturing of goods not specified below) or does not fit under any other applicable codes	321	32105.01	3
32110	Industrial policy and administrative management	321	32110.01,32110.02,32110.03	3
32120	Industrial development	321	32120.01,32120.02,32120.03,32120.04,32120.05,32120.06,32120.07,32120.08,32120.09,32120.10,32120.11,32120.12,32120.13,32120.14,32120.15,32120.16,32120.17	3
32130	Small and medium-sized enterprises (sme) development	321	32130.01,32130.02	3
32182	Technological research and development	321	32182.01	3
32191	Industry services	321	32191.01,32191.02,32191.03,32191.04	3
32205	Mineral resources and mining, purpose unspecified or does not fit under any other applicable codes	322	32205.01	3
322	Mineral resources and mining	320	32200,32205,32210,32220,32281	3
32210	Mineral/mining policy and administrative management	322	32210.01,32210.02,32210.03,32210.04	3
32220	Mineral/metal prospection and exploration	322	32220.01,32220.02,32220.03,32220.04,32220.05,32220.06,32220.07,32220.08,32220.09,32220.10,32220.11	3
32310	Construction policy and administrative management	323	32310.01,32310.02	3
33105	Trade policy and regulations, purpose unspecified (includes trade and trade promotion activities) or does not fit under any other applicable codes	331	33105.01	3
33110	Trade policy and administrative management	331	33110.01,33110.02,33110.03,33110.04,33110.05	3
331	Trade policy and regulations	330	33100,33105,33110,33120,33130,33140,33181	3
33120	Trade facilitation	331	33120.01,33120.02,33120.03,33120.04	3
33140	Multilateral trade negotiations	331	33140.01	3
33210	Tourism policy and administrative management	332	33210.01,33210.02,33210.03,33210.04	3
41005	General environmental protection, purpose unspecified (includes miscellaneous conservation and protection measures not mentioned below) or does not fit under any other applicable codes	410	41005.01	3
41020	Biosphere protection	410	41020.01,41020.02,41020.03	3
41030	Bio-diversity	410	41030.01,41030.02,41030.03	3
41050	Flood prevention/control	410	41050.01,41050.02,41050.03	3
41081	Environmental education/ training	410	41081.01	3
41082	Environmental research	410	41082.01,41082.02	3
410	General environmental protection	400	41000,41005,41010,41020,41030,41040,41050,41081,41082	3
42010	Women in development	420	42010.01,42010.02,42010.03,42010.04,42010.05,42010.06	3
43030	Urban development and management	430	43030.01,43030.02,43030.03,43030.04,43030.05,43030.06	3
43040	Rural development	430	43040.01,43040.02,43040.03,43040.04,43040.05,43040.06,43040.07,43040.08	3
430	Other	400	43010,43030,43040,43050,43081,43082	3
43050	Non-agricultural alternative development	430	43050.01,43050.02	3
51010	General budget support	510	51010.01,51010.02,51010.03,51010.04,51010.05	3
520	Development aid/food security assistance	500	52010	3
52010	Food aid/food security programmes	520	52010.01,52010.02,52010.03	3
53030	Import support (capital goods)	530	53030.01,53030.02,53030.03	3
530	Other commodity assistance	500	53030,53040,53050	3
53040	Import support (commodities)	530	53040.01,53040.02,53040.03,53040.04	3
53050	Export support	530	53050.01	3
60010	Action relating to debt	600	60010.01,60010.02,60010.03,60010.04	3
60020	Debt forgiveness 	600	60020.01,60020.02	3
60030	Relief of multilateral debt	600	60030.01	3
60040	Rescheduling and refinancing	600	60040.01	3
72010	Material relief assistance and services	720	72010.01	3
72020	Emergency health services/support	720	72020.01	3
72030	Water and sanitation services/support	720	72030.01	3
720	Emergency response	700	72000,72010,72020,72030,72040,72050	3
72040	Emergency food aid	720	72040.01	3
72050	Relief co-ordination; protection and support services	720	72050.01	3
730	Reconstruction relief	700	73010	3
73010	Reconstruction relief and rehabilitation	730	73010.01,73010.02,73010.03,73010.04,73010.05	3
740	Disaster prevention and preparedness	700	74010	3
74010	Disaster prevention and preparedness	740	74010.01,74010.02,74010.03,74010.04,74010.05,74010.06,74010.07,74010.08,74010.09	3
91010	Administrative costs	910	91010.01	3
92005	Support to non-governmental organizations and government organizations, purpose unspecified or does not fit under any other applicable codes	920	92005.01	3
920	Support to non- governmental organisations (ngos) and government organizations	900	92000,92005,92010,92020,92030	3
92030	Support to local and regional ngos	920	92030.01	3
930	Refugees in donor countries	900	93010	3
93010	Refugees in donor countries	930	93010.01	3
99810	Sectors not specified	998	99810.01	3
99820	Promotion of development awareness	998	99820.01	3
998	Unallocated/  unspecified	900	99810,99820	3
11105.01	Education, level unspecified, activity unspecified or does not fit under any other applicable codes	11105		3
11110.01	Education policy and administrative management, activity unspecified or does not fit elsewhere in group	11110		3
11110.02	Education sector policy, planning and programmes	11110		3
11110.03	Institution capacity building, education	11110		3
11110.04	Aid to education ministries, administration and management systems	11110		3
11110.05	School management and governance	11110		3
11110.06	Curriculum development 	11110		3
11120.01	Education facilities and training, activity unspecified or does not fit elsewhere in group	11120		3
11120.02	Educational equipment, supplies, and materials	11120		3
11120.03	Subsidiary services to education (boarding facilities, staff housing)	11120		3
11120.05	Education infrastructure	11120		3
11120.06	Colloquia, seminars, lectures, etc.	11120		3
11130.01	Teacher training, level unspecified, activities	11130		3
11130.02	In-service and pre-service training	11130		3
11130.03	Materials development	11130		3
11182.01	Educational research, activity unspecified or does not fit elsewhere in group	11182		3
11182.02	Research and studies on education effectiveness, relevance and quality	11182		3
11182.03	Systematic evaluation and monitoring	11182		3
11220.01	Basic/primary education, activity unspecified or does not fit under any other applicable codes	11220		3
11220.02	Basic education, policy and administrative management	11220		3
11220.03	Basic education infrastructure	11220		3
11220.04	Formal and non-formal primary education for children	11220		3
11220.05	Provision of learning materials, equipment, supplies	11220		3
11220.06	Primary education, teacher training	11220		3
11230.01	Basic life skills for youth and adults, activity unspecified 	11230		3
11230.02	Formal and non-formal education for basic life skills for young people and adults (adult education)	11230		3
11230.03	Literacy and numeracy training	11230		3
11240.01	Early childhood education, activity unspecified or does not fit elsewhere in group	11240		3
11240.02	Formal and non-formal pre-school education	11240		3
11320.01	Secondary education, activity unspecified or does not fit under any other applicable codes	11320		3
11320.02	Secondary education, policy and administrative management	11320		3
11320.03	Secondary education infrastructure	11320		3
11320.04	Formal and non-formal secondary education	11320		3
11320.05	Provision of learning materials, equipment, supplies	11320		3
11320.06	Scholarships	11320		3
11320.07	Secondary education, teacher training	11320		3
11330.01	Vocational training, activity unspecified	11330		3
11330.02	Elementary vocational training and secondary level technical education	11330		3
11330.03	On the job training	11330		3
11330.04	Apprenticeships	11330		3
11420.01	Post-secondary education, activity unspecified or does not fit elsewhere in group	11420		3
11420.02	Post-secondary education, policy and administrative management	11420		3
11420.03	Post-secondary education infrastructure	11420		3
11420.04	Formal and non-formal post-secondary education	11420		3
11420.05	Provision of learning materials, equipment, supplies	11420		3
11420.06	Scholarships for post-secondary education	11420		3
11420.07	Post-secondary education, teacher training	11420		3
11430.01	Advanced technical and managerial training, activity unspecified	11430		3
11430.02	Professional-level vocational training programmes	11430		3
11430.03	On the job training	11430		3
11430.04	Apprenticeships	11430		3
11430.05	Managerial training	11430		3
12005.01	Health, activity unspecified or does not fit under any other applicable codes	12005		3
12105.01	Health, general, activity unspecified	12105		3
12110.01	Health policy and administrative management, activity unspecified or does not fit elsewhere in group	12110		3
12110.02	Health sector policy, planning and programmes	12110		3
12110.03	Institution capacity building, health general	12110		3
12110.04	Aid to health ministries, public health administration	12110		3
12110.05	Medical insurance programs	12110		3
12181.01	All medical education/training activities	12181		3
12182.01	All general medical research activities	12182		3
12191.01	Medical services, activity unspecified or does not fit elsewhere in group	12191		3
12191.02	Laboratories	12191		3
12191.03	Specialized clinics and hospitals	12191		3
12191.04	Specialized medical equipment and supplies	12191		3
12191.05	Ambulances	12191		3
12191.06	Dental services	12191		3
12191.07	Mental health care	12191		3
12191.08	Control of non-infectious diseases	12191		3
12191.09	Drug and substance abuse control and counseling	12191		3
12220.01	Basic health care, activity unspecified or does not fit elsewhere in group	12220		3
12220.02	Basic/primary health care programmes	12220		3
12220.03	Paramedical and nursing care programmes	12220		3
12220.04	Supply of drugs, medicines and vaccines (basic)	12220		3
12220.05	Infant and child health	12220		3
12230.01	Basic health infrastructure, activity unspecified or does not fit elsewhere in group	12230		3
12230.02	Basic hospitals, clinics and dispensaries	12230		3
12230.03	Basic health medical equipment and supplies 	12230		3
12240.01	Basic nutrition, activity unspecified or does not fit elsewhere in group	12240		3
12240.02	Direct feeding programmes	12240		3
12240.03	Monitoring of nutritional status	12240		3
12240.04	Provision of nutrients (vitamin a, iodine, iron)	12240		3
12240.05	Nutrition and food hygiene education	12240		3
12240.06	Household food security	12240		3
12250.01	All prevention and control activities	12250		3
12250.02	Other infectious and parasitic disease, control	12250		3
12250.03	Malaria control	12250		3
12250.04	Tuberculosis control	12250		3
12250.05	Helminthiasis 	12250		3
12250.06	Polio 	12250		3
12250.07	Acute respiratory infections 	12250		3
12261.01	Health education, activity unspecified or does not fit elsewhere in group	12261		3
12261.02	Information, education and training	12261		3
12261.03	Public health and awareness campaigns	12261		3
12281.01	All staff training, basic health care services	12281		3
13005.01	Population policies/ programmes and reproductive health, activity unspecified 	13005		3
13010.01	Population policy and administrative management, activity unspecified or does not fit elsewhere in group	13010		3
13010.02	Population/development policies	13010		3
13010.03	Institution capacity building, population policy and reproductive health	13010		3
13010.04	Census work, vital registration	13010		3
13010.05	Migration data	13010		3
13010.06	Demographic research	13010		3
13010.07	Reproductive health research	13010		3
13020.01	Reproductive health care, activity unspecified or does not fit elsewhere in group	13020		3
13020.02	Promotion of reproductive health	13020		3
13020.03	Prenatal and postnatal care including delivery	13020		3
13020.04	Prevention and treatment of infertility	13020		3
13020.05	Prevention and management of consequences of abortion	13020		3
13020.06	Safe motherhood activities	13020		3
13030.01	Family planning, activity unspecified or does not fit elsewhere in group	13030		3
13030.02	Family planning services 	13030		3
13030.03	Information, education and communication (iec) activities	13030		3
13030.04	Delivery of contraceptives	13030		3
13030.05	Capacity building and training	13030		3
13040.01	Unspecified std and hiv/aids activities or does not fit elsewhere in group	13040		3
13040.02	Information, education and communication	13040		3
13040.03	Testing	13040		3
13040.04	Prevention	13040		3
13040.05	Treatment, care	13040		3
13081.01	Staff education and training, p&r health care services	13081		3
14005.01	Water supply and sanitation, activity unspecified or does not fit under any other applicable codes	14005		3
14010.01	Water resources policy and administrative management, activity unspecified or does not fit elsewhere in group	14010		3
14010.02	Water sector policy, planning and programmes	14010		3
14010.03	Institution capacity building, water	14010		3
14015.01	Water resources protection, activity unspecified or does not fit elsewhere in group	14015		3
14015.02	Inland surface waters	14015		3
14015.03	Water conservation	14015		3
14015.04	Prevention of water contamination	14015		3
14020.01	Water supply and sanitation - large systems, activity unspecified or does not fit elsewhere in group	14020		3
14020.02	Water desalination plants	14020		3
14020.03	Sewerage	14020		3
14020.04	Intakes, storage, pumping stations, conveyance and distribution systems	14020		3
14020.05	Domestic and industrial waste water treatment plants	14020		3
14020.06	Water supply assessments and studies	14020		3
14030.01	Basic drinking water supply and basic sanitation, activity unspecified or does not fit elsewhere in group	14030		3
14030.02	Water supply and sanitation, low-cost technologies	14030		3
14030.03	Small system sewerage	14030		3
14040.01	River development, activity unspecified or does not fit elsewhere in group	14040		3
14040.02	Integrated river basin projects	14040		3
14040.03	River flow control	14040		3
14040.04	Dams and reservoirs	14040		3
14050.01	Waste management/disposal, activity unspecified or does not fit elsewhere in group	14050		3
14050.02	Municipal and industrial solid waste management	14050		3
14050.03	Collection, disposal and treatment	14050		3
14050.04	Landfill areas	14050		3
14050.05	Composting and reuse	14050		3
14081.01	All water supply and sanitation education/training activities	14081		3
14082.01	All water research activities	14082		3
14082.02	Hydrogeology	14082		3
15105.01	Government and civil society, activity unspecified or does not fit under any other applicable codes	15105		3
15110.01	Economic and development policy/planning, activity unspecified or does not fit elsewhere in group	15110		3
15110.02	Macro-economic, fiscal and monetary policy and planning	15110		3
15110.03	Institutional capacity building, government	15110		3
15110.04	Support to other ministries and government departments when sector cannot be specified	15110		3
15110.05	Development planning and preparation of structural reforms	15110		3
15120.01	Public sector financial management, activity unspecified or does not fit elsewhere in group	15120		3
15120.02	Improving public expenditure and financial management systems	15120		3
15120.03	Tax assessment procedures	15120		3
15120.04	Measures against waste, fraud and corruption	15120		3
15130.01	Legal and judicial development, activity unspecified or does not fit elsewhere in group	15130		3
15130.02	Constitutional development, legal drafting	15130		3
15130.03	Institutional strengthening of legal and judicial systems	15130		3
15130.04	Legal training and education	15130		3
15130.05	Legal advice and services	15130		3
15130.06	Law enforcement and crime prevention	15130		3
15140.01	Government administration, activity unspecified or does not fit elsewhere in group 	15140		3
15140.02	General government services not elsewhere specified	15140		3
15140.03	Systems of government	15140		3
15140.04	Civil service and administrative reform	15140		3
15140.05	Government infrastructure	15140		3
15150.01	Strengthening civil society, activity unspecified or does not fit elsewhere in group	15150		3
15150.02	Community participation and development	15150		3
15150.03	Cooperatives	15150		3
15150.04	Grassroots organizations	15150		3
15150.05	Other participatory planning and decision making procedures and institutions	15150		3
15150.06	Elections	15150		3
15150.07	Human rights	15150		3
15150.08	Free flow of information	15150		3
15150.09	Women's equality organisations and institutions	15150		3
15205.01	Conflict prevention and resolution, peace and security, activity unspecified or does not fit under any other applicable codes	15205		3
15210.01	Security system management and reform, activity unspecified or does not fit elsewhere in group	15210		3
15210.02	Other security assistance	15210		3
15220.01	Support for civilian peace-building activities	15220		3
15230.01	Un post-conflict peace-building activities	15230		3
15240.01	Reintegration and salw control, activity unspecified or does not fit elsewhere in this group	15240		3
31291.03	Forestry financial services	31291		3
15240.02	Reintegration of demobilised military personnel into the economy	15240		3
15240.03	Conversion of production facilities from military to civilian outputs	15240		3
15240.04	Assistance to control, prevent and/or reduce the proliferation of salw	15240		3
15250.01	Explosive mine removal	15250		3
15261.01	Child soldiers, activity unspecified or does not fit elsewhere in group	15261		3
15261.02	Support to prevent the recruitment of child soldiers	15261		3
15261.03	Support to demobilize child soldiers	15261		3
16010.01	Social/welfare services, activity unspecified or does not fit elsewhere in this group	16010		3
16010.02	Social legislation and administration	16010		3
16010.03	Institution capacity building, social welfare services	16010		3
16010.04	Social security and other social schemes	16010		3
16010.05	Support for vulnerable groups	16010		3
16010.06	Social dimensions of structural adjustment	16010		3
16010.07	Culture and recreation	16010		3
16010.08	Statistical capacity building	16010		3
16010.09	Narcotics control	16010		3
16010.10	Social mitigation of hiv/aids	16010		3
16010.11	Social infrastructure	16010		3
16020.01	Employment policy and administrative management, activity unspecified or does not fit elsewhere in group	16020		3
16020.02	Employment policy and planning	16020		3
16020.03	Labor law and labor unions	16020		3
16020.04	Institution capacity building, employment	16020		3
16020.05	Employment support programs	16020		3
16020.06	Occupational safety and health	16020		3
16020.07	Combating child labor	16020		3
16030.01	Housing policy and administrative management, activity unspecified or does not fit elsewhere in group	16030		3
16030.02	Housing sector policy, planning and programmes	16030		3
16030.03	Low-cost housing	16030		3
16050.01	Basic multisector social services activities	16050		3
16081.01	All social services education/training activities	16081		3
21005.01	Transport and storage, activity unspecified or does not fit under any other applicable codes	21005		3
21010.01	Transport and storage, activity unspecified or does not fit elsewhere in group	21010		3
21010.02	Transport sector policy, planning and programs	21010		3
21010.03	Institution capacity building, transport	21010		3
21010.04	Aid to transport ministries	21010		3
21020.01	Road transport, activity unspecified or does not fit elsewhere in group	21020		3
21020.02	Road infrastructure, road vehicles	21020		3
21020.03	Public transportation systems	21020		3
21030.01	Rail transport, activity unspecified or does not fit elsewhere in group	21030		3
23030.07	Biomass	23030		3
21030.02	Rail infrastructure, rail equipment, locomotives, other rolling stock	21030		3
21030.03	Light rail (tram), underground systems	21030		3
21040.01	Water transport, activity unspecified or does not fit elsewhere in group	21040		3
21040.02	Harbors and docks, harbor guidance systems	21040		3
21040.03	Ocean ships and boats	21040		3
21040.04	River and other inland water transport	21040		3
21050.01	Air transport, activity unspecified or does not fit elsewhere in group	21050		3
21050.02	Airports, airport guidance systems	21050		3
21050.03	Airplanes, airplane maintenance equipment	21050		3
21061.01	Unspecified storage activities	21061		3
21081.01	All transport education/training activities	21081		3
22005.01	Communications, activity unspecified or does not fit under any other applicable codes	22005		3
22010.01	Communications policy and administrative management, activity unspecified or does not fit elsewhere in group	22010		3
22010.02	Communications sector policy, planning and programs	22010		3
22010.03	Institution capacity building, communications	22010		3
22010.04	Postal services development	22010		3
22020.01	Telecommunication, activity unspecified or does not fit elsewhere in group	22020		3
22020.02	Telephone networks	22020		3
22020.03	Telecommunication satellites	22020		3
22020.04	Earth stations	22020		3
22030.01	Radio activities	22030		3
22030.02	Television activities	22030		3
22030.03	Print media activities	22030		3
22040.01	Information and communication technology (ict), activity unspecified or does not fit elsewhere in group	22040		3
22040.02	Computers 	22040		3
22040.03	Internet access	22040		3
22040.04	It training	22040		3
22081.01	All communications education/training activities	22081		3
23005.01	Energy generation and supply, activity unspecified or does not fit under any other applicable codes	23005		3
23010.01	Energy policy and administrative management, activity unspecified or does not fit elsewhere in group	23010		3
23010.02	Energy sector policy, planning and programs	23010		3
23010.03	Institution capacity building, energy	23010		3
23010.04	Aid to energy ministries	23010		3
23010.05	Energy conservation	23010		3
23020.01	Power generation/non-renewable sources, activity unspecified or does not fit elsewhere in group	23020		3
23020.02	Oil-fired power plants	23020		3
23020.03	Gas-fired power plants	23020		3
23020.04	Coal-fired power plants	23020		3
23020.05	Nuclear power plants	23020		3
23020.06	Combined heat and power plants (chp)	23020		3
23030.01	Power generation/renewable sources, activity unspecified or does not fit elsewhere in group	23030		3
23030.02	Hydro-electric power plants	23030		3
23030.03	Geothermal energy	23030		3
23030.04	Solar energy	23030		3
23030.05	Wind power	23030		3
23030.06	Ocean power	23030		3
33210.02	Tourism infrastructure	33210		3
23040.01	Electrical transmission/ distribution, activity unspecified or does not fit elsewhere in group	23040		3
23040.02	Electrical distribution from power source to end user	23040		3
23040.03	Transmission lines	23040		3
23050.01	Gas distribution activities	23050		3
23050.02	Gas storage activities	23050		3
23055.01	Petroleum distribution 	23055		3
23055.02	Petroleum storage	23055		3
23081.01	All energy education/training activities	23081		3
23082.01	All energy research activities	23082		3
24005.01	Banking and financial services, activity unspecified or does not fit under any other applicable codes	24005		3
24010.01	Financial policy and administrative management, activity unspecified or does not fit elsewhere in group	24010		3
24010.02	Finance sector policy, planning and programs	24010		3
24010.03	Institution capacity building, financial	24010		3
24010.04	Financial markets and systems	24010		3
24020.01	All activities relating to monetary institutions	24020		3
24030.01	Other financial activities, or unspecified 	24030		3
24030.02	All formal sector financial intermediaries	24030		3
24030.03	Credit lines	24030		3
24040.01	Informal/semi-formal financial intermediaries, activity unspecified or does not fit elsewhere in group	24040		3
24040.02	Micro-credit operations	24040		3
24040.03	Savings and credit co-operatives	24040		3
24081.01	All banking and financial services education/training activities	24081		3
25010.01	Business support services and institutions, activity unspecified or does not fit elsewhere in group	25010		3
25010.02	Support to trade and business associations	25010		3
25010.03	Institution capacity building, business	25010		3
25010.04	Business infrastructure	25010		3
25010.05	Legal and regulatory reform	25010		3
25010.06	Business information	25010		3
25010.07	Public-private sector networking	25010		3
25010.08	General support to private sector enterprises	25010		3
25020.01	All state enterprise privatisation activities	25020		3
25081.01	All business education/training activities	25081		3
31105.01	Agriculture, activity unspecified or does not fit under any other applicable codes	31105		3
31110.01	Agricultural policy and administrative management, activity unspecified or does not fit elsewhere in group	31110		3
31110.02	Agricultural sector policy, planning and programmes	31110		3
31110.03	Institution capacity building, agriculture	31110		3
31110.04	Aid to agricultural ministries	31110		3
31110.05	Agrarian reform	31110		3
31120.01	Agricultural development, activity unspecified or does not fit elsewhere in group	31120		3
31120.02	Integrated agriculture projects	31120		3
31120.03	Farm development	31120		3
31120.04	Feeder roads	31120		3
31120.05	Agriculture infrastructure	31120		3
31120.06	Food crop production	31120		3
31120.07	Industrial crops/export crops	31120		3
31120.08	Livestock	31120		3
31120.09	Agricultural alternative development	31120		3
31130.01	Agricultural land resources, activity unspecified  or does not fit elsewhere in group	31130		3
31130.02	Soil improvement	31130		3
31130.03	Drainage	31130		3
31130.04	Agriculture land surveys	31130		3
31130.05	Land reclamation 	31130		3
31130.06	Erosion control	31130		3
31130.07	Desertification control	31130		3
31140.01	Agricultural water resources, activity unspecified or does not fit elsewhere in group	31140		3
31140.02	Irrigation	31140		3
31140.03	Reservoirs	31140		3
31140.04	Hydraulic structures	31140		3
31140.05	Ground water exploitation	31140		3
31150.01	Agricultural inputs, activity unspecified or does not fit elsewhere in group	31150		3
31150.02	Supply of seeds	31150		3
31150.03	Supply of fertilizers	31150		3
31150.04	Agricultural machinery/equipment	31150		3
31181.01	Formal education/training, agriculture	31181		3
31181.02	Agricultural extension	31181		3
31182.01	Agricultural research, activity unspecified or does not fit elsewhere in group	31182		3
31182.02	All plant research activities	31182		3
31182.03	All livestock research activities	31182		3
31191.01	Agricultural services 	31191		3
31191.02	Plant and post-harvest protection and pest control	31191		3
31191.03	Agricultural financial services	31191		3
31191.04	Agricultural co-operatives	31191		3
31191.05	Livestock/veterinary services	31191		3
31205.01	Forestry, activity unspecified or does not fit under any other applicable codes	31205		3
31210.01	Forestry policy and administrative management, activity unspecified or does not fit elsewhere in group	31210		3
31210.02	Forestry sector policy, planning and programs	31210		3
31210.03	Institution capacity building, forestry	31210		3
31210.04	Forest surveys	31210		3
31220.01	Forestry development, activity unspecified or does not fit elsewhere in group	31220		3
31220.02	Afforestation 	31220		3
31220.03	Exploitation and utilization	31220		3
31220.04	Erosion control	31220		3
31220.05	Desertification control	31220		3
31220.06	Integrated forestry projects	31220		3
31220.07	Agro-forestry	31220		3
31220.08	Fuelwood/charcoal	31220		3
31281.01	All forestry education/training activities	31281		3
31282.01	Forestry research, activity unspecified or does not fit elsewhere in group	31282		3
31291.01	Forestry services, activity unspecified or does not fit elsewhere in group	31291		3
31291.02	Marketing policies and organization	31291		3
31305.01	Fishing, activity unspecified or does not fit under any other applicable codes	31305		3
31310.01	Fishing policy and administrative management, activity unspecified or does not fit elsewhere in group	31310		3
31310.02	Fishing sector policy, planning and programs	31310		3
31310.03	Institution capacity building, fishing	31310		3
31320.01	Fishery development, activity unspecified or does not fit elsewhere in this group	31320		3
31320.02	Exploitation and utilization of fisheries	31320		3
31320.03	Fish stock protection	31320		3
31320.04	Aquaculture	31320		3
31320.05	Integrated fishery projects	31320		3
31330.01	Ocean and coastal fishing	31330		3
31330.02	Marine and freshwater fish surveys and prospecting	31330		3
31330.03	Fishing boats/equipment	31330		3
31381.01	All fishery education/training activities	31381		3
31382.01	Fishery research, activity unspecified or does not fit elsewhere in group	31382		3
31382.02	Pilot fish culture	31382		3
31382.03	Marine/freshwater biological research	31382		3
31391.01	Fishery services, activity unspecified or does not fit elsewhere in group	31391		3
31391.02	Fishing harbours	31391		3
31391.03	Fishery financial services	31391		3
31391.04	Fish markets	31391		3
31391.05	Fishery transport and cold storage	31391		3
32105.01	Industry, activity unspecified (includes manufacturing of goods not specified elsewhere) or does not fit under any other applicable codes	32105		3
32110.01	Industrial policy and administrative management, activities unspecified or does not fit elsewhere in group	32110		3
32110.02	Industrial sector policy, planning and programmes	32110		3
32110.03	Institution capacity building, industry	32110		3
32120.01	Industrial development, activity unspecified or does not fit elsewhere in group	32120		3
32120.02	Modernization and rehabilitation	32120		3
32120.03	Infrastructure	32120		3
32120.04	Integrated industry projects	32120		3
32120.05	Investments, unspecified	32120		3
32120.06	Agro-industries	32120		3
32120.07	Forest industries	32120		3
32120.08	Textiles, leather and substitutes	32120		3
32120.09	Chemicals 	32120		3
32120.10	Fertilizer plants	32120		3
32120.11	Cement/lime/plaster	32120		3
32120.12	Energy manufacturing	32120		3
32120.13	Pharmaceutical production	32120		3
32120.14	Basic metal industries, ferrous	32120		3
32120.15	Non-ferrous metal industries	32120		3
32120.16	Engineering	32120		3
32120.17	Transport equipment industry	32120		3
32130.01	Support to smes, unspecified	32130		3
32130.02	Accounting, auditing, advisory services	32130		3
32140.01	Cottage industries and handicraft, activities	32140		3
32181.01	All industry education and training activities	32181		3
32182.01	All technological research and development activities	32182		3
32191.01	Industry services, activity unspecified or does not fit elsewhere in group	32191		3
32191.02	Marketing policies & organisation	32191		3
32191.03	Industry financial services	32191		3
32191.04	Industrial co-operatives	32191		3
32205.01	Mineral resources and mining, activity unspecified or does not fit under any other applicable codes	32205		3
32210.01	Mineral/mining policy and administrative management, activity unspecified or does not fit elsewhere in group	32210		3
32210.02	Mineral and mining sector policy, planning and programs	32210		3
32210.03	Institution capacity building, mineral resources and mining	32210		3
32210.04	Mining legislation, mining cadastre, mineral resources inventory, information systems	32210		3
32220.01	Mineral/metal prospection and exploration, activity unspecified or does not fit elsewhere	32220		3
32220.02	Coal	32220		3
32220.03	Oil and gas	32220		3
32220.04	Ferrous metals	32220		3
32220.05	Nonferrous metals	32220		3
32220.06	Precious metals/materials	32220		3
32220.07	Industrial minerals	32220		3
32220.08	Fertilizer minerals	32220		3
32220.09	Offshore minerals	32220		3
32220.10	Geology, geophysics, geochemistry	32220		3
32220.11	Mineral extraction and processing, infrastructure, technology, economics, safety and environment management	32220		3
32281.01	All mining education/training activities	32281		3
32310.01	Construction policy and administrative management, activity unspecified or does not fit elsewhere	32310		3
32310.02	Institution capacity building, construction	32310		3
33105.01	Trade policy and regulations, activity unspecified (includes trade and trade promotion activities) or does not fit under any other applicable codes	33105		3
33110.01	Trade policy and administrative management, activity unspecified or does not fit elsewhere in this group	33110		3
33110.02	Trade policy and planning	33110		3
33110.03	Institution capacity building, trade	33110		3
33110.04	Trade-related legislation and regulatory reforms	33110		3
33110.05	Multilateral trade agreements	33110		3
33120.01	Trade facilitation, activity unspecified or does not fit elsewhere in group	33120		3
33120.02	Simplification and harmonisation of international import and export procedures 	33120		3
33120.03	Support to customs departments	33120		3
33120.04	Tariff reforms	33120		3
33130.01	Regional trade agreements (rtas), activity unspecified or does not fit elsewhere in group	33130		3
33130.02	Support to regional trade arrangements 	33130		3
33140.01	All multilateral trade negotiations activities	33140		3
33181.01	All trade education/training activities	33181		3
33210.01	Tourism policy and administrative management, activities unspecified or does not fit elsewhere in this group	33210		3
33210.03	Institutional capacity building, tourism	33210		3
33210.04	Tourism education/training activities	33210		3
41005.01	General environmental protection, activity unspecified (includes miscellaneous conservation and protection measures not mentioned below) or does not fit under any other applicable codes	41005		3
41010.01	Environmental policy and administrative management, activity unspecified or does not fit elsewhere in group	41010		3
41010.02	Environmental policy, laws, regulations and economic instruments	41010		3
41010.03	Institution capacity building, environmental protection	41010		3
41020.01	Biosphere protection, activity unspecified or does not fit elsewhere in group	41020		3
41020.02	Air pollution control	41020		3
41020.03	Marine pollution control	41020		3
41030.01	Bio-diversity, activity unspecified or does not fit elsewhere in group	41030		3
41030.02	Natural reserves	41030		3
41030.03	Species protection	41030		3
41040.01	All site preservation activities	41040		3
41050.01	Flood prevention/control, activity unspecified or does not fit elsewhere in group	41050		3
41050.02	Erosion control	41050		3
41050.03	River or sea flood control	41050		3
41081.01	All environmental education/training activities	41081		3
41082.01	All environmental research activities	41082		3
41082.02	Environmental impact assessments	41082		3
42010.01	Women in development, activity unspecified or does not fit elsewhere in group	42010		3
42010.02	Multisectoral wib projects and programs	42010		3
42010.03	Institutional capacity building, wid	42010		3
42010.04	Promotion of and support to wid groups and networks	42010		3
42010.05	Wid education/training	42010		3
42010.06	Wid financial services	42010		3
43010.01	All unspecified multisector aid activities	43010		3
43030.01	Urban development and management, activity unspecified or does not fit elsewhere in this group	43030		3
43030.02	Integrated urban development projects	43030		3
43030.03	Urban development, planning and management	43030		3
43030.04	Urban renewal and urban housing	43030		3
43030.05	Urban infrastructure and services	43030		3
43030.06	Urban land information systems	43030		3
43040.01	Rural development, activity unspecified or does not fit elsewhere in this group 	43040		3
43040.02	Integrated rural development projects	43040		3
43040.03	Rural development, planning and management	43040		3
43040.04	Land use planning and management	43040		3
43040.05	Rural infrastructure and services	43040		3
43040.06	Land settlement and resettlement activities	43040		3
43040.07	Rural/urban integration activities	43040		3
43040.08	Geographical information systems	43040		3
73010.02	Recovery	73010		3
12181	Medical education/training	121	12181.01	3
121	Health, general	120	12100,12105,12110,12181,12182,12191	3
12261	Health education	122	12261.01,12261.02,12261.03	3
12281	Health personnel development	122	12281.01	3
120	Health	100	12000,12005,121,122	3
11130	Teacher training	111	11130.01,11130.02,11130.03	3
112	Basic education	110	11220,11230,11240	3
113	Secondary education	110	11320,11330	3
114	Post-secondary education	110	11420,11430	3
13030	Family planning	130	13030.01,13030.02,13030.03,13030.04,13030.05	3
13081	Personnel development for population and reproductive health	130	13081.01	3
14040	River development	140	14040.01,14040.02,14040.03,14040.04	3
14081	Education and training in water supply and sanitation 	140	14081.01	3
14082	Water research	140	14082.01,14082.02	3
15210	Security system management and reform	152	15210.01,15210.02	3
15220	Civilian peace-building, conflict prevention and resolution	152	15220.01	3
15240	Reintegration and salw control	152	15240.01,15240.02,15240.03,15240.04	3
15250	Land mine clearance	152	15250.01	3
150	Government and civil society	100	15000,151,152	3
16081	Other social infrastructure and services, education and training	160	16081.01	3
160	Other social infrastructure and services	100	16010,16020,16030,16050,16081	3
21030	Rail transport	210	21030.01,21030.02,21030.03	3
21040	Water transport	210	21040.01,21040.02,21040.03,21040.04	3
22081	Communications, education and training.	220	22081.01	3
23081	Energy education/training	230	23081.01	3
23082	Energy research	230	23082.01	3
4	Multisector/cross-cutting	0	410,420,430	3
5	Commodity aid and general programme assistance	0	510,520,530	3
6	Action relating to debt	0	60010,60020,60030,60040	3
43050.01	Non-agricultural alternative development, activity unspecified or does not fit elsewhere in group	43050		3
43050.02	Non-agricultural projects to reduce illicit drug cultivation	43050		3
43081.01	Multisector education/training activities	43081		3
43082.01	Research/scientific institutions activities	43082		3
51010.01	General budget support, activity unspecified or does not fit elsewhere in this group	51010		3
51010.02	Unearmarked contributions to the government budget	51010		3
51010.03	Support for implementation of macroeconomic reforms	51010		3
51010.04	Balance of payments support	51010		3
51010.05	General program assistance	51010		3
52010.01	Food aid/food security programmes, activity unspecified	52010		3
52010.02	Food supply	52010		3
52010.03	Food security programs	52010		3
53030.01	Import support (capital goods), activity unspecified or does not fit elsewhere in group	53030		3
53030.02	Capital goods and services, import support	53030		3
53030.03	Lines of credit	53030		3
11240	Early childhood education	112	11240.01,11240.02	3
53040.01	Import support (commodities), activity unspecified or does not fit elsewhere in group	53040		3
53040.02	Commodities	53040		3
53040.03	General goods and services	53040		3
53040.04	Oil imports	53040		3
53050.01	All export support activities	53050		3
60010.01	Actions relating to debt, activity unspecified or does not fit elsewhere in group	60010		3
60010.02	Debt for development swap	60010		3
60010.03	Other debt swap	60010		3
60010.04	Training in debt management	60010		3
60020.01	All debt forgiveness activities	60020		3
60020.02	Debt buy-back	60020		3
60030.01	All relief of multilateral debt activities	60030		3
60040.01	All rescheduling and refinancing activities	60040		3
72010.01	All non-food relief items and assistance	72010		3
72020.01	All emergency health services/support activities	72020		3
72030.01	All water and sanitation services/support activities	72030		3
72040.01	All emergency food aid items or activities	72040		3
72050.01	Relief co-ordination; protection and support services	72050		3
73010.01	Recovery and reconstruction, activity unspecified	73010		3
73010.03	Transitional shelters	73010		3
73010.04	Reconstruction assistance	73010		3
73010.05	Damage and loss assessment	73010		3
74010.01	Disaster prevention and preparedness, activity unspecified	74010		3
74010.02	Disaster risk assessment and monitoring	74010		3
74010.03	Institutional consensus, awareness, and capacity building	74010		3
74010.04	Knowledge, innovation, and education	74010		3
74010.05	Disaster risk financing	74010		3
74010.06	Strengthening early warning systems	74010		3
74010.07	Protecting critical infrastructure	74010		3
74010.08	Response preparedness and sustainable recovery	74010		3
74010.09	Macroeconomic analysis	74010		3
91010.01	All items relating to otherwise unspecified adminstrative costs of donors	91010		3
92005.01	Support to non-governmental organizations and government organizations, activity unspecified or does not fit under any other applicable codes	92005		3
92010.01	All support to national ngos activities	92010		3
92020.01	All support to international ngos activities	92020		3
92030.01	All support to local and regional ngos activities	92030		3
93010.01	Refugees in donor country	93010		3
99810.01	All other activities when sector is not specified	99810		3
99820.01	All promotion of development awareness activities	99820		3
11000	Education, combinations of purposes	110		3
11100	Education, level unspecified, combinations of purposes	111		3
12000	Health, combination of general, basic, and population policy/reproductive health purposes	120		3
12100	Health, general, combinations of activities	121		3
13000	Population policies/ programmes and reproductive health, combinations of activities	130		3
14000	Water supply and sanitation, combination of purposes	140		3
15000	Government and civil society, combination of activities	150		3
15100	Government and civil society, general, combination of activities	151		3
15200	Conflict prevention and resolution, peace and security, combinations of activities	152		3
21000	Transport and storage, combination of purposes	210		3
22000	Communications, combinations of activities	220		3
23000	Energy generation and supply, combinations of activities	230		3
24000	Banking and financial services, combinations of activities	240		3
31000	Agriculture, combination of purposes in agriculture, forestry, fishing	310		3
31100	Agriculture, combinations of purposes in agriculture, agro-industry, agribusiness	311		3
31300	Fishing, combination of activities	313		3
32000	Industry, combination of purposes industry, mining and construction	320		3
32200	Mineral resources and mining, combination of purposes	322		3
33100	Trade policy and regulations, combination of purposes	331		3
41000	General environmental protection, combinations of purposes	410		3
70000	Emergency assistance and reconstruction, combinations of purposes	700		3
72000	Emergency response, combination of purposes	720		3
92000	Support to non-governmental organizations and government organizations, combination of purposes	920		3
0	All codes	\N	100,200,300,400,500,600,700,900	3
9	Other	0	910,920,930,998	3
12005	Health, purpose unspecified or does not fit under any other applicable codes	120	12005.01	3
12105	Health, general, purpose unspecified or does not fit under any other applicable codes	121	12105.01	3
12110	Health policy and administrative management	121	12110.01,12110.02,12110.03,12110.04,12110.05	3
12191	Medical services	121	12191.01,12191.02,12191.03,12191.04,12191.05,12191.06,12191.07,12191.08,12191.09	3
12220	Basic health care	122	12220.01,12220.02,12220.03,12220.04,12220.05	3
12230	Basic health infrastructure	122	12230.01,12230.02,12230.03	3
12240	Basic nutrition	122	12240.01,12240.02,12240.03,12240.04,12240.05,12240.06	3
12250	Infectious & parasitic disease control	122	12250.01,12250.02,12250.03,12250.04,12250.05,12250.06,12250.07	3
122	Basic health	120	12220,12230,12240,12250,12261,12281	3
11105	Education, level unspecified, purpose unspecified or does not fit under any other applicable codes	111	11105.01	3
11110	Education policy and administrative management	111	11110.01,11110.02,11110.03,11110.04,11110.05,11110.06	3
11120	Education facilities and training	111	11120.01,11120.02,11120.03,11120.04,11120.05,11120.06	3
11182	Educational research	111	11182.01,11182.02,11182.03	3
111	Education, level unspecified	110	11100,11105,11110,11120,11130,11182	3
11220	Primary education	112	11220.01,11220.02,11220.03,11220.04,11220.05,11220.06	3
11230	Basic life skills for youth and adults 	112	11230.01,11230.02,11230.03	3
11320	Secondary education	113	11320.01,11320.02,11320.03,11320.04,11320.05,11320.06,11320.07	3
11330	Vocational training	113	11330.01,11330.02,11330.03,11330.04	3
11420	Higher education	114	11420.01,11420.02,11420.03,11420.04,11420.05,11420.06,11420.07	3
11430	Advanced technical and managerial training	114	11430.01,11430.02,11430.03,11430.04,11430.05	3
110	Education	100	11000,111,112,113,114	3
13005	Population policies/ programmes and reproductive health, purpose unspecified or does not fit under any other applicable codes	130	13005.01	3
13010	Population policy and administrative management	130	13010.01,13010.02,13010.03,13010.04,13010.05,13010.06,13010.07	3
13020	Reproductive health care	130	13020.01,13020.02,13020.03,13020.04,13020.05,13020.06	3
13040	Std control including hiv/aids	130	13040.01,13040.02,13040.03,13040.04,13040.05	3
130	Population policies/ programmes and reproductive health	100	13000,13005,13010,13020,13030,13040,13081	3
14005	Water supply and sanitation, purpose unspecified or does not fit under any other applicable codes	140	14005.01	3
14010	Water resources policy and administrative management	140	14010.01,14010.02,14010.03	3
14015	Water resources protection	140	14015.01,14015.02,14015.03,14015.04	3
14020	Water supply and sanitation - large systems	140	14020.01,14020.02,14020.03,14020.04,14020.05,14020.06	3
14030	Basic drinking water supply and basic sanitation	140	14030.01,14030.02,14030.03	3
14050	Waste management/disposal	140	14050.01,14050.02,14050.03,14050.04,14050.05	3
140	Water supply and sanitation	100	14000,14005,14010,14015,14020,14030,14040,14050,14081,14082	3
15105	Government and civil society, purpose unspecified or does not fit under any other applicable codes	151	15105.01	3
15110	Economic and development policy/planning	151	15110.01,15110.02,15110.03,15110.04,15110.05	3
15120	Public sector financial management	151	15120.01,15120.02,15120.03,15120.04	3
15130	Legal and judicial development	151	15130.01,15130.02,15130.03,15130.04,15130.05,15130.06	3
15140	Government administration 	151	15140.01,15140.02,15140.03,15140.04,15140.05	3
15150	Strengthening civil society	151	15150.01,15150.02,15150.03,15150.04,15150.05,15150.06,15150.07,15150.08,15150.09	3
151	Government and civil society, general	150	15100,15105,15110,15120,15130,15140,15150	3
15205	Conflict prevention and resolution, peace and security, purpose unspecified or does not fit under any other applicable codes	152	15205.01	3
152	Conflict prevention and resolution, peace and security	150	15200,15205,15210,15220,15230,15240,15250,15261	3
16020	Employment policy and administrative management	160	16020.01,16020.02,16020.03,16020.04,16020.05,16020.06,16020.07	3
1	Social infrastructure and services	0	110,120,130,140,150,160	3
21005	Transport and storage, purpose unspecified or does not fit under any other applicable codes	210	21005.01	3
21010	Transport policy and administrative management	210	21010.01,21010.02,21010.03,21010.04	3
21050	Air transport	210	21050.01,21050.02,21050.03	3
21081	Education and training in transport and storage	210	21081.01	3
22005	Communications, purpose unspecified or does not fit under any other applicable codes	220	22005.01	3
22020	Telecommunications	220	22020.01,22020.02,22020.03,22020.04	3
22030	Radio/television/print media	220	22030.01,22030.02,22030.03	3
220	Communications	200	22000,22005,22010,22020,22030,22040,22081	3
2	Economic infrastructure and services	0	210,220,230,240,250	3
\.


--
-- PostgreSQL database dump complete
--

