Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 832F36F9BB
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 08:52:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726643AbfGVGw1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 02:52:27 -0400
Received: from mail-eopbgr20052.outbound.protection.outlook.com ([40.107.2.52]:24039
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726440AbfGVGw1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 02:52:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mkE2YIZmLLrlZp1ykwvKX+8s8aHbDKBW+YlL/pnsD18QxDuWq7Ej2vdIkXKlxAHBLvDlybC3xcTd7n+tlo6FzGkuLT4ExCp/qKOe5sz0uFDpY55n9lr5HbgH8POL3CcaBIOBU9yd7lnWCWVZabC+DGPLLAJyvPH51C9fwOkkqBhrDdHA2w2ll3JJHyqyGzUiYBh7b3Vibt+guoKEIqTMIDeQhdNe9zXGgIMplQ+b/jPhsmbbEJLeRpKWV0kzSi4JMcYNVRkm+h0Lb96lFbRxA7ML5WYcj9aXVk9Dtof5lt+ajERyE3EQOXsgfIZguppqlzXhpw9Cc31lNny2tCXv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vmpJSnwY/nvr9rYsEwUUNFbYiva790D3YnSURjxd7WI=;
 b=eVu4BCE73BYYFCx9TJ6Wyorv1+YRGp55E691XvG7bO5zeOgLOuuvub8AiR7gifmBq2anbBuDv7pJlciK9PA3z+F/77V9KCrPLTn/xsRN1tjB5dIqVztvP2j/rCZ2iAmTDA+7i6DgEQ3UIH/PRzHctSZfLtRyR4wjOARLv/4+awXPcInDtzQ3TnKmBVe4y92vjJD1v6g2yuxZ1xl7NWsFff4DMM/ctS/Ackz4ODZ9CIwGSRrCN7BsbhEsu1J57Q2iBjjI6olnP2GrVPSuvJ6TNM/cqatBcP2Poi2CGHmzZspQG6lE1IeJ+5cNJ0gaYMqBCKf+eUpSavnnbOLClGucwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vmpJSnwY/nvr9rYsEwUUNFbYiva790D3YnSURjxd7WI=;
 b=jdnF14Fg4a6hvpFn7LBW7PqxRvWHjA9abMNNY5wFwAJkVXjs5SMeJQwUwIc+RdNVUWunTpSjaN9jn0eDtmqopUDbXM6HIR0NtbpVdsAvZ4ZOiWQaxpyUT3s/z/LdRbrIvOuhIs1XyLNKAXSOl1sUQwyMsgwY/8DGaBpvz5F24x4=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB2749.eurprd04.prod.outlook.com (10.175.23.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Mon, 22 Jul 2019 06:52:23 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52%7]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 06:52:23 +0000
From:   Andy Duan <fugang.duan@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "festevam@gmail.com" <festevam@gmail.com>,
        "daniel.baluta@gmail.com" <daniel.baluta@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [EXT] Re: [PATCH arm64/dts 1/1] arm64: dts: imx8qxp: add lpuart
 baud clock
Thread-Topic: [EXT] Re: [PATCH arm64/dts 1/1] arm64: dts: imx8qxp: add lpuart
 baud clock
Thread-Index: AQHVMlEqS52Jir8tLEeHnbVTPIm00abWTdgAgAABWgA=
Date:   Mon, 22 Jul 2019 06:52:23 +0000
Message-ID: <VI1PR0402MB3600228E0A05617D3B01AA7AFFC40@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704100443.10957-1-fugang.duan@nxp.com>
 <20190722064649.GA3738@dragon>
In-Reply-To: <20190722064649.GA3738@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a563b6a5-7257-4580-7dbc-08d70e71266a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:VI1PR0402MB2749;
x-ms-traffictypediagnostic: VI1PR0402MB2749:
x-microsoft-antispam-prvs: <VI1PR0402MB2749A532BF7A52D9F3626A0DFFC40@VI1PR0402MB2749.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(396003)(366004)(346002)(376002)(136003)(199004)(189003)(486006)(229853002)(3846002)(6116002)(7696005)(6916009)(55016002)(6436002)(66476007)(66556008)(64756008)(2906002)(4326008)(14454004)(71200400001)(66446008)(71190400001)(66946007)(256004)(14444005)(76116006)(6246003)(53936002)(9686003)(11346002)(66066001)(25786009)(446003)(33656002)(316002)(476003)(7736002)(305945005)(478600001)(5660300002)(52536014)(76176011)(102836004)(6506007)(26005)(54906003)(186003)(74316002)(68736007)(99286004)(86362001)(8676002)(81156014)(8936002)(81166006)(32563001);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR0402MB2749;H:VI1PR0402MB3600.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OCnIqFhAsGq9UXREX/XtLPsZlsgyoEn/lx45ZxOqFwfn5V0ZPZNJt5IX8gKtLRBiwd+s31geubAwA51aB/sVJDGxEkdEWCXLpf1b9K78RlwHMpdV5y0dikPAxcctVgbgtFgnh/KaeT5fRrDTTySUwsOQ02bKqvYpWZv6WPTvbzruCgxyyDb6dDvVEsfCiEWTNvxNoac+JFrA7/lICSU5vqzN8FZ5owAlM8yxau1za48wxViX8d5cmI+xtFZ2BYAVOsxXsy3q5ftywMwNdQZSd2i4nTY2GUCngWEu5SJUVP0/4epeSHcnPtN13AoJCBtxdbrdsa+z5SuBZltHrjTx3lz3S1p9dMta34K3D6TmalvlIE8uPdwS709aQlXIrXJCKULU5huZOs8tfikXNvrp2if73tRuErxI7Gy+YYc46cM=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a563b6a5-7257-4580-7dbc-08d70e71266a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 06:52:23.3561
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2749
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Shawn Guo <shawnguo@kernel.org> Sent: Monday, July 22, 2019 2:47 PM
> On Thu, Jul 04, 2019 at 06:04:43PM +0800, fugang.duan@nxp.com wrote:
> > From: Fugang Duan <fugang.duan@nxp.com>
> >
> > Add imx8qxp lpuart baud clock.
> >
> > Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 23
> > +++++++++++++++--------
> >  1 file changed, 15 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > index 05fa0b7..4402b2e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > @@ -30,6 +30,9 @@
> >               mmc2 =3D &usdhc3;
> >               mu1 =3D &lsio_mu1;
> >               serial0 =3D &adma_lpuart0;
> > +             serial1 =3D &adma_lpuart1;
> > +             serial2 =3D &adma_lpuart2;
> > +             serial3 =3D &adma_lpuart3;
>=20
> This is not about adding baud clock, right?  Please either mention the ch=
ange
> in the commit log, or have it as a separate patch.
>=20
> Shawn

Thanks for your review.
I will send v2 to separate the patch.
>=20
> >       };
> >
> >       cpus {
> > @@ -209,8 +212,9 @@
> >                       reg =3D <0x5a060000 0x1000>;
> >                       interrupts =3D <GIC_SPI 225
> IRQ_TYPE_LEVEL_HIGH>;
> >                       interrupt-parent =3D <&gic>;
> > -                     clocks =3D <&adma_lpcg
> IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> > -                     clock-names =3D "ipg";
> > +                     clocks =3D <&adma_lpcg
> IMX_ADMA_LPCG_UART0_IPG_CLK>,
> > +                              <&adma_lpcg
> IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> > +                     clock-names =3D "ipg", "baud";
> >                       power-domains =3D <&pd IMX_SC_R_UART_0>;
> >                       status =3D "disabled";
> >               };
> > @@ -220,8 +224,9 @@
> >                       reg =3D <0x5a070000 0x1000>;
> >                       interrupts =3D <GIC_SPI 226
> IRQ_TYPE_LEVEL_HIGH>;
> >                       interrupt-parent =3D <&gic>;
> > -                     clocks =3D <&adma_lpcg
> IMX_ADMA_LPCG_UART1_BAUD_CLK>;
> > -                     clock-names =3D "ipg";
> > +                     clocks =3D <&adma_lpcg
> IMX_ADMA_LPCG_UART1_IPG_CLK>,
> > +                              <&adma_lpcg
> IMX_ADMA_LPCG_UART1_BAUD_CLK>;
> > +                     clock-names =3D "ipg", "baud";
> >                       power-domains =3D <&pd IMX_SC_R_UART_1>;
> >                       status =3D "disabled";
> >               };
> > @@ -231,8 +236,9 @@
> >                       reg =3D <0x5a080000 0x1000>;
> >                       interrupts =3D <GIC_SPI 227
> IRQ_TYPE_LEVEL_HIGH>;
> >                       interrupt-parent =3D <&gic>;
> > -                     clocks =3D <&adma_lpcg
> IMX_ADMA_LPCG_UART2_BAUD_CLK>;
> > -                     clock-names =3D "ipg";
> > +                     clocks =3D <&adma_lpcg
> IMX_ADMA_LPCG_UART2_IPG_CLK>,
> > +                              <&adma_lpcg
> IMX_ADMA_LPCG_UART2_BAUD_CLK>;
> > +                     clock-names =3D "ipg", "baud";
> >                       power-domains =3D <&pd IMX_SC_R_UART_2>;
> >                       status =3D "disabled";
> >               };
> > @@ -242,8 +248,9 @@
> >                       reg =3D <0x5a090000 0x1000>;
> >                       interrupts =3D <GIC_SPI 228
> IRQ_TYPE_LEVEL_HIGH>;
> >                       interrupt-parent =3D <&gic>;
> > -                     clocks =3D <&adma_lpcg
> IMX_ADMA_LPCG_UART3_BAUD_CLK>;
> > -                     clock-names =3D "ipg";
> > +                     clocks =3D <&adma_lpcg
> IMX_ADMA_LPCG_UART3_IPG_CLK>,
> > +                              <&adma_lpcg
> IMX_ADMA_LPCG_UART3_BAUD_CLK>;
> > +                     clock-names =3D "ipg", "baud";
> >                       power-domains =3D <&pd IMX_SC_R_UART_3>;
> >                       status =3D "disabled";
> >               };
> > --
> > 2.7.4
> >
