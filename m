Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 799EA3E116C
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232952AbhHEJfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:35:45 -0400
Received: from mail-am6eur05on2086.outbound.protection.outlook.com ([40.107.22.86]:27201
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232605AbhHEJfo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:35:44 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNy2Sw4/LP73pxg+GIPgT2KFHX8Q7oVZ6BkeFXOb9ky3dXLDtiUhk/MXJ47D8fYfJGXFdEc5b4jA1PFjomZfFajFUfXiX40tG94maht66dgmAdCF/5dfhzh9/TZtQVdGtGqvZHr8Of1v6qf3NcSItcfcpcrQTUAK8kj1/E4pfH5E7lRVaV53Olqdpg2vptFGE6GNlch+DbNhCaP7pi30vF82AYlwZCpjiSQQYuLi6hjMKmOxra+W3I5Dyq1NPl27XdyPTlfiABJk6gLplTPLtXnzd7PxeceKaa/JdkJ+LYpb5wsdI+PIx+cVWJ1aPsdYG1vJAA6G8ASH2Iw4b5LIZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xtd/MsbjErcnAUSl+BspK7BSCcUYNeFElxkMEEkJH5c=;
 b=Yq+gqkqyS98/luz9xwJH3iaWr5+ugA0ED2mnq13KWQPIhOdaDolTMdBAqwtn6Epr1XpS4ASkyztz8YdAMoBO2MJslSD//DHDE4+NTOo0wD5bRLxGgrKNf1+dw5I4vFiiXGnxcxmnJNdNFai4VKe+odhBFPhCAYz/17ixG0GSBDQge2qtgNuhkbMLiJ3jPaleGNeqwFvYBmGesgHZzI/lPnXQX8Hk/f9b75XhVI5eXadCBoJKTaZmefifCE8dapNYZNSka32bzKd8mO1w7aOl9TM9pCzIIy+1iKbHgjcDYnhYf60ElS2VfoVnUJcxfvLsoVzeYCu9f6gl6h0o2aWsxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xtd/MsbjErcnAUSl+BspK7BSCcUYNeFElxkMEEkJH5c=;
 b=jZBxme/b54B+KcZvMknbC6DD4wENs+SWv1MxhjcKrHSzOg5ZkXH5tRoYQG1lBVOzlUYmCeycS0KSdxXUsSTIqsxscLoFDf2mCp27gn5ZlyoD2qOry4KWcL7h6qs2OMN1e+cMNxZEQdbes+FGYQitHBg3STT9p49XhyMIZffTvTg=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AM5PR0402MB2754.eurprd04.prod.outlook.com
 (2603:10a6:203:a2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.23; Thu, 5 Aug
 2021 09:35:21 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:35:21 +0000
From:   "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
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
Subject: RE: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
Thread-Topic: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
Thread-Index: AQHXfnGUJZnQ1hwGukuAqnwazhU2jqtkvRpA
Date:   Thu, 5 Aug 2021 09:35:21 +0000
Message-ID: <AM5PR0402MB27565479FD5C0FF9414F5EF788F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-1-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=oss.nxp.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aaa29e53-7fd1-4c9d-d79a-08d957f45828
x-ms-traffictypediagnostic: AM5PR0402MB2754:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR0402MB2754922CD44FA8B803EE6130C9F29@AM5PR0402MB2754.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZFasNf4gKrlRLlDjs9Ha8dZU47JVlonSIAKEBqR8sJot3xY+ibDZuJ+2wJm6ZVcpdvFCdjje/xyk77APX6KwmjcBtMcyESJFkaS+ILjMVmSc6hcGADhr7bhK9p9NIKAFAyif8guaBqs6eJkJbBuoPmAIgIkhJvJIJu9hYNsmSLwnFV9ASzuHQTjIEvoL+pm+pkhGyay++lifv+q3IebeKSX6BerkBjQJFxup1CqYQVd2TGCcjIxMlnJoGEiRVQbn1FW1kSXHZoW7Tt6Mc5Ebwg7ahXGLhHOQrw2Hwys4iRTKYdfRghjTkfoP7ou2hry6/lqbI3olXSWVtqusW959yMALUERWpVAdFT5EfiZZkjytnPdXtN9WqSlBbOe1evRI1I5pycTk+JxCIYForcE+YwMyZee9+LJ872sG2rJ4E2k7c/HPe5fNEzSuff/Pyog1UzjVHMPPAtJD5KmYeSCeYveK2bnK5qdHybb3SQUbNrtIbriym1XCOdHChwca4mijJNmUGZU3OoWFjvSIsiPkonsKi3rFKOWyRkERHPndCerqbhmhO0hZlEOANpm+aOSmZum3rX6WTI6QaAjMbQHiZW1z08hvt45ZsUbnFDcCjUi82SXTFurt0HMdN5RNiT9U36+9EQTo+SLWUa37HwY9bjziVMk0FFQ1CZRHG/rG5uuqnioD8GUjWY76qHW4EenfeDCRcTjNCMJFTZhEXQxd/A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(396003)(39850400004)(346002)(366004)(5660300002)(316002)(966005)(478600001)(38100700002)(7416002)(6506007)(76116006)(7696005)(122000001)(83380400001)(186003)(4326008)(110136005)(86362001)(33656002)(2906002)(52536014)(54906003)(45080400002)(66446008)(64756008)(8936002)(66556008)(66476007)(8676002)(71200400001)(66946007)(26005)(38070700005)(9686003)(55016002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qPCtlR5RH1neYTf82sr84nquN6TROpkpqNmMFzBc4up55JYoRf2s0pvrHrYr?=
 =?us-ascii?Q?/ItFCxdhpC68HF1eMsue8vxx/VnmpkEavXuR/UX21h6ADSeXclgbNaMDn1T/?=
 =?us-ascii?Q?68/3FEKLecMTiIY2Nh3gy1KkOy6O3UTQHy+NmTYHEiOouEyrXjTLWFtGXDh0?=
 =?us-ascii?Q?VrQzBHjaBb+doUlPwWOZFxg0Je01Ea7tG/mrRzZcM1fmJyNLtHHnjGww3U66?=
 =?us-ascii?Q?uigwyUnKcv0lQFImNTby+QW4lW33JESdKYGEuN2XbJtS4jTveehg8XccC19V?=
 =?us-ascii?Q?xlyZx1OHgethnHmRxdfXW2JE88BaG+vIB7li6TM2RYKuvl1/cGJ/Kl34Vf14?=
 =?us-ascii?Q?I9n3uu1D4G/8MiTc/QBeh1OAP+O7XrybghaVVHmeWFPB88fqMroAltEdkMdW?=
 =?us-ascii?Q?Nv4z09/HFHctefcFmvlqn9Ahn2BnHm+h6LkmhrmIJnIwK5XvwAPoy5zP4tKI?=
 =?us-ascii?Q?BIY55EeSHSUWwWrJKCACGG6gRYIYam+Abf4EaQpZbTPFl4vEMpTTByjNXwDa?=
 =?us-ascii?Q?+AAvWx/5N14RDWAzbOwah+BgwJmZGrbqvSOA1Ek/vPSTlESjsKO7YoB8x4oA?=
 =?us-ascii?Q?5Z5uAL73B9UPdlLLVYfwXexk6zKxDcjS9EBSra2k8w9QZ8HPc8C6wqbgjU9W?=
 =?us-ascii?Q?uv19B1ceJR/fKSyTbd0TX6bP+LWlbyBCIzzsboA5+HmLUH+3fKk8p/D/eVt/?=
 =?us-ascii?Q?l11WHcEk7+5VpG9kBAQgTWgOj2PICDBkescubj7EMUZOfGSpktbuM2odso5X?=
 =?us-ascii?Q?uZwSkQ6bEBG2QamntkMgDzkOIk7lg9e7Slb9TkwlWlGxBkyb/ju5MpX5DqGZ?=
 =?us-ascii?Q?gwJg4NCAwhxK6qAsL2RhY2EntF8DqIjfwb+si9RIQwqz5Yd93Gsn26lydRKC?=
 =?us-ascii?Q?xVeyYdxm+wpb14kq77Zh+bIuf1/pLmdVXXbFG05ZDXardVNlRsXGp5nyUHYp?=
 =?us-ascii?Q?WnEmotMW9G9tXbWWmkZkXpHWB7ZdBRkvDkU/CtrjVD9fT/IsN9L4FstCk6WV?=
 =?us-ascii?Q?KyJ0/R9lXUjUbZyKs8QASLOH0vprl4znL5hsR5n5C5lryuAveca09zbzdP2P?=
 =?us-ascii?Q?N4WLS0EHzsXxxWvQX3eRddmgsGkCMHwtRIV+4DdTdteYa0ltTaKVtQyv46ir?=
 =?us-ascii?Q?K4rFT3bnNB9NeDWj5+1Eeco4x6rydI/tkwmreBxUcuNRWwStIX6Tu81HaROa?=
 =?us-ascii?Q?v+pw7Tua9Y1Iw5ZJl1cXuKNtUeR0G1yLQuHUteiqWfc+GrAk1kDjAQx3izgO?=
 =?us-ascii?Q?pcjp6U6RFi4Qa8L8V97gKZRnO3ckJWzX66qZ5DEmBGYvlF7FjQyDJKSJXPUd?=
 =?us-ascii?Q?EupDaJM9HLZPvkE7PO83OGiK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaa29e53-7fd1-4c9d-d79a-08d957f45828
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:35:21.1424
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /upZNoQBuk9cxG5fBwkK3Bv6OCgkbmOarB4qMteT7343CdWXrcU5AZVAQ0cCKcjZHphKR4qOSNa1yGn3BiDP5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2754
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
>=20
> Hi all,
>=20
> second revision of the GPC improvements and BLK_CTRL driver to make use
> of all the power-domains on the i.MX8MM. I'm not going to repeat the full
> blurb from the v1 cover letter here, but if you are not familiar with i.M=
X8MM
> power domains, it may be worth a read.
>=20
> This 2nd revision fixes the DT bindings to be valid yaml, some small fail=
ure
> path issues and most importantly the interaction with system
> suspend/resume. With the previous version some of the power domains
> would not come up correctly after a suspend/resume cycle.

Thanks for the work. I gave a test, boot and suspend/resume work with displ=
ay.

Tested-by: Peng Fan <peng.fan@nxp.com>

>=20
> Updated testing git trees here, disclaimer still applies:
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.p=
en
> gutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domai
> ns&amp;data=3D04%7C01%7Cpeng.fan%40nxp.com%7C3ef1698b8c53454da41
> 808d94c88b577%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63
> 7624972323848567%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata
> =3DPbhVVIqDcUMtMmurwpp2PoSYaAzXgRKVvBccd%2BL26oc%3D&amp;reserv
> ed=3D0
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.p=
en
> gutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domai
> ns-testing&amp;data=3D04%7C01%7Cpeng.fan%40nxp.com%7C3ef1698b8c534
> 54da41808d94c88b577%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C
> 0%7C637624972323848567%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4w
> LjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&a
> mp;sdata=3DrAuBbsQ5%2FpZJhuocWmapgNwERxat0IQsRfBiQpeJzuk%3D&amp;
> reserved=3D0
>=20
> Regards,
> Lucas
>=20
> Frieder Schrempf (1):
>   arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core
>=20
> Lucas Stach (15):
>   Revert "soc: imx: gpcv2: move reset assert after requesting domain
>     power up"
>   soc: imx: gpcv2: add lockdep annotation
>   soc: imx: gpcv2: add domain option to keep domain clocks enabled
>   soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
>   soc: imx: gpcv2: support system suspend/resume
>   dt-bindings: soc: add binding for i.MX8MM VPU blk-ctrl
>   dt-bindings: power: imx8mm: add defines for VPU blk-ctrl domains
>   soc: imx: add i.MX8M blk-ctrl driver
>   dt-bindings: soc: add binding for i.MX8MM DISP blk-ctrl
>   dt-bindings: power: imx8mm: add defines for DISP blk-ctrl domains
>   soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl
>   arm64: dts: imx8mm: add GPC node
>   arm64: dts: imx8mm: put USB controllers into power-domains
>   arm64: dts: imx8mm: add VPU blk-ctrl
>   arm64: dts: imx8mm: add DISP blk-ctrl
>=20
> Marek Vasut (2):
>   soc: imx: gpcv2: Turn domain->pgc into bitfield
>   soc: imx: gpcv2: Set both GPC_PGC_nCTRL(GPU_2D|GPU_3D) for MX8MM
> GPU
>     domain
>=20
>  .../soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml     |  94 ++++
>  .../soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml      |  76 +++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 180 ++++++
>  drivers/soc/imx/Makefile                      |   1 +
>  drivers/soc/imx/gpcv2.c                       | 130 +++--
>  drivers/soc/imx/imx8m-blk-ctrl.c              | 525
> ++++++++++++++++++
>  include/dt-bindings/power/imx8mm-power.h      |   9 +
>  7 files changed, 974 insertions(+), 41 deletions(-)  create mode 100644
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
>  create mode 100644
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
>  create mode 100644 drivers/soc/imx/imx8m-blk-ctrl.c
>=20
> --
> 2.30.2

