Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFCCA2EA3C8
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 04:13:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728169AbhAEDK4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 22:10:56 -0500
Received: from mail-eopbgr140041.outbound.protection.outlook.com ([40.107.14.41]:40846
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728163AbhAEDK4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 22:10:56 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fXcj43G51whBobmEZC4wISUIA3kqRbzDnJnfYlU+KMFQ3RBSH5IK1C5T6ouNFWj9AwW0tzUiUcZ9faFaoIwbuSzHCqWacrapMvq7nZ6BAhYO+YOkEfOad53iL9No8vLC4DgRAcqeuGTNWU3paDJSSgDe0GRJsnIXBrkTT5r75Ty9H4yCV5QqPur1xiAFmKtW1gWwu4an6C6IevtuY38jsVPVWUUAZeMOOyP4SKiNuql+CMfcngL5kUv4VHs/RJ4ii14ggUiWfjqr8ZpPal0eIFTf1Jf+MfbjiyL9wqF07YitobzQpp1TPEfI+h5XgJe+ayPYl5lhr3/sLTscwFX4AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KJ8D+KrXoA59YkrOCBqPX2xA10GLgvnPsosBXAiwdw=;
 b=dkmIc4QAZyyqN98j3Ek7U91WNUjK6Bsbc5WQZIprJnWbml7lXrMGSH8uG2tw7Sc+RWaaq5DPOatCPBEYtnE4zLnuQU+cry3m0gP963/pHwyk5/JyYFoyBvcqSkeJZH0TDrz8nSlhf8akLznUNMpLmNuZmNv49llYHwZTIBqKvir2rknNByw4Edm1B44Kvgp/QkkF66nnRU6KZ+KgqHA+cmQFpnuVHp/dmyEhBVzozde8qQoa5I2naTfS2QO6hFmQENsXTCCL7E5YDt3l/rKeX95WXwCNN75Tr3hEwfuzgh2CRyrQbtcYKJmOZ8c76grwEE0TsG2ubuDbdTSCz5pYBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KJ8D+KrXoA59YkrOCBqPX2xA10GLgvnPsosBXAiwdw=;
 b=oVPKV4p1IfD3h9NBRH8O0Q8Wqi2nQgpDt+L1XSpPZ+qPkejj29N7UtVV6WuGwI6M0LepZy7EVVfEDxfWqCrfGH3lNCnEnSyEE8V7YOYF3hwQlUMPa7j45oms5Ahw9/wDX56lDbkziZnP0IEphyamPeuqSF+qwtfNvSE8y0iyxJ8=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM5PR04MB3185.eurprd04.prod.outlook.com (2603:10a6:206:c::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.23; Tue, 5 Jan
 2021 03:10:03 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::2548:da90:59cf:d4cd]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::2548:da90:59cf:d4cd%3]) with mapi id 15.20.3721.024; Tue, 5 Jan 2021
 03:10:03 +0000
From:   "Y.b. Lu" <yangbo.lu@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Leo Li <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Walle <michael@walle.cc>
Subject: RE: [PATCH] arm64: dts: freescale: use fixed index mmcN for NXP
 layerscape reference boards
Thread-Topic: [PATCH] arm64: dts: freescale: use fixed index mmcN for NXP
 layerscape reference boards
Thread-Index: AQHWx4/yuW0HodCMK0qj2hNS2FNKCaoYgX4AgAAPZfA=
Date:   Tue, 5 Jan 2021 03:10:03 +0000
Message-ID: <AM7PR04MB6885615248F0BA0B9C8DDEE5F8D10@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20201201032127.41681-1-yangbo.lu@nxp.com>
 <20210105021307.GG4142@dragon>
In-Reply-To: <20210105021307.GG4142@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 29ceffc0-d60b-4dba-368c-08d8b127658d
x-ms-traffictypediagnostic: AM5PR04MB3185:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB3185C8F906E46ED9DE071153F8D10@AM5PR04MB3185.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TbXPzI4RT9a+tWtzOoHi6jYZl5FQAviG6eFjEIDLwPlBl0sPirHOPtSA94N1HwJJwbSLhzmP0WBpr3lLr9foGfPcJy/Sn+MxEYWgRkpnxPhiuO+KzmDbmQ0jW5O9OCreP5fI4Jn1gSyjl6mwBhMfbVx4kB9QDI6CoB/uAZ7Z+7bHxNG6byWiPjSUmFuBXtZFJFEf9VIefo/GLKDdBHjjLJOYkVPUVYTdo9H4WKFPr7MI0tpN7T3MaTwMxdoeJMG7D8ynE8vBq6hZ1wcDMS693Bc14X/6OPRtlrbQ8BCsUwVKwGWGke1KZNkWO/x0hSMdoFBZLpDrRvO1dncz5VVJe+FOySX+DpdoKBXYjaZc6WIyyLWXJKomF2XgMMpEYa/Ra3W+OI/Kb7htQcUsCVPTtQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB6885.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(376002)(136003)(396003)(346002)(6506007)(4326008)(86362001)(2906002)(83380400001)(8676002)(8936002)(186003)(54906003)(53546011)(316002)(26005)(33656002)(71200400001)(6916009)(66476007)(478600001)(7696005)(66556008)(76116006)(66946007)(55016002)(9686003)(64756008)(66446008)(5660300002)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?89yQ7xdvqoPlfeSwohkxEqWEP6XB31kmLcl9f9raebjMCvVyNibjJ9ntiHmS?=
 =?us-ascii?Q?pW6vHX7ZykiJhwR4EeERuGcGsO/A10cNUoP2mxkZ1KvTkp/T3c5CwcZr7hsk?=
 =?us-ascii?Q?GIUHmqaniCsVN2Zwx3VcNm41lUHynEK/rNpIdjxu5Hqdv+XcWrG8oZNdB7IW?=
 =?us-ascii?Q?Tw8TVRSwiFWF2Fw0D9Afray6M1Nfxs1TFGdJlle8rantSiTSLboGKUbWDgnU?=
 =?us-ascii?Q?8ARy9w2dzUw/ylL5Tdkjv5zwIeHvpr+zHEcku5FFuJ4IQfuO7XdCp6Pl7FG6?=
 =?us-ascii?Q?+mQZU8CXlByXPpXMC0GAawOcHzEfz/xzG4AJvhRjcAsSAaKPv26OKrrZtTAc?=
 =?us-ascii?Q?XYXow68m+y7PchP6eLwj5tVlNTBIun7RiROHZBPyDniyC2/HQqinW7nKF0Km?=
 =?us-ascii?Q?u72x9b1W8w2z5NW5jZPHwqmXFZVSbzlsXeLoFdIUImDJjHewVFT1XHw9mkni?=
 =?us-ascii?Q?6WaxjC8xnlSCmg+rEYSZGV7KmLy96JTvh3ArxKeTzwb8MY+AX2m7/9pqcP21?=
 =?us-ascii?Q?3L+dClv6q5KolOxbIoqFHKV6VFFXo+uM7/aZk8brDomcCL8FdOZIxI2E00kv?=
 =?us-ascii?Q?l/w1IeR34qDj9NtPBiVw3rAX29HYcr1XLAX4L1JZzDkOHEGxQ30gzLhGraIe?=
 =?us-ascii?Q?0hyIBfHCTSrzfQeaQxpNYjutrYskbGVG1oB1Bt7wXKQg7ZnzwroKYUMA74jC?=
 =?us-ascii?Q?dzGaHPb3Sjc2hzoemPkBmoipj+tVrvJh1D2Ido3ZsLn1hWSe1WaJDQwvLfN0?=
 =?us-ascii?Q?5FteaDQC/+lSNtj1fo8D+lCoVt12swEardKryyKsskSQlyM64IrpWINgFsi9?=
 =?us-ascii?Q?hXIRag+bqJ/mnb/8PCV5lOrTyTAVi7k/FqIQAnC6479/eYSBZbTacp1yD5id?=
 =?us-ascii?Q?ltQcavr+C4QQIAi+qABguKjymcP6c/fLbmiiKIsD+htE4jDOofFZ12YdrKgh?=
 =?us-ascii?Q?H6Yy4Res+x2q24WgvuvD9p8TfL5EZfVx2xNkECVEfMk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB6885.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29ceffc0-d60b-4dba-368c-08d8b127658d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2021 03:10:03.7135
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l8KUR9se/yVG29WLzX4sOEA777x/xWbIuZyRZIWOKAVxVf2orKoU0gIV5YJFESWVRAgoabwEksd8wsY1FEKE6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3185
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Tuesday, January 5, 2021 10:13 AM
> To: Y.b. Lu <yangbo.lu@nxp.com>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Leo=
 Li
> <leoyang.li@nxp.com>; Vladimir Oltean <vladimir.oltean@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Michael Walle <michael@walle.cc>
> Subject: Re: [PATCH] arm64: dts: freescale: use fixed index mmcN for NXP
> layerscape reference boards
>=20
> On Tue, Dec 01, 2020 at 11:21:27AM +0800, Yangbo Lu wrote:
> > The eSDHC driver has converted to use asynchronous probe.
> > Let's use fixed index mmcN for eSDHC controllers, so that
> > we can ignore the effect on usage, and avoid problem on
> > previous use cases with fixed index mmcblkN.
> >
> > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts | 5 +++++
> >  arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts  | 5 +++++
> >  arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts  | 5 +++++
> >  arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts  | 2 ++
> >  arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts  | 2 ++
> >  arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts  | 2 ++
> >  6 files changed, 21 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> > index 6290e2f..76b7e29 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> > @@ -14,6 +14,11 @@
> >  / {
> >  	model =3D "LS1012A FRWY Board";
> >  	compatible =3D "fsl,ls1012a-frwy", "fsl,ls1012a";
> > +
> > +	aliases {
> > +		mmc0 =3D &esdhc0;
> > +		mmc1 =3D &esdhc1;
> > +	};
>=20
> Are these esdhc devices enabled in the board dts?  I think that the
> aliases are only needed for enabled devices.

Sent out v2 to dropped the changes since esdhc devices hadn't been enabled =
and tested.

>=20
> Shawn
>=20
> >  };
> >
> >  &duart0 {
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> > index 449475a..e22c5e7 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> > @@ -13,6 +13,11 @@
> >  	model =3D "LS1012A QDS Board";
> >  	compatible =3D "fsl,ls1012a-qds", "fsl,ls1012a";
> >
> > +	aliases {
> > +		mmc0 =3D &esdhc0;
> > +		mmc1 =3D &esdhc1;
> > +	};
> > +
> >  	sys_mclk: clock-mclk {
> >  		compatible =3D "fixed-clock";
> >  		#clock-cells =3D <0>;
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> > index d45c176..f939d65 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> > @@ -12,6 +12,11 @@
> >  / {
> >  	model =3D "LS1012A RDB Board";
> >  	compatible =3D "fsl,ls1012a-rdb", "fsl,ls1012a";
> > +
> > +	aliases {
> > +		mmc0 =3D &esdhc0;
> > +		mmc1 =3D &esdhc1;
> > +	};
> >  };
> >
> >  &duart0 {
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> > index 2d1fe6c..4ec1a4c 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> > @@ -15,6 +15,8 @@
> >  	aliases {
> >  		crypto =3D &crypto;
> >  		serial0 =3D &uart0;
> > +		mmc0 =3D &esdhc0;
> > +		mmc1 =3D &esdhc1;
> >  	};
> >
> >  	chosen {
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> > index 7723ad5..bdb3b04 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> > @@ -15,6 +15,8 @@
> >  	aliases {
> >  		crypto =3D &crypto;
> >  		serial0 =3D &uart0;
> > +		mmc0 =3D &esdhc0;
> > +		mmc1 =3D &esdhc1;
> >  	};
> >
> >  	chosen {
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> b/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> > index 9178684..69e99cb 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> > @@ -15,6 +15,8 @@
> >  	aliases {
> >  		crypto =3D &crypto;
> >  		serial0 =3D &uart0;
> > +		mmc0 =3D &esdhc0;
> > +		mmc1 =3D &esdhc1;
> >  	};
> >
> >  	chosen {
> > --
> > 2.7.4
> >
