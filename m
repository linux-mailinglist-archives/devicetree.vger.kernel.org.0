Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 661CD6A14AC
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 02:49:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbjBXBq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 20:46:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjBXBq2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 20:46:28 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2049.outbound.protection.outlook.com [40.107.20.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 055EE5AB64
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 17:46:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b1r5WgLDi4AuwTiuCOle5y60P7Wcf/QdzFg/uP0REtaIh0JrAOO9eiTFt20rz4yuCCpIIsOgRVHrftY/ZXXoQN2LmRRbwigA/XYkInB/4c+GLIDDGSWblYKWraDB/N480ChRbobntqgz+Z9O6VkxwDzQEtS13z3z0+ItAFB9rh5Wz5iADKGyCSc0Ks8t2jaUngqtNoEET4wy6LDVUwIhA8zjlJ/Svr6VTBSfCa+nCT7euvS3ezW6nigpTCPedCKoIPMSP491czV+cjCa+GP0DhSHnbq63dSq+gUZwQI+Fsjyk+dZfwWjOUi3NBlt/aixUz0/+3zB6yV67UTEKnEiWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5oNJHZMl9xOWX/eXeGSsvbpZq5YnSqkqXLuKZlP0B9M=;
 b=K3Q9X6TV2yrqXW/8boayfM8Si97GSbh5KUCFby8OrDR1D/SKiBT/mcArBPI3zYWoI+RUf5PEt16iTCvycdz0u/ONBoAqpL6hj/dfZEtWp6rijil3lZu4+7CzZoL6UX2Ne6+a0mY6ZPgsiYE74eWKA/+3n7l4gs3jqsvN+CCcuDaafYGhisQNyy0KyDO5Nw47Vp7bcPN2iqeKqGt54X2SOoh/dlt2/5BofQXNx18q7LILPH7Cj2Fo6ae+5OVHNfop+F4XBKAJt6d4VD4OiEluuQQYAUN7MkzD4ZZZndz6Nd7DeWMFkHbJ9S4EPlME+iih93qxZQjhA7oORcdJ2WrpLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5oNJHZMl9xOWX/eXeGSsvbpZq5YnSqkqXLuKZlP0B9M=;
 b=djBq+xcpF3TqcQiV50NKElTIoLfXI+gxTxxABlPT9Pxd755xdYpATEmRnAHXNjOD5fAXjKipq9rP/BLFvNg3XWELCwJ1GpfaWQ8xV+l5GjF21uP94pkgpBs1u5tZvO+YwSCaAtp30/wm4EmHFmjX98dAZZmwC1UAZsT3r1gQWo4=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AM7PR04MB6966.eurprd04.prod.outlook.com (2603:10a6:20b:109::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.24; Fri, 24 Feb
 2023 01:46:24 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::f55a:cf12:da08:6d2a]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::f55a:cf12:da08:6d2a%3]) with mapi id 15.20.6134.021; Fri, 24 Feb 2023
 01:46:24 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Clark Wang <xiaoning.wang@nxp.com>,
        "David S . Miller" <davem@davemloft.net>
CC:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/1] arm64: dts: imx93: Fix eqos properties
Thread-Topic: [PATCH 1/1] arm64: dts: imx93: Fix eqos properties
Thread-Index: AQHZR0zjGCRJEtUoh0uT91dyPUU1O67dVN0Q
Date:   Fri, 24 Feb 2023 01:46:24 +0000
Message-ID: <DU0PR04MB9417775AF8471F3D6E8D99FD88A89@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20230223060543.2862661-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20230223060543.2862661-1-alexander.stein@ew.tq-group.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR04MB9417:EE_|AM7PR04MB6966:EE_
x-ms-office365-filtering-correlation-id: e226db0c-4434-4cbf-113b-08db1608efc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /xumzAh2Ci9sceMwFxoWLRpZ28cmLvMkUGcwvyVX1ZPGXZtbgrDGP3fwIQx9muyS/BlZxadVxW8eAlcvwPriphPi92tCLUe8JQL6CSJDp3CYnSBm2N68jWUdnaYwRbw8sCgKrne2KLs9U9Zs4DqzhZBvAhOqHjRgUKIo3zX/edHDW9L+wNTNV5ylWTGsoDB1wYOQLeUUl9EB4922H47rBEWf+Mo2eiyk2Eci7JbvsSxF6Sc3DmBA+gmjNEJ2bciVwpEsT+4eTk6oLK0loJtbjSYqfCIBtQgu4+SAebWphOuJPgXx7QgVg66D8xoBwN2ZVNbY/4j8Tcg6JJMb7TpN5WRFmA2dw/YeyTOr2HCJGlLRASeKEslu9ZRAhd5plY2/3/mdWeN+CcbeTA8etElbyOILp/c7KDw0+ZvQ4Dlz5zSmrYIjEwoQ2F0L17FpRJ6IFdFEzrzywgIbaGCtvc5/WxBbwY/uu1XAizqw/BSAZrduAxKc/P4V8+jda64XVGR81YEQX+61LopLvhvL7MEuPdQrpT2Xp1PWM15fW7tf6EVLm6XetEXDHunsFZj7XppCJDe5jHWv7smDWhMdmRycrU8Uue4H8myQebs2qgoLOZtVDYriHH1K1rdDS/TaKYQPPy645VYbLHN8do87ttuAzsmSfe70UjYnyv84xeVEfGv6UhWSmzoXrlQLg2sTYo1XKANk4GetgCEq2xL+IIshug==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199018)(33656002)(2906002)(6506007)(38100700002)(38070700005)(110136005)(54906003)(55016003)(83380400001)(316002)(478600001)(122000001)(66446008)(8936002)(8676002)(76116006)(64756008)(66946007)(66556008)(66476007)(52536014)(4326008)(7696005)(5660300002)(9686003)(186003)(26005)(7416002)(71200400001)(41300700001)(44832011)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zatUUnC5DA5VYAap2dnzOtE1WOvBmA4uKbHFaAt6t03J+baJzn0GK+t1V+VX?=
 =?us-ascii?Q?ajhCIiEQR95Yqw73e4fJ/mxKa+Q3+BhEgANrjmHTUOmuvg3L3P4TqaDV99iR?=
 =?us-ascii?Q?m4cV8Yn0glt5crdTkQxbM1g3YieyNGS8mpNgwb12u5WoO9eACICMBH2HNybz?=
 =?us-ascii?Q?jZYNjKYeT7a+XBCnHUjtH4Z6qsva3Pl2If4symFlKIF6a4JIW2KuMcfs0o01?=
 =?us-ascii?Q?+toMwWYf4IhVo2x6aBUDZxRGWxC3Sp0NKgKmZT+h1Izpop4EdnHCbtudSN/b?=
 =?us-ascii?Q?bdMXG3tsE4NnA7gP1LWKVFUSxcqopHgLN2z371hz3DEuZEXoe3xEUsbb0lIo?=
 =?us-ascii?Q?GNXJ3qD51LNY8TPu4fsqPDhR2OZpn5MgzSFU0GF7dmtKPR4XsGEh3eIA8B3C?=
 =?us-ascii?Q?iJ1baKaxRPwX1jECju6/pcD2AxUQr+VVBbEnG+fh6hSJx7v/roCjlrpF/HZI?=
 =?us-ascii?Q?bCcA5qjI6/SMlKiYYRB5vaj9ZiXiFi9RGRHAhU81uTxyv5C/KhFhiuXnlbdq?=
 =?us-ascii?Q?K/RSBcTerdfUvfNnvGc6OmyCbkYPDWuG8yZT4KZIwiExNFNovTaMYN038Kfe?=
 =?us-ascii?Q?rcJITCw2YNgvPNQ600LeziUyasyQSAawJv0mHh/IW0HunPGfQBRS4AsAu+bC?=
 =?us-ascii?Q?BnwhbJbbJZIYPl8rK/OAC1PrKkPvhRhnKeuDxhGWbYDDZr+TbsW2jVSmQUjT?=
 =?us-ascii?Q?4KJZP6qFjzS//E2qUfTJDP/8LZ8uboQIYXvpY8Idtf4M3Qei9TclyZ/VRit6?=
 =?us-ascii?Q?gyz0FY8x3HiG7Mh1+SJKJ7h8NhYOtYcS5yHZl1Ga6taaFgeSHs52ZX7G79UA?=
 =?us-ascii?Q?fbiqeviRf/nZ+uWgyuLLqsrDRD077JKZ3iDlirmqVR5T99O5pMGC0r7RO52b?=
 =?us-ascii?Q?DKh4FVIRRZuVsrfxu8hksRCofCK0XtsG9OmHTPNoYzpdm8MFlqwk9SUCRSpu?=
 =?us-ascii?Q?0aWlZEdYB1J4JiaxRgwtT49M/qFIY7P+2HwxhJPieT4ReVrxMtiCBjnx2pt8?=
 =?us-ascii?Q?+XC/sbCpA3o9FxqYeJx3hYK3ugDNXdG3xZXVToEComVNyyFcYysPqzEei1iB?=
 =?us-ascii?Q?pBnNal5CWJSoH9KzHZF/qOdJLIymSvU9wZr2csBlPCpaDWB8lyUA5bWx5aLt?=
 =?us-ascii?Q?SFuJj6qMeZ94F/6hVAljN2GodRHzbGxXrVwG9ITagrC8hpYQXmWKbcpbSKdF?=
 =?us-ascii?Q?hNDdoMUjbggPtERc/tLew4QdX/uPlN+vFU7HnH1oHg4YxvcL61h/i7Qr/QpI?=
 =?us-ascii?Q?JJ7fLUWXkZpFmsih+eHp5Ku1nECW1YSUbrrfAhnfnWObNydJUs8Ib/Dc2koV?=
 =?us-ascii?Q?41cFGYp3s1QOwmfGLvRtLMB9easw/mdlgkvf1UVsRMnLnizSP0bMu5mA4CuR?=
 =?us-ascii?Q?slQ9X/MFk6ZpgDZvq6tQV4qklqLFJPKa8rsnLim4dyrdGi/j9cWRAARXg8eX?=
 =?us-ascii?Q?q4tECPirCBVobf6K7rH+yb1wN3j88mpE0nxm8TJIoIYUhWKgD5iEKhfHbLu5?=
 =?us-ascii?Q?/ddeahc3+K/fsume+KfpsrQTNndijYsu/vxBxPfELOLrkRsjC7jJw/iELyHQ?=
 =?us-ascii?Q?9mYIFXpiU1Xgvi82V3U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e226db0c-4434-4cbf-113b-08db1608efc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2023 01:46:24.0716
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rlDqzWozT6DHKI3tBR85rtT6fITz6GPnVdWPWmqyJ778mDme2QkMqRj8BnIMXdIVyxT7vIBlAEZXnaINZ1gLFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6966
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH 1/1] arm64: dts: imx93: Fix eqos properties
>=20
> 'macirq' is supposed to be listed first. Also only 'snps,clk-csr' is list=
ed in the
> bindings while 'clk_csr' is only supported for legacy reasons. See commit
> 83936ea8d8ad2 ("net: stmmac: add a parse for new property 'snps,clk-csr'"=
)
>=20
> Fixes: 1f4263ea6a4b ("arm64: dts: imx93: add eqos support")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
[Peng Fan]=20

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 4c70089d419f2..13ea4bfb97c68 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -666,9 +666,9 @@ usdhc2: mmc@42860000 {
>  			eqos: ethernet@428a0000 {
>  				compatible =3D "nxp,imx93-dwmac-eqos",
> "snps,dwmac-5.10a";
>  				reg =3D <0x428a0000 0x10000>;
> -				interrupts =3D <GIC_SPI 183
> IRQ_TYPE_LEVEL_HIGH>,
> -					     <GIC_SPI 184
> IRQ_TYPE_LEVEL_HIGH>;
> -				interrupt-names =3D "eth_wake_irq", "macirq";
> +				interrupts =3D <GIC_SPI 184
> IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 183
> IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names =3D "macirq", "eth_wake_irq";
>  				clocks =3D <&clk
> IMX93_CLK_ENET_QOS_GATE>,
>  					 <&clk
> IMX93_CLK_ENET_QOS_GATE>,
>  					 <&clk IMX93_CLK_ENET_TIMER2>,
> @@ -681,7 +681,7 @@ eqos: ethernet@428a0000 {
>  							 <&clk
> IMX93_CLK_SYS_PLL_PFD0_DIV2>;
>  				assigned-clock-rates =3D <100000000>,
> <250000000>;
>  				intf_mode =3D <&wakeupmix_gpr 0x28>;
> -				clk_csr =3D <0>;
> +				snps,clk-csr =3D <0>;
>  				status =3D "disabled";
>  			};
>=20
> --
> 2.34.1

