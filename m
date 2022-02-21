Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CFFD4BD2F5
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 02:04:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237700AbiBUAtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 19:49:03 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233699AbiBUAtD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 19:49:03 -0500
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2043.outbound.protection.outlook.com [40.107.22.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDF3B4B40F
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 16:48:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fAqC3eOi7QWIMMWOAc1EHGP7QiLK/tP8ibTmqtoNGYXHe0iBUYr8dg9o23PRV7Tn1WvXnb6Lnz4zeZk8Jmgj42atw3e9MOfTWUGxYg7YYnwcV05puYnKFjQgoQvMVbSB+NLNl0GTYQJXCLHe5xnT+qud+HlLvCZvA1cYTMpQgcJC+6Kn4Mb3tQd/kldOD7Fcebt46VPxvpwjVsvMMaDsAawIvKfQnWCyFI3YB0h2DU4b9OLpSO3v5Ivdtlw3oLL0llDvqNm3IIiIMJr6piXx6jHTKkpyIN++bF94M8SUmjOG1pk90QNRZiRv5gagV5u4mbRGU7mLKYky9AZqRU630w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPvdIkpP9v27eiE78mcKwqvA4rLzk8wgvH9iqmAXyDE=;
 b=l3zChACK+ER+esgo2HPki7XjRoENzGwG5RF1PAMXGKev7MJlF84Il8lYMBTPQo2tb0ikBWyA6oN2NuLghG1+TmTZDvrVHu9mTkqtXTdrFa/2D9Lk/tyhw+xvV3ZJTjEcP4W1sXiPDpLm1JkeWn6kjWXdT8Icjc2e6mOCzDzF6zVYF8J++R+BjiTECCjuld5HBMrttrKAHfGWG66xgxbmrn8qk5oOAuMh9Wj057va9hD9YJCdPhS5nMIahuMUhmftXc3LlcR3cnN9FrU1Frh3jSv2Bi/p6QvZC6j6+vHAI9pKmv8Po62PVHl6hlYtiH4PQt6O1ph7PEYI6VHDf3jPUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OPvdIkpP9v27eiE78mcKwqvA4rLzk8wgvH9iqmAXyDE=;
 b=Psisge6IqPGE+KslUVNBhq1S1iTHPu+zN2yZoXgGrIsRtwHbQHEWcgEdaVFCbGlyRWFwx+SZhfw+P3ZvQ0xKQDSnoqzVG6VpFKEnFDx4G1Xod3rBO57hAOseL+XQexWx7M+vWzUKoS7iANdBpx+MoBZ4Ud8ae80wKEvaHwDUaoU=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AM0PR04MB5041.eurprd04.prod.outlook.com (2603:10a6:208:bf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.26; Mon, 21 Feb
 2022 00:48:37 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::552c:ed46:26dc:77cc]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::552c:ed46:26dc:77cc%4]) with mapi id 15.20.4995.018; Mon, 21 Feb 2022
 00:48:37 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Marek Vasut <marex@denx.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     Fabio Estevam <festevam@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: arm: Add Data Modul i.MX8M Mini eDM SBC
Thread-Topic: [PATCH 1/2] dt-bindings: arm: Add Data Modul i.MX8M Mini eDM SBC
Thread-Index: AQHYJrh/mLeJ1KvzJU2BYsbYpH7upKydK/Rg
Date:   Mon, 21 Feb 2022 00:48:37 +0000
Message-ID: <DU0PR04MB9417050A9CA20ABF1D1112C6883A9@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20220221001738.148257-1-marex@denx.de>
In-Reply-To: <20220221001738.148257-1-marex@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac925ef6-4ae9-40e6-d073-08d9f4d3e59d
x-ms-traffictypediagnostic: AM0PR04MB5041:EE_
x-microsoft-antispam-prvs: <AM0PR04MB50417E42EF71AD905BABEF71883A9@AM0PR04MB5041.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZIDkox1vRW2a+eQgy7poFpJXJs9k8JSOAOXJ1djdWdFKMDQAlM7EJey7qIb7S3oCqeUhNO4w0ky5S73ur//cpadYXW088B6+LFZXAlJZrNurun4hmy5n72Ea/Dm+xMmq6YtJtVQfLAZPEvRDa/dAu6BNFTdjwX+/5q3DO9VFclqIHNv1KogCE2Y+4n1T7r7XGJ0aAJdFxAw6ZEL20V4CItVmQE7HtikoZ83fVoDx2mGSJBFsvvH4qHPhT6LH46+pLEITcg+Lc/D0YigD0EJFdOvIYQ0MBafMQzf7IHqLFDWY3p4b+RJy1PTWqqkOygcbpbJgoruRABahEZuU9kP+Dq0eXFJSM4kkX0J3okRNA3UpYaBaKuxjkzM9K+V9/jN8ntfDWSreP8bjZ3GHPaudk9IQaakyLCgfG3XlK029YnVkxpNZxpkplfGkgW16IpnmzUt9/uZe/+XCf891C2xi0JoVwfdfgEkCbT6Psyal9HHlxwDrRxIzb9v8qnS4LwLi66YG7yjzNB9vqzPYahpoVyCmJJ6BKEZj1g2TR6sIhGYCxRmzqW3Mj2yU1IbhIo9JJoPaKnQoEQx78A+QT9Sx4mhVczVIFSthgEKxrLnpWsYNba80UosPISZNKOCQWSjR1/hfjitgkXYqFd8vmTZq0+soKnbrBimrbno3ifNCNVox3zv/jwuyxI54Cg42DpGYdfKpgJSu6iG4snh+A0T/Tw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(26005)(7696005)(186003)(6506007)(9686003)(71200400001)(44832011)(8936002)(2906002)(5660300002)(52536014)(55016003)(66476007)(66556008)(54906003)(110136005)(508600001)(316002)(66446008)(66946007)(64756008)(4326008)(8676002)(76116006)(38070700005)(33656002)(38100700002)(86362001)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xrXQo0rym/35CYUZ5BYg6sgs+cIyv9xBW7YFJuCzM4tOHofJwhi8VnCmb+hO?=
 =?us-ascii?Q?8WgzwjpjBJ9jzmKLVAU4eAzQFCVshYefArMrWQkQIWnvaEjzKDgrnXNC0Lx6?=
 =?us-ascii?Q?2uhSlP69XCWR+K8LWmf67dws1ioRoERX2cnVEO2VolDR9cci6OABAN3A23K5?=
 =?us-ascii?Q?5ZYZp7iLCuAfhF6IYEBrCeXlEy5WXuX7qKHKpDiOemM3h0Hhr+JU7O0QVPyF?=
 =?us-ascii?Q?ZX4UHwJu1BJd6/Vze0xkjht8366Jyb8MUN77Z6GbjF43uyChhVPWM9Puoch3?=
 =?us-ascii?Q?6N5IjzoJ6k5P+CD57pIaSCwU00O1wHpd++b5jI5mfEKzIds4yDaYq6olqCjG?=
 =?us-ascii?Q?V84E1AeJKdcvpNMUbCwXdVF9qNfG+QXsGIBpdQ3Ek+nIK+ce4b9BAXRAK6uX?=
 =?us-ascii?Q?tiqWSFfg2+cwH4Yuupz/A02ZLyf5Yng8QnfGO2YtZ0mf5m6MKWI6psF85kRu?=
 =?us-ascii?Q?iK2FJz0vXkK08haLu0aEaDg2Yxzs8JXE9OQRF9FNVhz8URSqodTkKoNVx/Mz?=
 =?us-ascii?Q?ITFlc/OHzJ0MLr4s1mHdd4VjRNoh0Dm9jsjld94A1TjnwP0xeIH+RDRHwROf?=
 =?us-ascii?Q?FijXgtjq+hMizmkBtZWKiARIwsywvDjtD1zpMfcdvg6Sd1cG/F7jO9h3U2sb?=
 =?us-ascii?Q?vUX5BXIZj840y/sfHiUhslrGAHN9avaKecygSeYXYCcP0iSSZuXP/SbnHVRZ?=
 =?us-ascii?Q?1sziw8jBrLkE0IgxWtPegOZDYhZrnBgNO72HHG+0z8P25PaMwck5rL/NH7X0?=
 =?us-ascii?Q?TVYrd4C2Nypjk93jE0dpg5l4Wt6VVPN0cS+gWVZ/BXhbLLpnSppy+/O3dU98?=
 =?us-ascii?Q?YKWhgyDthY4VxX2NKgInawRnTKpD4N/bWQ3Tmkh+RdKlRPjNn7cy2RRklPcx?=
 =?us-ascii?Q?e54Td3RZFgs82RD/wuuq+NGKbhI/Iq5QVKkll82aF0ednUbr6hbzrkV5QNFT?=
 =?us-ascii?Q?aO1YxsBFBB31CQ5gUooWp6tvjfoCWFtot4Ji+fDuBA4k7D1oK+e+M3tVmPFf?=
 =?us-ascii?Q?BTtE91gjCO42bt27DVDkWgcmmZ39gysPnmA1kKo0fDqzdjl1sGenKNPGYNLT?=
 =?us-ascii?Q?TJ20dH7LVGHnMxksFVb5BDvoaPJ70MSQ3T4mPKdNiaK5tAxfZZ2l+Yj2VfqY?=
 =?us-ascii?Q?KeS4mU10euEewuhFL4ia9ZU6CEji+iDNiwdZP1Sa5aw/jKXcX/pB8MEFh+ga?=
 =?us-ascii?Q?qje5eDMxRHIj58H+LOBB8es/o2KhjHselEU6rfp0IeuTpNWOkA4yy4tB9nNC?=
 =?us-ascii?Q?AEcR/BAKhG2O97ZB7ifXslLowzFb/BFMba97p5bcDhde4ds2tsfL+NFv9kCQ?=
 =?us-ascii?Q?pQ+wHXyEnhkKm+xshu2R0opzXbxLjoNy4+TL6GIUw7qEoTgaIwJ60q1VQJ1z?=
 =?us-ascii?Q?dgKQe6C0g1JhyKTze0kyuLAuXmyjyTE69PFhv25CGtRdKvJVU6snlT1SVu0z?=
 =?us-ascii?Q?5C3fKvjOvPzUs+o3oLzgMylvdJdZ4UmFEZv7AtLffPahvPnu5mOLlvVf13lE?=
 =?us-ascii?Q?AhBOrgPOnPDPRwRrvNRHKjs50l4E/C1OwrMWL3Y6LCYcgNzRDAKx5nLRHhiJ?=
 =?us-ascii?Q?D24La7V6OrroCx8MAAAmq8Nr47cEHoMnn2Idb9yjoZ2DACGM8GobghKDU9YG?=
 =?us-ascii?Q?wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac925ef6-4ae9-40e6-d073-08d9f4d3e59d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2022 00:48:37.6144
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W+sz593RE3nrSNjTxeFFN3TaqcKtl50/XAGkgSNZLN84ldhPQjXEcUeniNIoWnurAT3mzFpyaDUkFhgPKeRNwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5041
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH 1/2] dt-bindings: arm: Add Data Modul i.MX8M Mini eDM
> SBC
>=20
> Add DT compatible string for Data Modul i.MX8M Mini eDM SBC board into
> YAML DT binding document. This system is an evaluation board for various
> custom display units.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 23e678232451e..bb53b3e469dd1 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -762,6 +762,7 @@ properties:
>            - enum:
>                - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon
> Development Kit
>                - boundary,imx8mm-nitrogen8mm  # i.MX8MM Nitrogen
> Board
> +              - dmo,imx8mm-data-modul-edm-sbc # i.MX8MM eDM SBC
>                - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on
> Avari Base
>                - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK
> Board
>                - fsl,imx8mm-evk            # i.MX8MM EVK Board
> --
> 2.34.1

