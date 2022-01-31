Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7A914A421C
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 12:11:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349478AbiAaLKx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 06:10:53 -0500
Received: from mail-am6eur05on2050.outbound.protection.outlook.com ([40.107.22.50]:37740
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1358648AbiAaLHD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 06:07:03 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YI00kv0UaRjT1xzxaGAS5kI3fuChsaxtPr8IjoycPTZwbhV2R+SeRVr8M8iLQsgp8mUDfJI7f8OYy2y1smn5vH/22avIQ9bylSleWZEgXLxkCZ0S3s6UPCjLaNG4Ciow8ZKsgnV4JdMdb4B1cjjMPEHzxKwubEg6XNAke3GRwAdvQdmuRaiNy1aIbem+VkYBsov73Qo/Ps09ExJh40qrpjAOfieMQ6+9KMh0cJ3VuPyB+wTP8mo8CbNReRvrV/5Q3cCX78eGfsgxA3lk0JXYtzT8/q+YP94U7UkbXt5UpSLijij2YKOADnfyym57ho5VsvgOG+WMemztBJK0NYVLvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JVbjWvIw8FpNJOFQD+o0m+6HwsO1DBe59lxERxucH8A=;
 b=oShksJWB0OYShF/XBOsUkKGLiGbBAk8FWBTpt2YresV0QXjz+e+gi8GhlAK9PUGb+1Jn7f01CH5+JDZCR6hezs+60Uze75sN75qrIaPEgMW2nVIuPmCTallddEWYVqSYMeqnJvPaQfeF7dLjmYcnugyNiUDf/HY3aefRjrY/R47/JO+rcZO+P8mt4kGs2f/1XYdn/sqD6gz29KBMXZVkljizxfztZjTjtjhrCNkS5pt0dQgVjITVeKaw5mmdCbiXQYFoEzwx75QIJNpO7KCQFPIebcK+NNdDx9LCn7yodxPNFKP5cWn4DoFBBNu6SKCuzuoWdt/FFBFIFGqQxL7URQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVbjWvIw8FpNJOFQD+o0m+6HwsO1DBe59lxERxucH8A=;
 b=YNLy/g4x6XdT4vIwdPFpqghMKfN3yKPEGduLVyawgN6xmTX/2yhtBHxDS/+Ulk7a/X5VldjRITrUjxr28S3st88az5XUmq1GcFkQnn0tGomV+5ycYNwN39I74W/2MSVghRfsurIg2M7TbDLjN0RZUNFGy8YWkFgC+IUThbPsAXU=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.21; Mon, 31 Jan
 2022 11:07:00 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::f4d7:e110:4789:67b1]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::f4d7:e110:4789:67b1%5]) with mapi id 15.20.4930.021; Mon, 31 Jan 2022
 11:07:00 +0000
From:   Vladimir Oltean <vladimir.oltean@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: fsl-ls1028a-qds: Drop overlay syntax hard
 coding
Thread-Topic: [PATCH 1/2] arm64: dts: fsl-ls1028a-qds: Drop overlay syntax
 hard coding
Thread-Index: AQHYFN8mmYPsLmdKWkeIUt/7V7cDGKx8+5aA
Date:   Mon, 31 Jan 2022 11:07:00 +0000
Message-ID: <20220131110659.7lu7ccfcktfhgddm@skbuf>
References: <20220129070912.9836-1-shawnguo@kernel.org>
 <20220129070912.9836-2-shawnguo@kernel.org>
In-Reply-To: <20220129070912.9836-2-shawnguo@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 287afc0e-3b29-47d9-f0aa-08d9e4a9cdde
x-ms-traffictypediagnostic: VI1PR0401MB2559:EE_
x-microsoft-antispam-prvs: <VI1PR0401MB2559D8051B97C7FA4D96257AE0259@VI1PR0401MB2559.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0AnI+pf3sscrvfvJ65FFaZ2cX4JqqB34Y35gH8PQEwbdgtrKyhYGXK7HLfV1Nr53VTp3uPJqSubMG2wLvZfCBZfeLEQWW5QkZlnkEgtvtztMVpEdYoF8KiPtGXSC0h8YBxjk7xNO9G1/rJVDDvHosPuH2LGkZfXskTd4fn3UTtKJgKIIxXZaPL2/k48OqEbcovQOD4gt7ec/CobgVFUaVRGNadJNVWP8pE6l6cQa2RGgToIPeOIOWDBxv4+BoyNvn+ikDo1MpV7t0VYSbsRxt+Crl0wI9FfFxC1kHRk1ft5N3kj2NriGisM5D5GeaPrULZUrmOm7LMmcUQkk0Nzp3hPWYexI41wISvr5rUQhLeGxV5lm1jEvqHSIGJ0zibSg+d1ES3PVjkd19FXcQAreACJY8EbOnEAVhgYnW8ggKZrYf0Q4LN2IGqhY2r6yyYyD5ze82ju0JI0SzN6Ec88fibHGMI6Xmk6EDB4YOzl/jadvS3w3WniqXACe3O/e2JrYE11dYPoGmR1+VZqhEipseCp72uC5Oi9E2IsSIwKWKGTU7q60zb57tJ3WA/OieAoXecN31FzrdOGBT+PkA3/tf7/PTjLmIFJfRaDeSYcbpjV1zV06fem1IamSonujTWGRPWXrzL/w/3c2UKGHMt3KCSSNRKWhpRdxDOZFcfEC9R2NtG0ILIxks1V1Ar7Sd7gdpWSo1suIPKDqH1xXOted4Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5136.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(76116006)(6506007)(66446008)(64756008)(2906002)(91956017)(8936002)(66476007)(8676002)(44832011)(4326008)(38070700005)(66556008)(33716001)(66946007)(316002)(86362001)(6916009)(71200400001)(38100700002)(54906003)(5660300002)(9686003)(6512007)(1076003)(186003)(26005)(508600001)(6486002)(83380400001)(122000001)(20210929001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Vvdn/VQ/iZm1HUzDVtaL1ueMk88CMYcqDR9A/Ch2rnnk1oZBHgRrQzHqfPcK?=
 =?us-ascii?Q?Qne9BCKbJRrCroKHmmSvTnQRCLDfOegJyBnA7AkTF/s+9k+QKwhKZmJz3Hio?=
 =?us-ascii?Q?zPLI8I5STBtPGNXgTZ16QCbrBWdWk1lOicaDWRPHiGvgj+WdZK1DG3npcELr?=
 =?us-ascii?Q?QP1yk8qk/g+InE8URHK+HZ1gfniDUodtRPiaq4bgI1ySJs6tywTufm1DjdVs?=
 =?us-ascii?Q?ZaCjuEErYGISmd5dj9sM1/ZwWLX1EQYFMsTLiMXILYaOp4npIi4X/YQ6xsZ7?=
 =?us-ascii?Q?zpGlhEA8LXUjh+FUj4H8YVwWd90qKAvNCb70g+9/BAKFROF5C9T42PbH9VaI?=
 =?us-ascii?Q?v+jOGtZhPb0fdrhDCkNVmHqg8oR9tS1o+9KqN27UWDeVGkD8+vWPRqC08mvs?=
 =?us-ascii?Q?aNXR09LyQ0bQuZ38aJl5bF2I621pp6OnGSKS17WHxFHL2BBeYJzSgA72ZHXc?=
 =?us-ascii?Q?vF3uau4Z2Xoc6I7b7gSns8A15McPc27suzeFihgw9C43vACvcCo6om1Ibvgb?=
 =?us-ascii?Q?xX40LaXoBGc8gtuW/jd9KrqgJfHdbj33pY+J+5p0w/aNbEACULZswnQNAnEo?=
 =?us-ascii?Q?MN/3u5c681OJAe6vKdn31+BXNQ8UStCOVepzDlA/I69JHDxYQC4V48hoXaG5?=
 =?us-ascii?Q?j8Sb/oCiSz2MXBjBjP0+fiBTRNfcL0uoR6whhtmL010rEGGRFLPjgfxZs2C0?=
 =?us-ascii?Q?7o1Ywtx0Bv5sX5dqWMIULZtVTTSasbHvp4EsoE38wv7eyR+ExxZra2JXO8Tc?=
 =?us-ascii?Q?+uLsKKrA5ggy0i1htz/URAIzW16fqEAbJd2Xza43cqbdkf4Gi7fKZ7js2KAM?=
 =?us-ascii?Q?FHuKP55sh8QBmgBKErwZND/i3fDgUfKiOwbwl9lyA+4WFfkNqd66zBcQSC9x?=
 =?us-ascii?Q?2fg8X8kaSZ5PdqobUrlSiZW9BDW7uiENa5iYFbT+C1kk54DfaXpKQqb54lPZ?=
 =?us-ascii?Q?Wickp6bqUdIeHaObHGBzD8ZaYaDvOozduJsn8Q4Zf7RBJmhbcImDnVtglm16?=
 =?us-ascii?Q?y1UEL5VRvu2JxEcc35g8mOiUvcYUyPyXUotDbQ0ENVRbSTI5vPLM93ns4yjU?=
 =?us-ascii?Q?o3CMouxfr/t0vr0WCgtYS0uWbqFPuKvLI5hZ8NSCHtlDevDLSunRRd7o5cMl?=
 =?us-ascii?Q?suo4CH4TLlLQ2sLxpd//aGNxgsYQTjos2sMejF86lsCkGZja/jy4K8PFIFa2?=
 =?us-ascii?Q?B3ceAYyGzI+s5g/q0a4LLetm+5loiyNtabBg6YnCMwvNx3LXVQ5XhN8wMHt6?=
 =?us-ascii?Q?YuS1r6587+CeZP9KBFVlzJk6J0dAcC+LCXI81zdNcSFKFz7PN1DX0I7EXtwG?=
 =?us-ascii?Q?qfLU1+/tM92KLygqXD68TgbHODsD0w91eUvRMX4yGtTMds/DdIL8IQYdrfE4?=
 =?us-ascii?Q?MiumoDY3jGiNaDDSS70T6NvlzrA17b3dvhC30VVjDnBCM1nrUHi+JvuO/Fqa?=
 =?us-ascii?Q?+G+Gid4gR6tYpMVUuJqLc7KADveU3adaekaL60cdDLnh8WoPAzATn98jPWH5?=
 =?us-ascii?Q?oIHSHqyaslah/H8FgLF8CdXGtqLNhRA6ODirJxR0VQnal7Jss0+YWuLJmglb?=
 =?us-ascii?Q?By9FYuv/l43BIj7sbqUXsnA80AEBkKKHutbjg2WI90H1rjfYgi6m2Kw3veVY?=
 =?us-ascii?Q?yJk6VwFFyK01xdit5x97k4U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <33602D4E4008FA49A3268C1442AADD67@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 287afc0e-3b29-47d9-f0aa-08d9e4a9cdde
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 11:07:00.2775
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IdfTd/VbVneNfScw3n0CXQfY58A4j0B5rJQgpx/d+T6O6oRrlQYoX8USnAnsfr5t4RgT28VaGshotNlQKlN1gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2559
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

On Sat, Jan 29, 2022 at 03:09:11PM +0800, Shawn Guo wrote:
> As suggested by commit 9ae8578b517a ("of: Documentation: change overlay
> example to use current syntax"), there is no need to have overlay syntax
> be hard coded in the device tree source file any more.
>=20
> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> ---

This looks good.

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Just one minor comment below:

> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts b/arc=
h/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
> index 8ffb707a1576..bd88438c2ecd 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
> @@ -11,98 +11,78 @@
>  /dts-v1/;
>  /plugin/;
> =20
> -/ {
> -	fragment@0 {
> -		target =3D <&mdio_slot1>;
> -
> -		__overlay__ {
> -			#address-cells =3D <1>;
> -			#size-cells =3D <0>;
> -
> -			slot1_sgmii: ethernet-phy@2 {
> -				/* AQR112 */
> -				reg =3D <0x2>;
> -				compatible =3D "ethernet-phy-ieee802.3-c45";
> -			};
> -		};
> -	};
> +&mdio_slot1 {
> =20

Can you please delete this blank line?

> -	fragment@1 {
> -		target =3D <&enetc_port0>;
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> =20
> -		__overlay__ {
> -			phy-handle =3D <&slot1_sgmii>;
> -			phy-mode =3D "2500base-x";
> -			managed =3D "in-band-status";
> -			status =3D "okay";
> -		};
> +	slot1_sgmii: ethernet-phy@2 {
> +		/* AQR112 */
> +		reg =3D <0x2>;
> +		compatible =3D "ethernet-phy-ieee802.3-c45";
>  	};
> +};=
