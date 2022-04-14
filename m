Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D0BB5008BA
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 10:49:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240491AbiDNIwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 04:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236287AbiDNIwO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 04:52:14 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2089.outbound.protection.outlook.com [40.107.22.89])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4289A3BF81
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 01:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BRCsfEbX0pUdOYA+PsJesWHw2D6haANHcyw+2r34eNc+a0FaLqEgsqCvt6POrwwBt427lIVzAiLA6gLcIhZJs5EQcROOSz472CJyc2NW58wQBVKAuxhx/VihyrVINss5LMrUc5jWlPgDKIi3gusbJM6asyICi37wUHmNhuMXa9y/eg0V2GQA5Z+6wn28iw8sCQ/ELSVyla7GBZ3egmGv3XOnGhcPdJNLVuEtEiIWgMTCM+yWfLFD/4MJJo0YRSYuFJWIwoyNIE5OZGpR0eEdnYnUo4YSnlqZPGIRsGJI6fkTUVFIfup41pFDocCcVi8OVV/0p7p+/G9/Yind3sH8/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=As/SslT5PpKnS3/zlI799UeXtOEcy3+UwZFw2yhiitc=;
 b=LBFON8yJvdbzNwye+o5ylmUkicliIi1RP1Lkq9HpPgpkIka9RvaMBI3cfLTkNFwiPBcdV4hAIHUZgrRSKc7YhElviEwylmDr7eytdc7nOHo1mUPnnybA6UHlx+AWiEuvZfxc7R0VakLI6IvjpGqawuJ7uMAYC0QFvN0dXUx6n+8G7Jli6nVpkRSZgqTGzPVw1zwud53phtlgiH/TylkeAXdszoTYGU65q2pJaGVXQScUE3jvGtInHv5V4xQ0ahfkA7g0klMSIXU7y0EaZ6/6bSuzJTFSCYofNGaFiaxlsasyc4EFaOwwiY0v2ylf20TX6QWWWUOYHENgDJcbl0N0EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=As/SslT5PpKnS3/zlI799UeXtOEcy3+UwZFw2yhiitc=;
 b=gsxjhRHtdW4hMcBy8MkcahhxCUdasxFkiAxc7cxn/h00miW8OAMrerhTWWKNsbcHNM2SBjuX0zgZpJjbZPSle2PbDg2SSyIKQWXYrsN/hZmiegkQHZmmkNVQmLRL1s/yKXVlzwfGePPUWL0mpVXt3S5QCJSu2WCeAocAtRsj4TE=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AM0PR04MB6627.eurprd04.prod.outlook.com (2603:10a6:208:174::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 08:49:47 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::389f:e6eb:a7a2:61b6]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::389f:e6eb:a7a2:61b6%8]) with mapi id 15.20.5144.029; Thu, 14 Apr 2022
 08:49:47 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Marek Vasut <marex@denx.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH v3 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
 based Menlo board
Thread-Topic: [PATCH v3 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
 based Menlo board
Thread-Index: AQHYT7Ax6jXFufk8fUKS9RxK4nGzmazvGR0Q
Date:   Thu, 14 Apr 2022 08:49:47 +0000
Message-ID: <DU0PR04MB9417E4FEA12E6C46A561024888EF9@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20220414033132.548071-1-marex@denx.de>
In-Reply-To: <20220414033132.548071-1-marex@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abfd8b34-f636-4058-2acd-08da1df3badc
x-ms-traffictypediagnostic: AM0PR04MB6627:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB66275E2086D5042BF48D96CF88EF9@AM0PR04MB6627.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 64+xrQcMPnr6a5iHEILIEa8ZTpOViwLpDD+Ze/Cd6Q+nv6EXLduhc8C1W4CIXEVpd4BuFWRbXeILienrFI2UhKP76aVdw6SUEQfKKAkmIC3QaB1VPvZB+9gZUQPQlzsHxFmkfJBoNw6I+Zy3YNgfF/J7p2RJLwK56DMi4JS3TCbWP+yId4/KHUEykpbtq6GbqhXTQ0zAu4XrIlZBJkNflpcwSle9YD1xiNKvfLjuG5ynBugJWb4jS24ny/5PdPv30Q0SJt+5SvNCIsoJAgTEh7KAAOuX1g9wDlTNMraCfg1Dvd2enUmkk118zZms/Erj+KKHflJ6fhgyDqmbtd7oOIqsB6p99Z0UeuO+sGmZBdoa9VvUSIgkip8zT8/i8673TU25WUTcfQ/OF3kOVmPJbRa+aIOZuNyt47uZ7SzkYtGA2C/MTTONo/aq4tVixo8EHJuD43iPF9iVQkxEyAuT5FLjIenE3jry3YspXX3fgogx90Zd6BFGYflUOzWh0xrauOWtpOQwQgAwL3mY+oo8aZfTNCh7ZQEvEs4ipXIgs0VpzqJrWelCpYfLxzuYvohZZthISSqLhXSWqeTuPWRj6UqBqK5bDarbAr6VWuSUifCdZyKLXlAnlEhvPrHYG8dmsixNvSpIE7sRbAZExtnf/wxZIJJabAEfysMGPy69sNtPxYDgzJL/u9OCKr3myz5MI9SaXUxnlkUhCCDnZWZopA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(4326008)(8676002)(52536014)(26005)(186003)(8936002)(66446008)(66476007)(76116006)(66556008)(66946007)(64756008)(71200400001)(38100700002)(44832011)(9686003)(508600001)(5660300002)(122000001)(7696005)(55016003)(6506007)(110136005)(54906003)(2906002)(33656002)(316002)(38070700005)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HKbiSy/Hmc5sEhWgB6DZ4PLipvyYIw+CGw9Zi1BfXs7q7f1B9IRj/e5qIoJp?=
 =?us-ascii?Q?zWYntWpbacYMTy0zpCPIfUE5ZYbraQP+F3+wcaXKe8X/2AusjfPFmQv3WsdU?=
 =?us-ascii?Q?+cygkJKRPffa9sHmLx+jv9BKaSC6LxF8N4aE1V2jMflMmDK7L6m2qlqcKIYB?=
 =?us-ascii?Q?YBmAuO7ufGsy56KTshJ7DAEIKyUP/MhTiPldelzGHH/1HQhR+VmASYj2aSlG?=
 =?us-ascii?Q?upzodrOxDPXlPgUlfFYbscEgAxLM7qqceJNM+JAW6sf3Xefev52Ktju2xHIP?=
 =?us-ascii?Q?uvvkcqw/Kpi08LpvDJlspU9zU70R4APycyy4yeu1QtI4Sr+YrQUkxCLmmIY6?=
 =?us-ascii?Q?1Eo+eaI9jgmCrGwzkstoUWrmlpxzXItPp9kq4qS0DO5L444NO4Lt4AAY24dk?=
 =?us-ascii?Q?WdlTj4Vet5CEw0lc0r7Pw0krhglQwr0g3d7hqMq2tMwwBjAwU4R4tFad407n?=
 =?us-ascii?Q?ewchEf9SxLVTtmZBj3GySQexGx4BriHC4H/8VLSyCNkySE3yRnLXRERc+cOb?=
 =?us-ascii?Q?STTr/EbvAlODie0q0XGL7K3A45Vo6QXNGv9lYucYTkzC1klx1C7Vzcw+oFwh?=
 =?us-ascii?Q?ApJlV7D4OfNiLLtfuLbr1Ty9/p5YB8/P0/cna2G0kNWVDQyY3glBNLzVmOFq?=
 =?us-ascii?Q?flS1ysIn6TO6guLXHSFk56UGr3XpwEFjTFylnoUKF+PWVCuWn8iHoMq+lygh?=
 =?us-ascii?Q?bAEoZjga7XP1tpd4kn9I/JP6XevQeS8E5dgoG7B8POWEIN6FfWzUI0705q6O?=
 =?us-ascii?Q?FnlL5q9aA5cX0X6G2PObl2FlSE06hVynLHd49AettBW1ScwhHwB/dhVpKfbs?=
 =?us-ascii?Q?iIjL9KZVJ522bLIib8Mq3n0qVYsu7s/6f1O4T6Bezuzx1uURshyWh16VIx+J?=
 =?us-ascii?Q?nULdOjunmoIO6wCcmxIlQJYVkXLKiGag87sHPBiIqZNjsOfaSE0xVUd2duKx?=
 =?us-ascii?Q?x1qxmSq97VQo1zaS+c1dkWyUq+iht4KO7nW78YHvJs1kuOyPbEZ1mMbRgIcr?=
 =?us-ascii?Q?6ijqnOAJspltEMVbJuXgRUqmHANflLq6EQTmQAXYJtAKG4hBtqq0nFsfryxg?=
 =?us-ascii?Q?pAIvbZXqRA0Tb8XHaRwQVyQnjoirOMhVutWJT2MrBvC97fivq869bEy/pjFb?=
 =?us-ascii?Q?px4FF1F12ureMeBjZmH3Gk27JSFD+jAaQ5xBUfMoAGLWgiCAhwJUTBk0PDzh?=
 =?us-ascii?Q?fWn89qqEMpwIGWJk5hlDXAGybzV9DNwthDUQiPMzFiENcfsCxDxViQzG2wsD?=
 =?us-ascii?Q?TtruPi0npJerF31xduX2cuq0Y+ANGD3IBFTq7VwJ9tzAosPpnM0hWa2JegQh?=
 =?us-ascii?Q?rugrS+Vm+U9HJOYFSnIJ/DWh7u6QAQHbx/ADaKDT6eo/eN1U0Wc5wdudg9/q?=
 =?us-ascii?Q?b6/5cUGq1xSwlIfvGlnD0BYPa4Il3Q0SVsdZ0G3pG91rhyhrblH1W6VU1imN?=
 =?us-ascii?Q?AfBcHPhdfoFYpiPQs8klBrIef4/nUKZfXVfoBoWrO4XX1hbQNA7tIrqE1fOW?=
 =?us-ascii?Q?6UY7vzEEk9c10uOb13g6ry6zKrbbqN9oVe+YP0NlDTEygGBHTvHyUPsstLiD?=
 =?us-ascii?Q?okiG7gQu/SRkSapd4/8AD424f+ZK0rptRI/xjwnW8azI95KKBCK0MdezTNC0?=
 =?us-ascii?Q?jXCfUkenyk8E5Q2ckVbZqwfpN59pVgW6o4y3I1v2l6j2irTGC7PMx4e275zu?=
 =?us-ascii?Q?vhnAmo4ER12h00Qg4QCj+Xf7JWTw78RkbWUeDADtFkiYWWDA00KLBaUAsxYh?=
 =?us-ascii?Q?bTdEjAh9Uw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abfd8b34-f636-4058-2acd-08da1df3badc
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 08:49:47.4346
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l5NICqYR2ovw70dKhxccwEgaMFMM6efWAIIHZ8JcURMSx/cPWjuhQGzydZdUAQEaGGuqbV4blNyZ9ckAxUyF0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6627
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v3 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
> based Menlo board
>=20
> Add DT compatible string for board based on the Toradex Verdin iMX8M Mini
> SoM, the MX8Menlo. The board is a compatible replacement for
> i.MX53 M53Menlo and features USB, multiple UARTs, ethernet, LEDs, SD and
> eMMC.
>=20
> Reviewed-by: Fabio Estevam <festevam@denx.de>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Acked-by: Peng Fan <peng.fan@nxp.com>

> ---
> V2: - Expand comment with Verdin SoM note
> V3: - Add RB by Fabio
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> b/Documentation/devicetree/bindings/arm/fsl.yaml
> index b6cc341153624..4f5837071062d 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -819,6 +819,7 @@ properties:
>                - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
>                - gw,imx8mm-gw7903          # i.MX8MM Gateworks Board
>                - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) S=
OM
> +              - menlo,mx8menlo            # i.MX8MM Menlo board with Ver=
din SoM
>                - toradex,verdin-imx8mm     # Verdin iMX8M Mini Modules
>                - toradex,verdin-imx8mm-nonwifi  # Verdin iMX8M Mini Modul=
es
> without Wi-Fi / BT
>                - toradex,verdin-imx8mm-wifi  # Verdin iMX8M Mini Wi-Fi / =
BT Modules
> --
> 2.35.1

