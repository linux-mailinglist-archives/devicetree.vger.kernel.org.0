Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2CF44A421E
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 12:11:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349183AbiAaLKy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 06:10:54 -0500
Received: from mail-eopbgr70084.outbound.protection.outlook.com ([40.107.7.84]:25159
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1359801AbiAaLH6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 06:07:58 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ivZ1UPyQQhBo/0U/rFH9a3bJjBooAtU4JFP+EjmmyRYaY0uJaUKpLuQELj4CdooQYyV9BiYHncrLZcZ432k3iulkAuCbF/+sanF3qy/fpfrjztJkPuvKd86nFLolgcr5zQunhjgq6Fc6YlLLmgwl6nten2O1oSlRWUFS14saVw+IiZXOPhBZ74kE9w1da56oNBGse/t1QFNVqxIU9jjUuHeTd8Z/u4ClGVkayMy2/Rt1JSatngWZU88tF47rbNmw+31Esa9jdjWDc7SggvMc7FmfVAPvfWrj0z3o7SKh0IjV+kMl/+U1FFF6vAoPXNsM5RYxuBYQ+FKrNbrLzHTMWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iBa3RmARMbtMtcmn0pvafimVOacMGKio2Xj5bMRP3Kk=;
 b=kGkQlx6bQgQcYiqda+tZpc5HY0yRhevWh+qwdCZgOme+0amSXAvtddJshLYQDjZBAjS5ODsRzMa3HxU9M1oopxp4KG9P6TZ5gzlb52luNkIj6Jm1/jfqQi1/yrBhwR2X25Iiky8ebrXEQPpA4dvQzNiltZ2LUsHZZZjQXImozjrmYEQAIPht5cwZwK+6tLbXjcizLtIaTRXWn/7BPphEWwd3mc74R4C4+YbVSnctGtPP+vCQjxgtwAbRXS4v/7KVBDiOoTXXdYV0i4UWFJTf1UJ4EtzxVGZpF6SkMQstLzMrwOtpnwuIDf2Afirj6/5lXvwCXkb8e3nomKOH3Sn1Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iBa3RmARMbtMtcmn0pvafimVOacMGKio2Xj5bMRP3Kk=;
 b=PigEzyWjKPV2JBPBcpOjtFZUqe583z15s4riJoy4WXf4noeOHKiLaAd9wAI1/sSj5PPGYwiOgLfu15NNr0dp9HyJLb1GZyJryZQwVkYhWm92ojT04E+ju5097JH03oyEUBXk1oRbBJpbiG7wOQwJIci7zszCVmUcCZavpG3Etm0=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM4PR0401MB2354.eurprd04.prod.outlook.com (2603:10a6:200:54::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.21; Mon, 31 Jan
 2022 11:07:55 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::f4d7:e110:4789:67b1]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::f4d7:e110:4789:67b1%5]) with mapi id 15.20.4930.021; Mon, 31 Jan 2022
 11:07:55 +0000
From:   Vladimir Oltean <vladimir.oltean@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Use overlay target for
 simplicity
Thread-Topic: [PATCH 2/2] arm64: dts: freescale: Use overlay target for
 simplicity
Thread-Index: AQHYFN8mRIYMXekasE6/GEqzLSs+N6x8+9mA
Date:   Mon, 31 Jan 2022 11:07:55 +0000
Message-ID: <20220131110755.zlvoefaalpajevt3@skbuf>
References: <20220129070912.9836-1-shawnguo@kernel.org>
 <20220129070912.9836-3-shawnguo@kernel.org>
In-Reply-To: <20220129070912.9836-3-shawnguo@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96f23ce1-c27e-4a28-949c-08d9e4a9eef0
x-ms-traffictypediagnostic: AM4PR0401MB2354:EE_
x-microsoft-antispam-prvs: <AM4PR0401MB2354ABE2FD591C5050854107E0259@AM4PR0401MB2354.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Ae1MJg1O+ky1q9mbIaiPUuwciSwmfIxGFVJCwDCsLf3vaGwF6Cf5gzL8eIw2nYplConXEPHldL2VvL8dg9iwg5OyntpU9s0O09Go3HuGeV/8qK1ol6IqgvfXz8mjNyC1e5LF3V3gbE8unj8IJVg++EzOQB9y95bHQ784kkexSOp27LXGijkvlldXdV3x+jB7Zx0FiYD8OyNPegz+8MjYLwKGqxqMyDD9cEidKh/+Jbmuz7Gl12m/HOyVbC0Ir3t1sUK7N4bMhg2C2MZznhUhwrs5OZ08KhB4VH+B9NAN255gb8fjH0U/+vZ0609NwKtS1h4WHMMqaep0uznzJRBrpDz0u9GVg6JKSRwdJNImlEBQ9PYj1/GVAMoM+W7oQF6i747mxVtR2KP5fTRvqtXJdcIfJgIpjPB3ZavTHhPFmbJCZLu++20JY0jNUL83Bxy+cIv4kFw2RSEUtqr90Umu6V+vqpPshuX/Kk8MZkTu3TSIiRN7AApNgBLUeZKbS5/a4tPS1qMVU3ZTLyi0Ei4Gd5O3Uy/I8i1fBUSDcHoYoqfxa6Q/BAJFzYQSOJeW/2wEy2qn7ttDShxIalCCQApujQ+lotWtq51hxudHeG5ZDd7bnTqKvJ/OkTPWWFEypw4ruj6J0a8X59T7sd3RTxUfls43Yp6VS6JTIhPqF9Qr7tARWfZ8UeaOo648s8TEyaG6TT2hdx0miIhNId8WrXKzw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5136.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(316002)(44832011)(66946007)(66556008)(76116006)(64756008)(66446008)(66476007)(8936002)(8676002)(86362001)(38070700005)(54906003)(6916009)(122000001)(4326008)(91956017)(71200400001)(5660300002)(6512007)(9686003)(38100700002)(83380400001)(33716001)(6506007)(508600001)(6486002)(26005)(1076003)(186003)(2906002)(20210929001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LKkeqexOeEITxCWnfWnn0BrPCaEoOCmj2tt8CJfKDzb6LhGfDzDTs1sXYhQM?=
 =?us-ascii?Q?IdSDk1Es84Ghpo25jyShGHVoiAZUdB9xfM8VhTirmVRosDHm5WN+jbaeP2yR?=
 =?us-ascii?Q?eGizknmpylm14jKhEzZMIpwHl1Ga7UJGJu5cfFCpWUX/ff5AWgOswHp+jriM?=
 =?us-ascii?Q?PrNHJHdY6VdHWYX/8tl2ILrtCaE25vQ4fKOFurW0OeVi9JqhrhPLYmVxv1kb?=
 =?us-ascii?Q?wOWiUirs6mx2jy5Z6FGPKMRUkkXTAUhFd6jhcWPfBuRSA+KlhVXGgvmvTy0L?=
 =?us-ascii?Q?vpuC67tzFBZBgYUV+epoE3qkxBWvnFvvpE2hrkOcSIeTxcAglxilhiMtBymt?=
 =?us-ascii?Q?SYTngBJLjADMer69gzy2IdlTa3jkkAFJ1dG3dtRgoKoUYgV649ZQpt8ypFWI?=
 =?us-ascii?Q?sRqfPeQ7rIQxKCXnO3UgYuw1Tbug+RVKdmCHfhv6A6oLzdn+0RQB+22D/DV2?=
 =?us-ascii?Q?XasYPOSB+rHBpLllxBRPZjMYcLWk4EwWWgl4veKuQGSwU+rJ2W161PRp/WrB?=
 =?us-ascii?Q?ehgqvzZSh/DqZIyybomzMjmgOskgTQezUftwsle+0CdBP8Qqs2iOeA/Dcpnn?=
 =?us-ascii?Q?HyWVjEDgnIfh+94C+Nl6Z4trhI6h0uiNMmFfumwiAztcORfUyEBgu+pdhI3N?=
 =?us-ascii?Q?W81yJiKUUxHC8JahncUCR4rL6TjZHjD9Y9VIZdz5XknQDHOvDh5gR+1lsCVx?=
 =?us-ascii?Q?5iKofyU5TfXyJeEF2Khv3RMewTSAGmkCoWuGY+cJ9lDM05BB8B2yg0eoQGyh?=
 =?us-ascii?Q?XG/3ZcfMYzEaTfe77JaTNFusOHfPEnKbH24BCURlgBfsclYZcbFjtmIuJUvR?=
 =?us-ascii?Q?ZKu9pnItLNIhk8g4cC3FmphhbjzfP837CcvCkySzImLX6hS2r2KAV9jDbns7?=
 =?us-ascii?Q?Tnn+Vdd7wqxpR/ZYVDpC5BEAO/zDwwdpIhCZmd3vYvDL9xlpLajrbnU+9PFI?=
 =?us-ascii?Q?aY+JxzOfaWF0ewrhaIe4cyt3GOZ6D/+62X+IbGcywb2Yx6e/5xkiHKmrlmRS?=
 =?us-ascii?Q?eFTImqvCntljVJ5RIFg+4dPZ2jOzhLkhbntl80baeWsKpHS3N0kiXgqa+mSG?=
 =?us-ascii?Q?cRijk1QOSJd3vfsnczDorf7/GDn8U8QXrWUn1wSy1ih2STaHOnFJbfpbE63G?=
 =?us-ascii?Q?/a/lti92rntMD++/UlnQLHPqu4kVxWbxuUAVZksMx+u3zSohhueBpTWCEorP?=
 =?us-ascii?Q?dJ1vKpqe6k4WOzXBYV2B41gJmOFw/KDQEAqtvi4jYXVfo4Fj5Wiphka1ugdj?=
 =?us-ascii?Q?vDtm46v24R9b8hkiWaMqcEzVQ+CMRCB5HjN/soz1++YxyyPQ7V+kSYFAkoh+?=
 =?us-ascii?Q?JleuqbPlDobc263OKZHzEYIRK1H9D8VkcQftOy5aZCMfgj573k7v4FtLwel2?=
 =?us-ascii?Q?il5RdOFIXiQD4MxCpMMgG7dChP5dASJE5fP8SC5J0/BWF63B/kSJTbNKcWXU?=
 =?us-ascii?Q?/Wk6IhS3v5mMLFZNOE3UOZgy/rqc856XxAT8rvUxzZStF/QqUNFh9O98vOsT?=
 =?us-ascii?Q?hSVas0L2Ui1sHKHgyljqxavbLWxDMDbYUfDtAE96+0S1Oces4skCIKy2t39f?=
 =?us-ascii?Q?rwJ+dMjkgcOfZFeQOyKTU9ayJYbv171tG3Q39RxowpMZd4wmEwgP47vdIwzw?=
 =?us-ascii?Q?u9EE3p1/J5zDYruMNe/+8VE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E804250431505F479192FE9AE6195A2A@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96f23ce1-c27e-4a28-949c-08d9e4a9eef0
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 11:07:55.7892
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /WVHQfWx0HMOH4VvwrC9a8DMcvpRpBwneo6Qj0molgqhep0NO1ii5fdir3AGzqAeDbtys0pX2fzM99Asc+oKFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0401MB2354
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 29, 2022 at 03:09:12PM +0800, Shawn Guo wrote:
> With commit 15d16d6dadf6 ("kbuild: Add generic rule to apply
> fdtoverlay"), overlay target can be used to simplify the build of DTB
> overlays.  It also performs a cross check to ensure base DT and overlay
> actually match.
>=20
> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

>  arch/arm64/boot/dts/freescale/Makefile | 29 +++++++++++++-------------
>  1 file changed, 14 insertions(+), 15 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts=
/freescale/Makefile
> index 6d8f0a532587..c521ac2b00ca 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -1,14 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> =20
> -# required for overlay support
> -DTC_FLAGS_fsl-ls1028a-qds :=3D -@
> -DTC_FLAGS_fsl-ls1028a-qds-13bb :=3D -@
> -DTC_FLAGS_fsl-ls1028a-qds-65bb :=3D -@
> -DTC_FLAGS_fsl-ls1028a-qds-7777 :=3D -@
> -DTC_FLAGS_fsl-ls1028a-qds-85bb :=3D -@
> -DTC_FLAGS_fsl-ls1028a-qds-899b :=3D -@
> -DTC_FLAGS_fsl-ls1028a-qds-9999 :=3D -@
> -
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1012a-frdm.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1012a-frwy.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1012a-oxalis.dtb
> @@ -21,12 +12,6 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-kontron=
-sl28-var2.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-kontron-sl28-var3-ads2.dt=
b
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-kontron-sl28-var4.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-13bb.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-65bb.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-7777.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-85bb.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-899b.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-9999.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1043a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1043a-rdb.dtb
> @@ -49,6 +34,20 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-lx2160a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-lx2160a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-lx2162a-qds.dtb
> =20
> +fsl-ls1028a-qds-13bb-dtbs :=3D fsl-ls1028a-qds.dtb fsl-ls1028a-qds-13bb.=
dtbo
> +fsl-ls1028a-qds-65bb-dtbs :=3D fsl-ls1028a-qds.dtb fsl-ls1028a-qds-65bb.=
dtbo
> +fsl-ls1028a-qds-7777-dtbs :=3D fsl-ls1028a-qds.dtb fsl-ls1028a-qds-7777.=
dtbo
> +fsl-ls1028a-qds-85bb-dtbs :=3D fsl-ls1028a-qds.dtb fsl-ls1028a-qds-85bb.=
dtbo
> +fsl-ls1028a-qds-899b-dtbs :=3D fsl-ls1028a-qds.dtb fsl-ls1028a-qds-899b.=
dtbo
> +fsl-ls1028a-qds-9999-dtbs :=3D fsl-ls1028a-qds.dtb fsl-ls1028a-qds-9999.=
dtbo
> +
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-13bb.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-65bb.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-7777.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-85bb.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-899b.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) +=3D fsl-ls1028a-qds-9999.dtb
> +
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-beacon-kit.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-ddr4-evk.dtb
> --=20
> 2.17.1
>=
