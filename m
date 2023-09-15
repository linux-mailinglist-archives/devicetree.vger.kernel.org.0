Return-Path: <devicetree+bounces-325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 701877A130E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 03:49:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 564CB1C210D9
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 01:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2350736A;
	Fri, 15 Sep 2023 01:49:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71ACC63C
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:49:46 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2051.outbound.protection.outlook.com [40.107.104.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C1626B8
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 18:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i3S4MdSLt64aROws9vP9SqKjIUgSEFYHv18jnzAp/DH58hVH332xMviIWGAe0FvsG8L0alnYlgR+76DKW6jbpKNa42j+jo8bqMVWmqMT6nOhtnbwEo9iVpr8zG0xYHcHjg/Tl+tkwxPjzAzUQIsLZ7aPZ3Ndse4RfPqofARUiWWBgnrMPWCwAdjJ55zfzrwp1J/MjH22/IP9WEQA5+fchSEE+KQf1BBi1XvRqQqdH/Ctq0XlGft0gTx3SFNMTqAjXvJEt6A0VQOr1Iri28BZ7nt3mQ10TgmdbvogQeUVMT7Ofx3atlRNlWrX9ledMuLAV7vEUrH/qo+Yry8S51DJHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gxMIAzx8b0fTEPLAKApvzqZXmxoPTRUj0U1euVzBzTo=;
 b=lJAi21XFe83S6EK9n0qAh7uwtTDGcqtzF/tf2YuOGPBDq8nzW7GznkqqLvPotl64otk4icNecCGmdo8+fSDgvAicztJPVmip8C3HGk3YVHhixioDYejyS6lE5YxXPQJ6A+oK57m4l8/1I5PQD/P1hK202n2M22CPkViygb+rZ44gYns7fqnA+vQ5EAbhmRGuJ5Z4BXbEWbgPFwl0mmyz/zZX/I6ScI6lrUgdYVBz7MqFbMzP3zmYr1KjiNxZ4KxpeP1nppfMVyK0hBPVfW4yesP5+t9M6ksQ/hAxi7+xshbcd00cxX/KCURFZNDLHE5+4MkMtZAcg9XTU6DwA8/9rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gxMIAzx8b0fTEPLAKApvzqZXmxoPTRUj0U1euVzBzTo=;
 b=pc3m2WCH/SHADShjCqZjJOrDwWahnYdC3mwr6bmsvLOkxkmPOwfwqgoxE57e7+hFKg0zJWnDBLikYjbxuYNYiYahBO0FZCdeoGk5T3LGRfx8LawSBt3mr+aB3CEWNoBg8FE1LmhHtk62iBQOvSP/bvKc5G4j6uvR41U32Msk7P0=
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Fri, 15 Sep
 2023 01:49:42 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3505:c499:96d4:1429]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3505:c499:96d4:1429%4]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 01:49:42 +0000
From: Sandor Yu <sandor.yu@nxp.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, Lucas Stach
	<l.stach@pengutronix.de>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
	<festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "patchwork-lst@pengutronix.de"
	<patchwork-lst@pengutronix.de>, Richard Leitner <richard.leitner@skidata.com>
Subject: RE: [EXT] Re: [PATCH v3 2/2] phy: freescale: add Samsung HDMI PHY
Thread-Topic: [EXT] Re: [PATCH v3 2/2] phy: freescale: add Samsung HDMI PHY
Thread-Index: AQHZ51Cz67h1RWCzSUe0EP3HQCJM97AbEOIA
Date: Fri, 15 Sep 2023 01:49:42 +0000
Message-ID:
 <PAXPR04MB9448947986184612E67E3E2DF4F6A@PAXPR04MB9448.eurprd04.prod.outlook.com>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
	<20230906184211.1857585-2-l.stach@pengutronix.de>
 <20230914231610.2c339f7e@booty>
In-Reply-To: <20230914231610.2c339f7e@booty>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB9448:EE_|PAXPR04MB8749:EE_
x-ms-office365-filtering-correlation-id: d4a57577-f362-4320-d101-08dbb58e0803
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 vZ14Fs7J1ZlL+VIlDYU/dUGkWzVMEury+MTqLboXlE9kc0TLBEJ8SgbpeOZ/kWcqId0Yyx9pgk5Xr6gzc9c+PlojsnUPFKuJFUzHKnyIGuhxpkhNuUVwWr6A/F7l/m85yDGITwLxi4XNCAoaAsDbXVgMEjm+7Ce4R6oX+0HfC5PyMooS5l7R582hFEoGpy04b8e6YUg7+k90F4dEKHTnPXsPPTCsCrPzDoLjbECyIr+EhzB/yccXQN79pbb1B8VXrSnd62rJn5J4h0cPegzjcK9Z8mbPGyPLezdyPzM90BWHu9XRydu5JOxdCDe6D/NVf7GVlQuYGgdP8+mLhF6DRPeNvuFtTJBBXlUcuIOKPz3czfUUKF1SmH+tOFaQuGLGMAvS6cuctGTyPXFEi7UK5V2PmLNpvSv3HPQDDMGsfkVQ+ACBWpOGP2oOdZdqvuXPch5UEbryEerytKYJyq+Kw7r+97mCLWLx+qy6reKG2RggJ4DS9+rIbvUxuSagAxUXzBkTDL3INiy7wfPs9TMuGzTtq7XDjDirjhHWzSrXYJ5G8grAyn56QFeWLSq5GOGPNHPh5Xt5hX2c1GF+o1GMnUFOErO8hlgudtKyEBiPQmD6lh840vsAAdS/yxo/Skux
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(376002)(396003)(136003)(346002)(451199024)(186009)(1800799009)(44832011)(5660300002)(4326008)(26005)(8676002)(52536014)(8936002)(71200400001)(7696005)(6506007)(9686003)(83380400001)(478600001)(55016003)(45080400002)(122000001)(110136005)(316002)(54906003)(41300700001)(76116006)(66446008)(66476007)(64756008)(66556008)(66946007)(33656002)(86362001)(2906002)(38100700002)(966005)(38070700005)(7416002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?jH1EXK6Gj4fBt3f5U6myMbpGpYc5bs29LSj66CCiwYCVz2CDB0CQVtqHwzp/?=
 =?us-ascii?Q?6xZNddXwZ5u6R6wyegwSbR0B9cjEZw+hRBYj03H6MLMI1jnk5FcoeXPerhnt?=
 =?us-ascii?Q?YMu36MkLysbGFF1otCt0oMVuSw6m649zGD8yyDe/GYqzeqn6r7HwluniS0Df?=
 =?us-ascii?Q?3SDVHAB+0DiZ03IxfdlsDf550cz4rru9doDUkCWqXNMQGJR1R/Jvo5u5UeUA?=
 =?us-ascii?Q?CMIpfHcG7Cj1HAMLiQcmWz/QDDzPB9fb2adgNpUX2lA+Ka9o87vFSzH6Rk+H?=
 =?us-ascii?Q?UATSoSHfQtnXalt9KeRHm+xrPYG8DCGKi1BLW+lbg84Yg48T85fhBZz+Yz8T?=
 =?us-ascii?Q?24bO4J6liiKBcyqgfoNaW7VNYoz3ynjeaprkxT4oKGSjwSyGzMsLyAeol81n?=
 =?us-ascii?Q?fi3e704k55/ivrGvk27Sdqc7GiNsMIDG7r7/1jxd0TyV9xfVMaQnn1PSLkd5?=
 =?us-ascii?Q?sRChL3FWKbaF0CILzzvChOaYG/y9Hfn1RQChWNmgf3qTXOPyiEpYzmdsyZfv?=
 =?us-ascii?Q?ZuhpcLRGqKFbMZuJ5agL7C+PbFqKyYtxEhWFF3VVPVhxykdCNlQuWGEuVes3?=
 =?us-ascii?Q?fa1O4sPFPKS5PabwrCjmfOuU3TKT+J8cxUDo85+mf/5wqaUtAtdocCopQO8b?=
 =?us-ascii?Q?53IYhX9b0PqK6hys2sa0sesPv2mDv0QsRO5DNNsfJV1p7qlieK5//EOkrnZx?=
 =?us-ascii?Q?X9Gu1lZjfOU/hJENdeBAuWqJS7odxwoV3f2Ve+HNGesD2IKaAUUz62T3WMdS?=
 =?us-ascii?Q?uWFF7sXVvNjt2BOC5mMHC/JT4MlEZ4F8OndfaC8xASgoP5Utk74xQ5MzIr/b?=
 =?us-ascii?Q?PH/gDUTaPM7A0XbX/ehGfkl6hFpQ3FiO+1YQV68ni8t6hDVT30SVXhdy6wUP?=
 =?us-ascii?Q?U49PtozhWZEOlRYC1cKwZuoV2l07skfXMPfNcsJEfseBTH+Wx/V7jPjFp9Gz?=
 =?us-ascii?Q?rtJ1qRbSHbAXLav+fTQGgYUyKB2rTcRR+QGSgV4ojwq0P36mz0mO/vebxo8A?=
 =?us-ascii?Q?MO2QjnKq2CPIEJvRNU0IjZYoKU1JOavRg/jlw82FtyAi3rjKVLTP3kfCTViq?=
 =?us-ascii?Q?5a3mDzl05ndp67QQoIypT3WaJBCNWTN6Sa8NcIUk6i2ZSl0zqcbBvc+ejtFl?=
 =?us-ascii?Q?JEkh6oYKf4oULYITcGhdlbsqPQdpqlqqXDxYSmdGY95etMz6R0+khT7EeqN6?=
 =?us-ascii?Q?RbZiCuWQ9O9cCcvFY+qjMSac+jOGoQJ0Pbz8UY+VN84eAFJ+84yhsPRX6uDL?=
 =?us-ascii?Q?wXOcA4xH+oLkxza7oQxGHBeNlR+axhRrANN5r79cTKaxYzQkGawJo/xDpnfV?=
 =?us-ascii?Q?MDX+lAuD+CNGmsaF1F+WUwKPLGg0d/IqNGzDf6kGmHeDhKtlAvNUm8Q7Eec4?=
 =?us-ascii?Q?4jUldu03PBJ03i5teBy2gNpO4APsfJZcQRkjba+6MDazKo2rHa4MKY4EUBKW?=
 =?us-ascii?Q?/bqwQGFOCJd6lCP8TF4NpPV0yA41B9W5BEQxsxBGphwNXocjOZU/Vpd5luEW?=
 =?us-ascii?Q?yBPZVfa4yVSysbHfV+a0exz03YBcwmTZg54EU0AZ8Kw0ujr17nlTZljnEF20?=
 =?us-ascii?Q?5A3yr5ymuDAxAgSkw1A=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a57577-f362-4320-d101-08dbb58e0803
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 01:49:42.7270
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F0tBarUwzeztDW2R97agzjuqVp3hZxR6xIsQce6IZ5qftw0QBxiFu2tZ3l9dt76oxtXxsYiRGkkS1EpwFss3Hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8749

Hi Luca,=20

>=20
> Hi Lucas,
>=20
> [+Cc: Sandor]
>=20
> On Wed,  6 Sep 2023 20:42:11 +0200
> Lucas Stach <l.stach@pengutronix.de> wrote:
>=20
> > This adds the driver for the Samsung HDMI PHY found on the i.MX8MP
> > SoC. Based on downstream implementation from Sandor Yu
> > <Sandor.yu@nxp.com>.
> >
> > Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
>=20
> Also for v3:
> [On custom board based on MSC SM2S-IMX8PLUS SMARC module]
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>=20
> I have a few notes however, see below.
>=20
> > +#define PHY_REG_14           0x38
> > +#define  REG14_TOL_MASK              GENMASK(7, 4)
> > +#define  REG14_RP_CODE_MASK  GENMASK(2, 1)
>=20
> According to the latest reference manual currently available on the NXP
> website (Rev. 1, 06/2021), this should be GENMASK(3, 1). This is somewhat
> nitpicking as the only possible value documented is 2. But let's continue=
...
>=20
I agree, according the RM it should be GENMASK(3, 1).

> > +#define PHY_REG_33           0x84
> > +#define  REG33_MODE_SET_DONE BIT(7)
> > +#define  REG33_FIX_DA                BIT(1)
>=20
> Here the reference manual is very different:
>=20
> MODE_SET_DONE BIT(4)
> TX_INV2       BIT(3)
> TX_INV1       BIT(2)
> TX_INV0       BIT(1)
> MON_RXD       BIT(0)
> bits 7-5 are reserved
>=20
> ...which is strange: in the code you are always writing 0 in bit 4, which
> according to the docs means MODE_SET_DONE is always "Assert forced
> global reset". Thus I guess your definitions come from the downstream dri=
ver
> which, as it sadly happens, is more authoritative than the docs. :-/
>=20
> Sandor, can you confirm this, or provide any clarifications?

There is a doc issue on the i.MX8MP latest RM, actually the fields for REG3=
3 should be:
REG33 fields:
---------------------------------------------------------------------------=
-----
|    Field	   |       Description
---------------------------------------------------------------------------=
-----
|     7         | 0 - Assert forced global reset
|MODE_SET_DONE | 1 - Release forced global reset            =20
---------------------------------------------------------------------------=
-----
|     6        | 0 - There are not any change in 20bit data from TXD2 port =
   =20
|TX_INV2	       | 1 Invert polarity of 10bit data of 20bit data from TXD2 p=
ort
---------------------------------------------------------------------------=
-----
|     5        | 0 - There are not any change in 20bit data from TXD1 port =
   =20
|TX_INV1       | 1 - Invert polarity of 10bit data of 20bit data from TXD1 =
port
---------------------------------------------------------------------------=
-----
|     4        | 0 - There are not any change in 20bit data from TXD0 port =
    =20
|TX_INV0       | 1 - Invert polarity of 10bit data of 20bit data from TXD0 =
port=20
---------------------------------------------------------------------------=
-----
|    3         | 0 : TESTOUT[0] - BIST_ON                                  =
 =20
|MON_RXD     | TESTOUT[1] - BIST_ERROR                                    =
=20
|              | TESTOUT[2] - DES_CLK_SEL[0]                               =
 =20
|              | TESTOUT[3] - DES_CLK_SEL[1]                               =
 =20
|              | TESTOUT[4] - TX_CLK_SEL[0]                                =
 =20
|              | TESTOUT[5] - TX_CLK_SEL[1]                                =
 =20
|              | TESTOUT[6] - TX_CLK_SEL[2]                                =
 =20
|              | TESTOUT[7] - TX_CLK_SEL[3]                                =
 =20
|              | TESTOUT[8] - PLL_COARSE_LOCK_DONE                         =
 =20
|              | TESTOUT[9] - PLL_FINE_LOCK_DONE                           =
 =20
|              | TESTOUT[10] - Divided by 10 clock (source clock : PIXEL_CL=
K)
|              | TESTOUT[11] - Divided by 10 clock (source clock : TMDS_CLK=
)=20
|              | 1 : TESTOUT[0:9] - 10bit of RXDATA                        =
 =20
|              | TESTOUT[10] - Divided by 10 clock (source clock : PIXEL_CL=
K)
|              | TESTOUT[11] - Divided by 10 clock (source clock : TMDS_CLK=
)=20
---------------------------------------------------------------------------=
-----
|    2         |
|FIX_DB        | Disable de-skew function 1 - Select fixed phase 2
---------------------------------------------------------------------------=
-----
|    1         |
|FIX_DA        | Disable de-skew function 1 - Select fixed phase 1
---------------------------------------------------------------------------=
-----
|    0         | 0 : There are not any change in 20bit data from TESTIN por=
t   =20
|ALTER         | 1: Invert polarity of 10bit data of 20bit data from TESTIN=
 port
---------------------------------------------------------------------------=
-----

The issue will be fixed in the next i.MX8MP RM release, sorry for the incon=
venience.

B,R
Sandor
>=20
> Otherwise LGTM.
>=20
> Luca
>=20
> --
> Luca Ceresoli, Bootlin
> Embedded Linux and Kernel engineering
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fbootl=
in
> .com%2F&data=3D05%7C01%7CSandor.yu%40nxp.com%7Cbf51f9e57dc04a2bc
> ac808dbb567d4d0%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C
> 638303229786923737%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAw
> MDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C
> %7C&sdata=3Dc6qIGRnNn8zzx5drqE%2BG%2FQjG3XkECsXgsdN97acXIIU%3D&
> reserved=3D0

