Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE7953E116E
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:37:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238126AbhHEJhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:37:21 -0400
Received: from mail-eopbgr60078.outbound.protection.outlook.com ([40.107.6.78]:61059
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232605AbhHEJhU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:37:20 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JcZ2Mjp7+7rbDpirx0mj0k92G71ekcVI3k2nrFVzKnzVjQI7RjtkDWedXsPYMohBdAyCeo00RHLnlnPHV2UFAqTe/gq63lzA/4xH9ZLfLbOx6hK8S84dFgizRpCGURBUX8vjjOxezL0P04g5Cg7o4rOG20jJvoKxac5O3o5qDlP13loYAKuz69b7+fLYWNSCelQOgTF8y1knWYK5WjkobaU5mevgol6R9nUQ9koLxoGlTMkIFv33kbcpJP4huC1bJQg/SUVXPPf+PiN1O36JyaoG/s8fOGJYYb+x3jiWIpTdS4Ho+6Xka6Lx0LZtXPRQRoVD9RutNWn2AyYHBqDQEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PZADcE5Kf/JRANRuSw923jWRD9vO1GoiLCYMUvlRt0g=;
 b=f9R9oFUugq55o+lkL5UdF8qnoOg3JOMqxQlPJv2sMIyyPZxUOsYMpy99BfgncX679UkAjjPwQ0gnsppNrzQBiJt8LoFoRGHVFf7IQ0Jo5iQUzmjMKGz3VHSLmLhdYne9r1J4CkQlPihrdHICe4fyv/0274wj0hNT+g+ALqtyFPytciXDD4atLp8sbjFIvx3MbVkfB3w/CMmEKW8p7LnGy17d0NrlaQFqwcQhwnI1kcNFkI9JzgDWnjooYWFXesGX06tDBoDgydvydY9FuvdRFya/y1w9hGs1EDbjuR2dai5FHwP9ofK3wcoSGYYK+6t8fNZfEP7R+5opTIUCoGtS9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PZADcE5Kf/JRANRuSw923jWRD9vO1GoiLCYMUvlRt0g=;
 b=cNXWB8c3YhRStYD32r2lyOeHME6xfaI81QXX8EJOk3dNVngQxQkT32zFGQuM918j5kBCMjOBUYgIDdVMTBfWiwz0GRPp/Tf2l+Rh1ggXu8XVuh2942oPsmKXIrLFk+qnvEF/cynyjyASGojdqKY7gfNoJwRxVlMoqdd2ar+bMhE=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AS8PR04MB8006.eurprd04.prod.outlook.com
 (2603:10a6:20b:288::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Thu, 5 Aug
 2021 09:37:05 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:37:05 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     dl-linux-imx <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Subject: RE: [PATCH v2 01/18] Revert "soc: imx: gpcv2: move reset assert after
 requesting domain power up"
Thread-Topic: [PATCH v2 01/18] Revert "soc: imx: gpcv2: move reset assert
 after requesting domain power up"
Thread-Index: AQHXfnGTUH+iCK+CVEa5Nl6XRhDHjqtkveYQ
Date:   Thu, 5 Aug 2021 09:37:05 +0000
Message-ID: <AM5PR0402MB27561A52BED707E2E3F2758488F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-2-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-2-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ce2346a-6655-46be-3c90-08d957f4962f
x-ms-traffictypediagnostic: AS8PR04MB8006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB800666504BCC96889F36EBD588F29@AS8PR04MB8006.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:568;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6+6vK58WknxLAs7S/JZQFsMCmGgjFBSvyPNlaCBHMDb2lD33SYaZYWxbZeEYQV+Jq9Hm0Gk3Xp1ick3INWd+07H20kGfs46+rBoGRUFxL2lThWOC3PCM0HSZpSz2NsIseSKrOk6kB1L3/zOFvS/lmp1UdCN9M3TwPqBej1omKJfmLVQi2chSJN6NecPpXHU+Or4wR8RFLWR7W1MAbJZL3DoHvo9A3gHnZ3XoFaX41qYnyrhCs6EFbbX+bnDiInmTnjBLF0tLMkXEs6MGor7pOPg6bgvdtaml5ybZpbo924UKGPirIgtN2FwAjr3JaZR2io0ZJf1L2fjbooonI0xGMw5YWUR75RZnEjiLaDkg8yHIvReWZR7qUHOhmQkyJa9fBERtDIRY4LLZGT425D3bU3cSVJAi5WLVGFIIH3OnjtAuHdK5jjWafB5ICZ2kmKVGPIQ4bFb74I78En8WNKeiPcKmnnOG/HHymFiON3mJJHfk4RPhwmNuZW6PLMuZy0Egcea17APL5oo55CFWDKGxJ5sJXrDIpuvNIEq9oIUBpA1stamxsa5rQDwkZOyyeA25fzSgaYJ4t/72/rG5oVEyvb+lRpjIhq6+ymI64iD9s4okXScViTEKSAm6VwasP22rikzHJILq0YuOLppNTPMRLpM4pfn82A4X5s8YLDD0AwT/VdYE5Im86J4lXntxKdYmevy7ekZGPK7z95R2+ERUpw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(76116006)(5660300002)(38100700002)(33656002)(55016002)(2906002)(83380400001)(7696005)(9686003)(6506007)(316002)(4326008)(122000001)(86362001)(71200400001)(186003)(38070700005)(8936002)(8676002)(66556008)(44832011)(478600001)(110136005)(66476007)(26005)(54906003)(64756008)(7416002)(66446008)(66946007)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MIH71seCw38hqQ93nRJQ+7SvJnFxr56UqJATotTFdSFqJZTCTfJ+51IwvPrv?=
 =?us-ascii?Q?6Yv08iT9JRhYAHsiJAGB6ddPfRJ9cyhytZccPbfkOjmt/TnF8583Zo/B3jpz?=
 =?us-ascii?Q?AJjroevt4N6dNIfLoNe3a81vU2/h22o4wawJVk0rf+9YKh66Uraw6zFUL/hH?=
 =?us-ascii?Q?b3pox/ZW64VQ4ERC35hw8l0VzVzPRnO7VneHH3FfR7R1ADFY+YnUQ/rhPztl?=
 =?us-ascii?Q?kr6d/s3DHDj/0BxVhOleuiu3zsY7i3PSNYiwTVdw7z3/tFzHMmzvbUcUwfRO?=
 =?us-ascii?Q?sWItKItB5W6ifygB/Zumxt4TYSlIxOAUSeI656juSeJP1lZt0zZqEqixHGL0?=
 =?us-ascii?Q?CZtRavH8JrJraD7rFENbCccc/z0DoJeaSK1A5/89kwgJqWnkhb0JlWrlhJjb?=
 =?us-ascii?Q?w2CzDuFi1MGQXSKsmHFAZ/PTM9+PfPEszryub4y20Awot/igWiFQccy/nk0V?=
 =?us-ascii?Q?fvDpVLn1cVTRKinDLbSjYGOEsB/mOOY/6GmOfi14UIHekdCoOHUFmDJ7lyD/?=
 =?us-ascii?Q?5DzDtKJaeTR+3eHepGOnUvnYMR/WJYWvsFX1EfhREp/X06OW8nH7s4xOGMEY?=
 =?us-ascii?Q?0ioTt0cietY9vuAYRE13Js0Y3/FZvX+CszTjKrAzrQz28wxtdrUaunhO4/Ri?=
 =?us-ascii?Q?vwaaARODkaP6f8JsKSLvdYfiAYRi0YDseG+EZoNc1siEEsVAGiTXWItaKswD?=
 =?us-ascii?Q?jtktvndTt3LpCbffcQBBx+3QoDKacPyQHZQDvw+WU7DwO/l9GwcUl7vN7QxE?=
 =?us-ascii?Q?VQAqxFAc7AnG8/VDDC8jKQ9hOAOC08cqxEdEralvgS5kv7lp1DwQU55DV04F?=
 =?us-ascii?Q?go4l8e+RPDj/S+J+/0Z3McS+63EiYUlABG9LWjuqQKuvo+nvRDobXYAeWwLa?=
 =?us-ascii?Q?JC4e3EJT2DGcWGknZt+aKpGVMdRYcJIRKx3Cya79mOvqT+4iJgBOdQoizdUk?=
 =?us-ascii?Q?NRj3MDjtBuUdWyWQwMWflN+eCaca6BdBFJwoPW3F/io2nqeUOAT2eBaONEr1?=
 =?us-ascii?Q?JtlRePEeJ+q3g1IAs/isRBtgXbzu/+IMFeoBTy9L6xJ82dVRuWDkjQIQkXrB?=
 =?us-ascii?Q?hDG2TdQIKgKhNh1U0pJZT9ncUIx8/bpX3Be8ZfeOPyIUWlJoUM5rrtzNvNLC?=
 =?us-ascii?Q?Yd5y0sZ27/7qLRudwC7fCkLoaEOxhdgnzbEfYlyZvSgsXc3eH0BrW1zfezjL?=
 =?us-ascii?Q?1lrgmn579cxTbp8SGuEdGh1OUvYFR9DER3UBsBbA+guLDvD67NVMhIEjPXon?=
 =?us-ascii?Q?qX+yl6GJaZlumSstrjoi2VgW6gQanjatPrFG7mcWkiJ9YkjPghwG1eNJvF/5?=
 =?us-ascii?Q?iRiO8xqA01IY7GIjlL2cw078?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ce2346a-6655-46be-3c90-08d957f4962f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:37:05.1921
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q6UHBAHRvtFqFVGIZv/qgrGerByUolFMwCyVqEizVT/f6Kmkh+BjXl/ie4+wC8n1gfZiPBQRrp9KiML4J4zPqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8006
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 01/18] Revert "soc: imx: gpcv2: move reset assert afte=
r
> requesting domain power up"
>=20
> This reverts commit a77ebdd9f553. It turns out that the VPU domain has no
> different requirements, even though the downstream ATF implementation
> seems to suggest otherwise. Powering on the domain with the reset asserte=
d
> works fine. As the changed sequence has caused sporadic issues with the G=
PU
> domains, just revert the change to go back to the working sequence.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Acked-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/soc/imx/gpcv2.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> 34a9ac1f2b9b..8b7a01773aec 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -244,6 +244,8 @@ static int imx_pgc_power_up(struct
> generic_pm_domain *genpd)
>  		goto out_regulator_disable;
>  	}
>=20
> +	reset_control_assert(domain->reset);
> +
>  	if (domain->bits.pxx) {
>  		/* request the domain to power up */
>  		regmap_update_bits(domain->regmap,
> GPC_PU_PGC_SW_PUP_REQ, @@ -266,8 +268,6 @@ static int
> imx_pgc_power_up(struct generic_pm_domain *genpd)
>  				  GPC_PGC_CTRL_PCR);
>  	}
>=20
> -	reset_control_assert(domain->reset);
> -
>  	/* delay for reset to propagate */
>  	udelay(5);
>=20
> --
> 2.30.2

