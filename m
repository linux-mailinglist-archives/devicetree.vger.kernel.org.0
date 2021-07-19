Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C42F3CD523
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 14:53:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236742AbhGSMMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 08:12:25 -0400
Received: from mail-eopbgr10045.outbound.protection.outlook.com ([40.107.1.45]:44420
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231417AbhGSMMY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Jul 2021 08:12:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bvEyefaXuIep0yKwkcZnJbzVXG2xLY3P4vckHOzsXH7YYQi+mP8ULksUCoSbzVpcyxbdNFZEzEpiZc9O1G9BJWID9VqXa2OGiImHUqT2N0t+ONcQH1JLlgPOWFlMZh01ayO/4f4E/kf4lkv5HJXM98bY1rmT5o1Nube8w2w5WWcawTVAwDXb7WSR9QDPkQpZdUceaCM0PNi35QUyscpVyXCRT9JvPROTX6BTrwHG8dhb0vVomJldTudtp+7NNH44hZS5W/Z+eBPSi47o0KIno2mSvOZh4zc8Ozd+deZFtK6s0lUNADB5b6dphgdZMOAliUk1gAMbokiSHID6pMNT+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UwoSvBscll1VqW4b8xwrz5NcMVA9L14c9FyIVC5kw7I=;
 b=CvuWqYFclU9k6pDB8C57pKXbu7yvzc8eYaDvv+KpC27ngp81t0HdzVCYs+mAzVt3ODC+XPUZL7u7y8oxhRBAkeUq4n7muRNPTpviUYkfZX0EMr5GkVDFaggXKrERuSi0g49tkVbvp4B+ewB4F1aC98GQ6ARSYS8WKEvhusYmJhZs8Ca4/IdblLtfwt/FDJ/kO+W5Y8YvN507FzznoTn+LABtcjkOPDZbaaDxdYiX0rgWZQw3PAFfQdQSUNlcY/9VNyx7JyBGh38to+m00KOnEG+mSKsXxO4BTVHrNd9qmZ0xGjU8eQgqCNQA1eC75NHzXyFHYsxQiJ5xXMBtjUpVQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UwoSvBscll1VqW4b8xwrz5NcMVA9L14c9FyIVC5kw7I=;
 b=W3Q6itt6vTRzFEF7GcJgRvD0YgRlnn3gUmFGJEddlUSuAYlI+VnVVevWrahNXEimEXGWuL4+IFBoJas10Qb5IZvB6cIVEhZOw9+mzMzv+Bt8LWopuCv0gOe/mx3VxuI1/8fceceOEuspG5BZKp3AAmOf9hcP/1MudDLwNaainOY=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB8PR04MB6620.eurprd04.prod.outlook.com (2603:10a6:10:107::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Mon, 19 Jul
 2021 12:53:01 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::c445:d742:eb76:86dd]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::c445:d742:eb76:86dd%9]) with mapi id 15.20.4331.032; Mon, 19 Jul 2021
 12:53:01 +0000
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
Subject: RE: [PATCH 00/17] i.MX8MM GPC improvements and BLK_CTRL driver
Thread-Topic: [PATCH 00/17] i.MX8MM GPC improvements and BLK_CTRL driver
Thread-Index: AQHXeppqqps/BokiBUCUrL7UqtmhoqtKQ1qQ
Date:   Mon, 19 Jul 2021 12:53:01 +0000
Message-ID: <DB6PR0402MB27606BA0D35BD1EDA022AE2188E19@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
In-Reply-To: <20210716232916.3572966-1-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8b26edf-b8de-4a24-fa16-08d94ab4243f
x-ms-traffictypediagnostic: DB8PR04MB6620:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB66208E1BB6F59C5D122ED80488E19@DB8PR04MB6620.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ows3by87+5U0DcMWnbg8UriVctRmLurwYlL5nktePOro9gPpxB7qJA1k0CcXeh6W1DP0eUMxDJtLb4IJSO/CXL5ys3wpSOtp6b70iG6hYunJGD642ezvIbkfQCm/6UclboVr1EyWH2cli4jZij03hzCTcMjWcZWmq0Gss6KTtxxztU0aF2CYxpLYetGbyekV7Mknig93alPyYGt804PTzmf4+m7M5oy1rvuDLZFdp732IQPpWALvzvi0QhRMe3gCWRDM90tTY1+ePrK7cxAmiMNshd43Iko8oxGI/nG2bLOpG+hfXlVSSfLZZAPUtCDm66i64eyGRwTGAoo1U5uBHbxW5mvyBzadbVctGr0nYSzGXusEfQbLC3EvcoNOv+GpF44iShqPbJtaGtTjdOZhfte4KnP6DjLgwSRYyUUes4D6BvaAcuA7a1FS2aITnDYK4wTUdX2zN8VbkjIP804YUGz0kA4IgeoH4j2Idze/y64Trd/8Cab1Sr/6tZqvtoxXmH1Q9k4+pYkOsjRmZIkgPc/hNdtYjllB7mUU0ZqZBWP8hJW8t9h3FpdE2k5nWlEbNvkjk2T8dewVm4Pb3GGyKszM682rdBXpsVXKVw13OxcaY0elr6in/OqHnJSplmXNBW/IjLZ8g/b+2oTFei/FN7YF4z3l0mAA47noVHaxzU18WiszV2H1eqy22OLknRXsBFLu0SJd7w1wRZhxmM3zxw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0402MB2760.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(136003)(396003)(346002)(39860400002)(83380400001)(6506007)(38100700002)(2906002)(4326008)(33656002)(122000001)(86362001)(7696005)(71200400001)(186003)(5660300002)(316002)(76116006)(52536014)(64756008)(66476007)(478600001)(7416002)(55016002)(54906003)(8936002)(9686003)(44832011)(8676002)(66446008)(110136005)(66946007)(66556008)(26005)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JGn/F3Cu5sWW89TVirUhA6BMdZUoSaHuJqMkGRj2iHT5RQymbYgw6+dUqWi5?=
 =?us-ascii?Q?lSI8iuHqq+Za8sqK3A0ntU/5PijUOpT3W2k/Qt/JvQhofvawQuVRAOA3R3U3?=
 =?us-ascii?Q?Ay7QO61m1E20VICDEYLvs5fM5oD46Uf3RDWb/NYyOdLNDG4udc7kastFBTEP?=
 =?us-ascii?Q?dWXZ8U15e2RC5eWOoSgqL2ad67J5XvEPSNw+Z7yD+a6UlZKhUf/u6EzBjyt3?=
 =?us-ascii?Q?fCAgACggTGacBOk45lAsCnb69kx6LAHsBdwpV7QF3xcterLyvpraJ2/b38Mw?=
 =?us-ascii?Q?V2n4/33AZCWCw1MfcLySPx3b470MQuZJsAiQ2DbwlwSPbuJq5IAFEjW7nxoW?=
 =?us-ascii?Q?xDsvuqNlBnaxsQKd+dkoQOMG88jLLTfuE5aSeATD1Sgm/19trBuDD8GdW7N/?=
 =?us-ascii?Q?sPw77PEcC6n9IgFYLSYzp2ZTkajtZGb74COI+KgK9SjBr+KKHqKMF37BPy/4?=
 =?us-ascii?Q?XyUxPja0Vj3siz8DjjtWoYqadLVD0sDwwd+ek+kMEGG4TtKu+2+Eq+Ik8Bhb?=
 =?us-ascii?Q?FxWDcHrgXCGwryyChRNTQq+IRiCz5EigPRdPcrGNhdc9+F/qB2XXO0zKLyot?=
 =?us-ascii?Q?DRAhhWVvroykSH97Z+q9Ut9phqHa+Od/9yJty20fmmZxgC1dKE3mjcofc5qs?=
 =?us-ascii?Q?LkS3wehSkfAqZC1YEdQGJ4NHm6mmYQeVNlr2VSTYeaLJoraS6tjhiEx18V6m?=
 =?us-ascii?Q?UUq1ZD4k64ZGifqYWhdUfKKYyYEYxZevIIz/6zhz5d/pfOjRBdjcsBRP9nWy?=
 =?us-ascii?Q?OhAWEWQjiTujpe6lYktDqNYJb/Eksxe/G1ws1l2pNcx9YN10Ccp1yDaroGhA?=
 =?us-ascii?Q?xaH3/cT1xOjCW2rdvtUwGAV52sXrZK/RYssHXSUTzpMcPWDfUHpEhcg22y4H?=
 =?us-ascii?Q?YawzlqE/hhCk/9RwYglkjihSiZXJX/kSM5EpNfWyBPj/z4x44hTjRh8Lqiwt?=
 =?us-ascii?Q?SVHfhH3buuymMh5ShSuN17Oisx3+OaU2xuoubsEA86lPMtTDFrxJldlPS7Fh?=
 =?us-ascii?Q?8e5Dpo9U2BuLc+SCzXyBPZbanh1fb9tQThVDDygcTsnYHCoZUB9s4iB+58tZ?=
 =?us-ascii?Q?r+mShcGP4/uSC2oMuJ5XT7aVwPP5hA5/dwvgzuW3nF0FZd7KNcywJckCxoIy?=
 =?us-ascii?Q?yqT6HZZszTh7sj1Nk4QCxFYFfVSXKgQXnXZN740ap90ZRKvmOto0cgO6Pwwz?=
 =?us-ascii?Q?q6uxUxmiRuWq1EmFQawBZT8Q+pViho5g3XYohcrva7+47/K/JBUHlvscpl2K?=
 =?us-ascii?Q?S9YW9fPTCTDyiGDIEmEzTGgfC+KGG68vtdecXFunRH5D51rQvCFgxiYkkjyd?=
 =?us-ascii?Q?uyEfZtEwW+cUJYRMu2ZiwVH+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0402MB2760.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8b26edf-b8de-4a24-fa16-08d94ab4243f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2021 12:53:01.1777
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NH1lYarbJY6A6vsdaavEQWkonT/qm+4I1F3lcCvp1g2DoCrl00yyXyL5I3X3tzAuzgj5GpcfxaRgnQLIsq6zkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6620
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

> Subject: [PATCH 00/17] i.MX8MM GPC improvements and BLK_CTRL driver

Thanks for your work on this. I'll give a look and test tomorrow.

>=20
> Hi all,
>=20
> over the last few days I've taken on the job to give the blk-ctrl driver =
initially
> worked on by Peng Fan another spin. What I've come up with now looks quit=
e
> a bit different, as the power sequencing shared between the blk-ctrls and=
 the
> GPC is not really feasible to model with a strict hierarchy of power doma=
ins.
> In my design the blk-ctrl driver is the instance driving the sequence for=
 those
> power domains where a blk-ctrl is part of the picture.
>=20
> For those that aren't familiar with the power domain architecture on the
> i.MX8M*, here's a short overview, to hopefully make it easier to review t=
his
> series. The i.MX8M* reuses the GPCv2 (General Power Controller)IP block,
> already known from the i.MX7. On the i.MX7 all power domains were
> independent and all the reset and bus isolation sequencing was handled in
> hardware by the GPC. Software only needed to request power up/down for
> the domain and things mostly happened behind the scenes. On i.MX8M*
> things got more complex, as there are now nested power domains and
> coupling of the data busses is handled by AMBA domain bridges (ADB), whic=
h
> aren't sequenced by the GPC hardware, but have handshake requests/acks
> wired up to a register in the GPC that needs to be handled by software. D=
ue
> to hardware issues some of the reset sequencing also needs to be handled =
by
> software, as the GPC isn't always able to properly trigger the SRC reset =
for the
> peripherals inside the power domains.
>=20
> Generally with all those nested domains there exists a outer *MIX (e.g.
> VPUMIX, DISPMIX) domain that contains the ADB and the BLK_CTRL.
> Handshake with the ADB can only happen after the *MIX domain is powered
> up and some domain specific initialization in the BLK_CTRL is done. The A=
DB
> is connected to a bus clock from CCM that needs to be enabled for the ADB=
 to
> work. Also there might be additional resets and clock gates for the ADB i=
n the
> BLK_CTRL MMIO region, which is also only accessible after the *MIX domain
> is powered up.
> Some peripherals are directly located in the *MIX domain, but others are
> placed in inner domains located in the *MIX domain. In order to power up
> those nested domains the *MIX domain must already be powered up and the
> ADB handshake must be finished. Reset is handled via the BLK_CTRL, instea=
d
> of the SRC, which contains resets and clock gates for the peripherals.
> The general flow for those inner domains is:
> 1. Assert reset and ungate clocks in BLK_CTRL to allow reset to propagate=
 2.
> Request power up at the GPC 3. Deassert reset
>=20
> Failing to meet the ADB handshake and/or reset sequencing requirements wi=
ll
> generally lead to system hangs (not necessarily at the point where the
> sequence is violated). The blk-ctrl driver as implemented hides this behi=
nd
> virtual power domains. Peripherals don't need to care whether they are
> located directly inside the *MIX domain or in a nested domain, they all j=
ust
> use the power domains exposed by the BLK_CTRL driver, which handles the
> sequencing requiments internally.
>=20
> Currently this series implements both the VPU and DISP blk-ctrls for the
> i.MX8MM SoC, but I'm quite confident that the design is sound and can be
> trivially extended for the other i.MX8M* SoCs. On my personal TODO list i=
s
> the conversion of the i.MX8MQ VPU blk-ctrl to the new model, which should
> finally allow us to drive the G1 and G2 VPUs independently. After that I'=
m
> going to look at the i.MX8MP,=20

Would you take 8MP before 8MQ? 8MP is more popular.
If you not mind, I could post my local 8MP GPC part based on your patchset.
Anyway my local 8MP blk-ctl will be dropped.

as this is a current focus of my work and has
> even more blk-ctrl instances. But before moving on to those, I would like=
 to
> gather some feedback and testing on this series.
>=20
> I will also provide a branch with those patches and the WIP VPU and displ=
ay
> patches I used to test this. But that will have to wait for next week, as=
 it's
> getting pretty late here.

Do you have a public branch now?

Thanks,
Peng.

>=20
> Regards,
> Lucas
>=20
> Frieder Schrempf (1):
>   arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core
>=20
> Lucas Stach (14):
>   Revert "soc: imx: gpcv2: move reset assert after requesting domain
>     power up"
>   soc: imx: gpcv2: add lockdep annotation
>   soc: imx: gpcv2: add domain option to keep domain clocks enabled
>   soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
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
>  .../soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml     |  97 ++++
>  .../soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml      |  79 +++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 180 +++++++
>  drivers/soc/imx/Makefile                      |   1 +
>  drivers/soc/imx/gpcv2.c                       |  99 ++--
>  drivers/soc/imx/imx8m-blk-ctrl.c              | 464
> ++++++++++++++++++
>  include/dt-bindings/power/imx8mm-power.h      |   9 +
>  7 files changed, 888 insertions(+), 41 deletions(-)  create mode 100644
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
>  create mode 100644
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
>  create mode 100644 drivers/soc/imx/imx8m-blk-ctrl.c
>=20
> --
> 2.30.2

