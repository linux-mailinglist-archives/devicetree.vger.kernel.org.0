Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF5782EA3E7
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 04:28:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727697AbhAED2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 22:28:21 -0500
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]:48453
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728049AbhAED2V (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 22:28:21 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K6ZvRjko1szm1ZjYuClythktkAfEzld5RE7JQIKXEjRHU0QMezyq1YWYVI3pdezYXfbvFEblLb+CrRReJ6KxT/Xnsq9Bj75wtUaphDz89/ianIyG+J7ou/HgNRDiBGqtDZOEN5z6A+Vpim86qgxkk+3xJJ5XKYg6ESjIAKpG0QHQ6xUAyHsKWMofs+MGoh1xJeg/ZXb4vyr7wbUQ3ZM1ZAFjZaOyip0Cr3PUrZQPhibU4TRjmmqXnjDodo9aze7g6XM+DxcRj6GRySVk+06DqIwxPo9FD/b5hym5QmjkhimHJcDnevrG9tzBMA9xoU/o8GR4ZaMGXSUyFAYtCPvi4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E7dP0ttRe7ULrATyxnRNFzUj0SKr/KhhxhVbB9gjEYs=;
 b=Mwf008bbjzK9CKPIuYIw4Quivs+PNzwsAeOZ7QHcUJ1rIhCm6vAeRAk/moTlxstcCn+xOQUAUu1m0V5oADVgbQ2AzPAHgfWyyfEJGDERFIZ1ObIoi5hvWFWpg9hdvQke/E4C2Ed3UXpgJS2gQU7bKobFcRoCPYzV72CEdyGrQTyzSWNMLLoIxZY+S5u5epCjpRsPTvTcTesdm7UntN5+xDmr3wpWiGWhr7yz0hqzbRUSL6VzOzCKyvSzO+kqjmfaEd/2ujR9cV2lnLVaA0d65ZXCm2e5mBOaTZkLHLShuXi6PYVFCD2icww+ZWdQjopCy7JiItcQk66/jDcBjmlgyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E7dP0ttRe7ULrATyxnRNFzUj0SKr/KhhxhVbB9gjEYs=;
 b=Wd+rGcsICDj51M3K2ihkVdStvCB+04I08Afx5wZ4zOD9bPg8EvOUlBvv+ZWC954BVy01V3aAYdcx6o7+wLVEAUCgYlQ8AP+W8sdWdYw9n/lLjrwCGBkGb9K4SSQC9K0k/QYXecNcyaJgUdZJjxmEhWOAdpDfJ6JJZvXfTZEbCzQ=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM5PR0402MB2929.eurprd04.prod.outlook.com (2603:10a6:203:9b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.23; Tue, 5 Jan
 2021 03:27:31 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::2548:da90:59cf:d4cd]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::2548:da90:59cf:d4cd%3]) with mapi id 15.20.3721.024; Tue, 5 Jan 2021
 03:27:31 +0000
From:   "Y.b. Lu" <yangbo.lu@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Leo Li <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Walle <michael@walle.cc>
Subject: RE: [v2] arm64: dts: freescale: use fixed index mmcN for NXP
 layerscape reference boards
Thread-Topic: [v2] arm64: dts: freescale: use fixed index mmcN for NXP
 layerscape reference boards
Thread-Index: AQHW4w94u85mwlK7g0GP6EIEyJ4Mv6oYXRoAgAACFIA=
Date:   Tue, 5 Jan 2021 03:27:31 +0000
Message-ID: <AM7PR04MB68857C2E8AECDC3088FEDCABF8D10@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20210105031122.9847-1-yangbo.lu@nxp.com>
 <20210105031943.GM4142@dragon>
In-Reply-To: <20210105031943.GM4142@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 46a1a18d-92e3-4768-2f43-08d8b129d615
x-ms-traffictypediagnostic: AM5PR0402MB2929:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR0402MB2929699262E42F4819B49FD3F8D10@AM5PR0402MB2929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7H3lwBW6sMImzY/bfxle27yitcV1tXekWb2DQuw8FRVuV57AnKWy/i96q1YwVMvrqY/guOcmZ4w5e+Uny1bl/qnO+YDzoCQ79coRKXHeRWsb7TfHzTQRRv7not1LxSkcMVJlNF5LUIHJM3eED9leFJ9vG0YLk+sg+eSI8flwhWBBJJR1avTBHtS6ppkvIPk1jG5PRK2GmPvtBlM4JFXUEIv441ZBk7g4GvL/Ynw31ewzn4vtxdlx52j8jHpUmW30u+pXGYYPteBXe/yzFsbnHuXDxK7N43qJ3x2fd9o37BeN61IpT9P+fLNOt5Rpp073/dURE/9XnIBqK4UD2dID9Dwkkjij7VtEwejZPdpBAFIA9jayB2oDHBPbVr0avrcSy/tN6BhwEadg4aUaL84NDA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB6885.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39860400002)(346002)(366004)(396003)(376002)(9686003)(55016002)(7696005)(86362001)(478600001)(5660300002)(8936002)(8676002)(26005)(6916009)(53546011)(186003)(2906002)(66556008)(33656002)(64756008)(66476007)(52536014)(6506007)(54906003)(316002)(66446008)(76116006)(4326008)(66946007)(83380400001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?LVUyjRHsmYDjF8CASGjYfIaxHARvB0N2UfhiuzxxoD9SoknPGa76nNXFSgcG?=
 =?us-ascii?Q?JRTKHFzTueF9IACq31zb9y8BjrfrAu97eXunobOFlZ2t+N9ShVtP/3gdbRD5?=
 =?us-ascii?Q?GJbCAMa+erdNmdtXDNu1gwk1iYStzoxr6x/HaiUDtERLh790GSsLRqQ/9/Uq?=
 =?us-ascii?Q?vg8CNIDpjl9xxy3ZdzAtKFJwKFwEWqlXKVWa1E3TeFC0b+iIwRxMAu+sSaGz?=
 =?us-ascii?Q?lSoB9oKHzQiCm7d5m33EmdjH4D/KeINDpcDGHaLBqs2svkG31/twCXBsju3t?=
 =?us-ascii?Q?mGH5EU98CDKvhW1xEECP70BI+0bJDiwoeWo8xEGa7m+eiVeVkcCcI7aXm6G8?=
 =?us-ascii?Q?hdrK9o1hemqxdU+cPGFZAvTdy3lyZQgdd8s8FrvmuwnZ80vFur6lVKjOVdig?=
 =?us-ascii?Q?8XpkK8z9s2GLvGmKeT/ms0Yblr3dK/rJEroE0VWn56Taw7yJP153q81PNe6X?=
 =?us-ascii?Q?frswy4mvtolmLB5dpIRjEXobg4LRvz5qq1IsV+3zEpxppHUY6A2lCDTspoEw?=
 =?us-ascii?Q?x7qLn68bp683Bbr+jUcxN2iQpDsIO3tHr9XTj/KG2d9XO2aH/fEvUfJ+5+3G?=
 =?us-ascii?Q?b344QrDxAaPxks46ZzsFB4ozUXcjlx/coyC6so+ujdi6xKla36xmSSoznuQb?=
 =?us-ascii?Q?ohNiaxVEomDXDDQ8U4bLfxbkMDRGfQL8N43Dqm+jjRYxNs5wJL4HmiP+85sR?=
 =?us-ascii?Q?XESZj0n7M4PMPXUZoc5kpWVewLofjLcoBSZQUVbWQg2DL0VS51mXK1RwQKfi?=
 =?us-ascii?Q?HNXKg8IMayki8BjBF10i5xFU3vVV1linw2w0r06hWktbWA1hM+JX7gLoQc3P?=
 =?us-ascii?Q?+b1/31mX1Hv4eR/tqAGd+lGCtzpGEAoUFO8XL41PlMH4sftBhdJtcMw5uzPa?=
 =?us-ascii?Q?ZBP08/sjthjbUldk8ziyzvjMdVGPX+Hx5Nzfp8+YwhbfFzGGQhqPvMbdeHi8?=
 =?us-ascii?Q?blZDtuneZvqZfPvWeDAfdotLegv47m41m1z5QAb7qt8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB6885.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a1a18d-92e3-4768-2f43-08d8b129d615
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2021 03:27:31.5557
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wWV6hLZhv6IUcS8P81uco79f1RyIwEYWRaETqyA+/1bPFiKt70rT1q40dLdwOPkMBfZg9sYjEk+O1h19BMpvjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2929
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Tuesday, January 5, 2021 11:20 AM
> To: Y.b. Lu <yangbo.lu@nxp.com>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Leo=
 Li
> <leoyang.li@nxp.com>; Vladimir Oltean <vladimir.oltean@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Michael Walle <michael@walle.cc>
> Subject: Re: [v2] arm64: dts: freescale: use fixed index mmcN for NXP
> layerscape reference boards
>=20
> On Tue, Jan 05, 2021 at 11:11:22AM +0800, Yangbo Lu wrote:
> > The eSDHC driver has converted to use asynchronous probe.
> > Let's use fixed index mmcN for eSDHC controllers, so that
> > we can ignore the effect on usage, and avoid problem on
> > previous use cases with fixed index mmcblkN.
> >
> > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > ---
> > Changes for v2:
> > 	- Dropped changes for ls1012afrwy.
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts | 5 +++++
> >  arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts | 5 +++++
> >  arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts | 2 ++
> >  arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts | 2 ++
> >  arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts | 2 ++
> >  5 files changed, 16 insertions(+)
> >
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
>=20
> Sorry I did not catch this in v1 review, but the aliases list should be
> alphabetically sorted.

Sorry for my mistake. Sent v3.
Thanks.

>=20
> Shawn
>=20
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
