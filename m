Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE7E63D1F40
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 09:48:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229642AbhGVHHu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 03:07:50 -0400
Received: from mail-eopbgr60063.outbound.protection.outlook.com ([40.107.6.63]:59652
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229547AbhGVHHt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Jul 2021 03:07:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkmpiH/VaN0ARBLtetxNeZNhK8TaAtOGe1qGgbBffDNrAEum7825SHmlbvEph+wJoRBQ9xvDXemKvJb7WBJDIZ9NRhUyXJxrI1/hSlgbbkKAm2mPRRu6/K0ANeOC49cuSRLL3XoDnHwHhNSSIpLncP5sN2PzlrbsZ6t6QLLa++CDnavoYQ9Utj+kRJg/P6lERmAvaJqQgP2Mgn87b3ayyAGgdn54mm4tr2VBHM47fq/ASM7SA4N7k6n+P2/e1SCbxxeed8hnz22Yrg7f+uX4F96aLy3N/rmwxL+eDkuOwpOwUl10q5VIYvT/e9wLxWxJjeggFEW8Pvqm9SfkrYZtbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yU3x71R11Z/fQBWjGZlbFaiV7B0Bs0LUH2mh6OeMhm8=;
 b=mARIgbSRAyQrP2GA6Jg9uAdP+Tbk8VZMTAmTcPq/cKvmUIXtWe7R7lMfWK6kJRvtCsxkQzm1/thUsH+d0rUOd9hlZFGDze9x2s87sG1CUw1Fzh9qgqLC4vbJzRSp1WOzRwqFD2Iqgq/k0DMRaHLgKX87toxgCn4VurCtAYtCKUtIvzNNoKSLfjheg5+ybNcOVO8KgL5Lk7yyVWGJ4kBiPoOcFz+VC8CjTZcmcZJcfo8zkTornNBajwuy8mMRbMIX2hjCs1fubxXFaZ9dt/ud3EzIQv4TztDlFjjvdj9EB19IrDTZjwz6dy4qMVmaJjowM1DHhOo7Pn8McGCPycfdDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yU3x71R11Z/fQBWjGZlbFaiV7B0Bs0LUH2mh6OeMhm8=;
 b=sSIA2GumuyW4D2AOEbf4yuDWxXx2JlV0sIvRtOwba0X0e4XqPAiefpoi7SXXqcQ+otnVdfx77reoc/wOH+AEDxwG5RE30vtf8fqgyLSg5WSOmvBlAqLd6Q+MZsF+uht3AMgdVLe2rpSNFwqKD1gSor+J423tLbfhN5IkejBR0ss=
Received: from AM4PR0401MB2308.eurprd04.prod.outlook.com
 (2603:10a6:200:4f::13) by AM0PR04MB6500.eurprd04.prod.outlook.com
 (2603:10a6:208:16f::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.28; Thu, 22 Jul
 2021 07:48:23 +0000
Received: from AM4PR0401MB2308.eurprd04.prod.outlook.com
 ([fe80::99d8:bc8c:537a:2601]) by AM4PR0401MB2308.eurprd04.prod.outlook.com
 ([fe80::99d8:bc8c:537a:2601%3]) with mapi id 15.20.4331.034; Thu, 22 Jul 2021
 07:48:22 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     Mathew McBride <matt@traverse.com.au>
CC:     Shawn Guo <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/5] arm64: dts: ls1088a: add internal PCS for DPMAC1 node
Thread-Topic: [PATCH 1/5] arm64: dts: ls1088a: add internal PCS for DPMAC1
 node
Thread-Index: AQHXfrG7kRPz/k86bEed/ZaWImo/FqtOnn6A
Date:   Thu, 22 Jul 2021 07:48:22 +0000
Message-ID: <20210722074821.burlgvcxuisrcgvg@skbuf>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210722042450.11862-2-matt@traverse.com.au>
In-Reply-To: <20210722042450.11862-2-matt@traverse.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: traverse.com.au; dkim=none (message not signed)
 header.d=none;traverse.com.au; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20ef2d6d-47de-40a7-bd35-08d94ce514c2
x-ms-traffictypediagnostic: AM0PR04MB6500:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6500A0F7FEC267ABA4550888E0E49@AM0PR04MB6500.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jzVnfX2VNQDAsTaXusdKPGzK4NkrnIEDr6sdwPYqdk2qOjdPovz2Qieqb5orqgXgaHndeBjxXLVU6SEdaY2c+awmV/1FSlv1IeW/8VSj5QXJkMzISEGLLOXxYzNX45DoQz80olPx5BFMe8XBMKqRAvsZzLPYmfqd5hgIJEEffaVRcH4yLbYCb14BdvSdjM2h6diwRseVp5F/7Zzkgo3I2ztnzpvwsBc8QA9UPs3zit1OoVh/wL3grjm9zCzhiuUK3rvh5OLdo6gS3yvqIX60Hd8C7q+fAcmBDb+UXDKQQy9IUSEa85Hb1Et/wxPDldw4IaRRattb0f9dwP2eGoQqzXP0ib7cqGFNTE8DYmsB33KHTLNy+EjImolXl6FudcpOqPdsTeaTuVH+oY4nQOVfIsr59/TXx9TAl9ziuwGRdzzpv5lG7JjgJ5CdN8uS3hF2TL8+wBOdwZnrxyvG/0601GQTS/EGmh20ZhCCYwbJ6rzXzl1t1EtY2MP85fkigTk+yT1tRcE2lFrrI/PYU/5/FOWZWPsH14CLKTM+SG4TXeG/hgK8t+qv/s1i11yoby9ioBz/j6bOZDAIv78Bx8i6c9xLYrJ6UMDWqiRwxuQi7tY4iNRArz50CXbIVEVfr1CBqWYdF8Jei2ZpM6U2VogJgb7W5biHUgo5Czy+r9JtUj6tCNZMli/gwDl0jyOOTLRkYruxBbmsdADyj3nqzHJbtw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0401MB2308.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(7916004)(346002)(396003)(366004)(136003)(376002)(39860400002)(478600001)(26005)(5660300002)(38100700002)(54906003)(66556008)(8676002)(66476007)(3716004)(66446008)(33716001)(44832011)(6486002)(6506007)(66946007)(6512007)(8936002)(91956017)(76116006)(186003)(9686003)(86362001)(1076003)(316002)(6916009)(122000001)(71200400001)(64756008)(2906002)(83380400001)(4326008)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AK+MjJ4kTcaU4Zf78tJQ4Hb/1RQ2BcWHfCdy82GrEAFfg1eLyc92lFDgqdAC?=
 =?us-ascii?Q?Uz2BylkV23IdyNWGFHaGAmm82Z2zrjJe9YL1M7xIL8AdzYFndzle3VCUtR9f?=
 =?us-ascii?Q?3/+0vlu6itkAAAzuNKF3mClv86wvoH4Duv3GtY7gDVC3aBM+WFNyxLFqbp+l?=
 =?us-ascii?Q?ntF5A5xzyTwBderlZX4E2drjLrWLqNAUKmFBiUhsH0Q2NmNzHbA7qi7lNuyI?=
 =?us-ascii?Q?5trBR6oenEzvdcMdH6T4E3Bx7/bd36NHHiRZ17Rp5OBbwlzf23TJYrE+tSSS?=
 =?us-ascii?Q?qRZyF2+WbWzDD10dG3u+MIlwnFSa6wUHPIk9ghBwKmRfEbWkJKVnx1dAvn4L?=
 =?us-ascii?Q?6DRMWCXEySnc4vmUNRRcz67XsgOSMR39DZTQ5hvWQeLuilMqWSlIhGgjSkNU?=
 =?us-ascii?Q?UVdm8kJtXXI30jUXLY8mLp7b45KR6eVW2EjjSfhc8sa3g5l8vatWmOxM8XrV?=
 =?us-ascii?Q?kAsWPjnQqXX3EQdy9eE1Hv/MpObU82vz2fbsxovdHGwXlSxp5cfnwlqZrtDI?=
 =?us-ascii?Q?JsVumsSvdgaXsXv5iATTw7gQOIGo21dDnpU6FQ+vrhkWBixmdd3iFGS9GMaK?=
 =?us-ascii?Q?ckFq3psN4VrI8JHxO/+8DAIDBcOFwnSSTJ/4a6xOOW3kUUYsxYJ0VqwUWlNM?=
 =?us-ascii?Q?aMJABILiON08fBYFxmOQfMOdjhHYFxnX6zYRkmHXr5uFQFPwchCH+5HLEwsp?=
 =?us-ascii?Q?m3m40ISaCYTtHnicIiL6YwhuyMvisnR0HwAdrBDN2ZBLuOuW9b8dZ7Rje1Nz?=
 =?us-ascii?Q?65Xdn4ZIjHRPL9KQTsyaYovyBWpPWL6F6IsJJ+drrSpDeEnC2RNywkRUku0S?=
 =?us-ascii?Q?XE5yURtOQgYT2pvDmZsjD0rwCIRIjSYvBPustfkZQnRPaU0wd7JK8A+xm44J?=
 =?us-ascii?Q?uQqMkPfUvRmzVW5WyOPJ+2WbKX2fGkDYa6Uq1oHD1Yq6alIvmdkj5zAO9htB?=
 =?us-ascii?Q?PwQHUY0cViIwzVYxNmwl4IFBaot76wunv3Hx7+oyg4GgV3x5s61KUYG7dCwO?=
 =?us-ascii?Q?uq9oDon39e2Dw8YtIB4H6Q8e7vVdCWbNX3mOUb0uyThxKhb00bB04wHbv85i?=
 =?us-ascii?Q?S3XmR2eWcpWqymX6t7TfA2dcS6qLxi5JqUWVqIWq7eK99LaI9IIoW0A8ZbF6?=
 =?us-ascii?Q?f6yHyCQ+MxSDnhOVEZLoK8y+Lt+TsNyJV4M4cn0C8vc/jkWtumYSzrKLTRbq?=
 =?us-ascii?Q?MJ2AaNsngKwV15tbIAk3/nzNg4dxpFgqZBUMKH/V2OW4vBjHNqSFqi9n18Ra?=
 =?us-ascii?Q?CcjCty5gZfEahHJBoSehsrToubMZE1CbNTNtiYgu1LXd62vJfJ9NVvuiop/S?=
 =?us-ascii?Q?UJPGg7udL0XSjl+WIsKVhhju?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0A06933A9E63704C8BE3C62003BF13A0@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0401MB2308.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ef2d6d-47de-40a7-bd35-08d94ce514c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2021 07:48:22.7844
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g8W5ErfcS74Jl1sLijnYOpza8PLpUm9WrLU/hqROcvv0w2IeIafPe4rc2Ec15gE2uval85Qlx+2Ad69sAZkzqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6500
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 22, 2021 at 04:24:46AM +0000, Mathew McBride wrote:
> A previous patched added the PCS for DPMAC2 only, as
> used for the AQR PHY on the LS1088ARDB.
>=20
> DPMAC1 PCS access is required for PHYLINK SFP support
> on the Traverse Ten64 board.
>=20
> Signed-off-by: Mathew McBride <matt@traverse.com.au>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/=
boot/dts/freescale/fsl-ls1088a.dtsi
> index 2fa6cfbef01f..79ceadc9dc4a 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -765,6 +765,19 @@ emdio2: mdio@8b97000 {
>  			status =3D "disabled";
>  		};
> =20
> +		pcs_mdio1: mdio@8c07000 {
> +			compatible =3D "fsl,fman-memac-mdio";
> +			reg =3D <0x0 0x8c07000 0x0 0x1000>;
> +			little-endian;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			status =3D "disabled";
> +
> +			pcs1: ethernet-phy@0 {
> +				reg =3D <0>;
> +			};
> +		};
> +
>  		pcs_mdio2: mdio@8c0b000 {
>  			compatible =3D "fsl,fman-memac-mdio";
>  			reg =3D <0x0 0x8c0b000 0x0 0x1000>;
> --=20
> 2.30.1
> =
