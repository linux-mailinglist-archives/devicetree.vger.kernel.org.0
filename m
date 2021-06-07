Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1A3739D76A
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbhFGIcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:32:14 -0400
Received: from mail-eopbgr150088.outbound.protection.outlook.com ([40.107.15.88]:58881
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230169AbhFGIcO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:32:14 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJmEosAZFXSkGHP6DRD0pFBDJqmxYmqt4ffLokpF8MIHls6Vzd8C7g4FEg2YS+e/ZF9yIjrhzf8s1f3lOFGD+8mLKKzl4NgKE/E5+RTsPnOTo7K5h/iIKFHqmUe15QG7OP5nA+qwEGTYMZ1eLZ+eHqHr4/R99yYOq3jevVw+gTQwt8JxPg2tY6KIc8zf3RbqIPWjtDLXbdXuIKhm+VIJhBWOsdRm6BdmClKjtHTvAtS9XwlBFNsqY4UWC7uCbXkqjw+SUiq3xaRxlNbghnHGDA7Y9C1UItZ3QJ09d0i8DHbAW8s73fZfq+WU+yTVpPqhfwA74w0vOYqR3Yy6vgUXXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RgPqHFzNQ5SnFk89Ipkyth8WAR0Q2P7ZeIBI+P2Rzec=;
 b=Qm4WGgGMmvRlGooXNqtO6HGL4l7yNQzL1Ezp8trQuaw9cNbnthxIpDgxj6eXxbQ3nOnfmMgSFSmI1Xi7jr0KVFxpGWCAHyAoJK3iyHHgRBq4oRZtVRmcZIaptt/40I7T1pJYsyDm9Zy7tGJM7IFk/rf0BdgEHIEpU03h8qmWBGiFOQ0qDwZdQ+osMsrOlIq9Z2580jJp0aY3QJQQWU3he2nnt6yXUrfMvl1Ys6OE3FENFG3z0tTyw01muWSK06oCNwFSQuEvnehcsWHD1S6RAWEHSRTF2eDawAn4dvIInt4wGg6BbKteFr/MJ/4RdsU3IhsB6wvgOSvrEd1wMB3ykw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RgPqHFzNQ5SnFk89Ipkyth8WAR0Q2P7ZeIBI+P2Rzec=;
 b=dyhrSkfKT6Lax9OXSmx4Gz1L7MwDxorKYJOHgYDU1raGuJJ9px8JAj2t/Be0bjZyBPLfmOzlYxG0B6eMyEcKoEvSLwmNTQfShP9E99S/0aRaedt1Cw77GNKPJTT3ecDS3yyI5RTuAwA2R8aPOAsH8UrqZS46J1Qx9w2yfOAXj4s=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR04MB3125.eurprd04.prod.outlook.com (2603:10a6:6:11::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Mon, 7 Jun
 2021 08:30:21 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:30:21 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 08/11] dt-bindings: arm: fsl: Add binding for imx8ulp evk
Date:   Mon,  7 Jun 2021 16:39:18 +0800
Message-Id: <20210607083921.2668568-9-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210607083921.2668568-1-ping.bai@nxp.com>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) To
 DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:30:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 00019e4b-a891-4e93-2c12-08d9298e7d59
X-MS-TrafficTypeDiagnostic: DB6PR04MB3125:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR04MB3125D0A346E9F5D380BC240B87389@DB6PR04MB3125.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LRVwWdpJWrE/XK6ivVVvvAYvqixDfac0/CaqYMOl96skZUbEeySs68YY6vCxNWimtrl1Nu+m3qAJuMkVzGyDpf9yHGO3UKpAPeeyp8fRNfB3VKckEvTPE4b3utUoF+AaSX8lKfHsAR3qyttDWxrqbDW4UDaAf2A1WhqdhpoSqkTfJf7I6lB9XbooaZCWRZNBqq+WcQ7Xlx3wpQClM6JNcbvjtWMWUyNQhRkCvOAQk/TCw6SkWxQo6F1Cx+pevZlrF0yPZtSPdfXMmtH6ZS+XEXj2ytI+4DIafkfiJHUd4pgm2EHEslMS/2gbBAe+Y2CFjeGHgJu44w7KKe12de1uznLYJlyMbc1Byg6hZmvEUorazVSsSmZ9xC1tcM02L3udMnVnVLMLLjYYJBtBtCINcqu6CZElEMnelZx8zrAG88rrl3dfSsLaJdfSG7am80KBTENX13qu9mIF1D1PMzR9jrZFo2E54KTvJWAL9gbvbOk5sHd22fiDmtScDuvFpZe76URdV9W6ZtamTTbajEv4Rjm53+ZtgsCUGQMuL6jUqu+HG7lq0y+1hY7P/2//iWqHC0+ka6pbZtfQgQ1MVC0htOHC/amVLHCVOk8zFPMkA/o345N9L2agHg3D9P6Qvg1FkqRfHhZaipNOW9GBzF0ngE8BVBUGFjO+aodf50j8I4k04GIAcF2l9jltEJ2EwMlnGBeq4yFxvMrwzLJXx1wE2S18uI8u90374ZZD7qUSlYs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(8676002)(1076003)(6512007)(186003)(26005)(36756003)(86362001)(16526019)(478600001)(38350700002)(956004)(2616005)(66946007)(8936002)(38100700002)(66556008)(66476007)(6486002)(316002)(6636002)(4326008)(5660300002)(52116002)(83380400001)(6506007)(2906002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?GWt68TdD26rUAiWBMV9dM3ODN8+7JP1JZXatoATl3WdexL4a8F8uaEv3K95E?=
 =?us-ascii?Q?PvXEvxFjMulzvDPBoMxX/9uqAcX6ZNYtJ61CHvA09Lc/DOewQm+8vEtYC3hs?=
 =?us-ascii?Q?78lbD/zEaPj+WOJJHkNM+C0o/6UvfN7JLdGfGzJlih7XV6ecGcQ1I7uPB2jM?=
 =?us-ascii?Q?Nr/O3BRoQ1Mj6wKjUyJ+bQ+Q3PFOc21Ka4G67UFGGgg0kepP9lAbAbkiLw+1?=
 =?us-ascii?Q?AbtK7mYBAzNH8+2TjUz9D5bd/jf3lMMqKaLQ0qebxb/G0a6S6nqnATaYX22A?=
 =?us-ascii?Q?4Ek0ZAViKucDe4L+0rNNziBngyD3irBAb5ySLEfJc0W8ZmsEAlMv+as4mg9f?=
 =?us-ascii?Q?WDcjRYC1ziOW/lZWegw04MBCRIqeg+6n/bQ8gO2KZxFS5BMkCSpd45ec8x1+?=
 =?us-ascii?Q?Ztzx+NeSjl1JAeNq/tBNpkgUrUfd8ab5S5LB0P9omBIzaRgRZrgtk7cmvAKz?=
 =?us-ascii?Q?YmuIxTznpsgCYP3jQWoscQW0Qn9z7VCzaQIY75N4ZgJOUDrz+6T4xQti3PMr?=
 =?us-ascii?Q?frNPIHUjd3L67bEEmMn+JQibAivCj+Taytiy8ajIeOBcQR9vHYexvJ4uPmnr?=
 =?us-ascii?Q?sW5fx5dMIm1PU2yHwwzxgfF+UN21MiKOMe4G+KxboGNmSmUjl1XYvGM5pv8D?=
 =?us-ascii?Q?PY8jswrGzdQd1gAa3x7iRDtlcqKeR/Zy1qmFSEgwjeZUi6UDRzyVb1pxFh6e?=
 =?us-ascii?Q?/tBRf4TlEZqZCRHrxULXKwbYD6918KlvmbS27Js+Ot1dDRK/QtM5xqx/pHmR?=
 =?us-ascii?Q?cjh1bulg6SHvJc4G4aL1+Jj4k21dxuuWc07Fj24XOLQG6a2B4+kHQrooh1Zu?=
 =?us-ascii?Q?uzc0YZj2t4RYHJKqnTnugHqLJzEyMPydErmpfdbAQrFtMEin7AuEd22gwy9L?=
 =?us-ascii?Q?DEpD4nEtmQw1UkbBBtP+Hz9VAFSL92/ZJdCYffK1/wI0qjflHk3zGs0iSwrg?=
 =?us-ascii?Q?rz2nZpP4lCj0gpY8jVemU9PnKtXm1d2xPv2xKiPpHJdGW6qjRX8b0ZTAZIfA?=
 =?us-ascii?Q?z0mgVvPl5ZX3tevWVh3sWzikXxHoR6JBGq+HlaD2ESk0bL1zfzqfJzKR8Nxg?=
 =?us-ascii?Q?/jhw+bBy/guejXxea0uJras8YMR/2iYh8dYZffbnLXFFVkQAKlKvMbdCoemw?=
 =?us-ascii?Q?KKGMiqKWblVasPInz2JetV6qXtVQFd7f3lPRn/w9mXyL4zqv0FqEsirstURm?=
 =?us-ascii?Q?wc5n3oduzfDMbYdGcZeg5+klx0PtRdyJx8i/9CtRSynvCvvBlOYc+pzfRg2T?=
 =?us-ascii?Q?2gnKkja2ZYeORxRyv6z5aBL7facyWSql1N3IFuBXkV3EzdNco+v3wP1x7vpC?=
 =?us-ascii?Q?vM9etVYIbOvhiZHtlyOCy80B?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00019e4b-a891-4e93-2c12-08d9298e7d59
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:30:21.8221
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Swhkni4cpGN1f3r8q90wwPsT9zS7mF0DtxkHC3HwcgP4oxYyEftfRdvzb5FtFxbaR2hl9LZ9jXm4Cn4iuDTt2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3125
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the dt binding for i.MX8ULP EVK board.

i.MX 8ULP is part of the ULP family with emphasis on extreme
low-power techniques using the 28 nm fully depleted silicon on
insulator process. Like i.MX 7ULP, i.MX 8ULP continues to be
based on asymmetric architecture, however will add a third DSP
domain for advanced voice/audio capability and a Graphics domain
where it is possible to access graphics resources from the
application side or the realtime side.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fce2a8670b49..e68a1b43b144 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -788,6 +788,12 @@ properties:
           - const: toradex,colibri-imx8x
           - const: fsl,imx8qxp
 
+      - description: i.MX8ULP based Boards
+        items:
+          - enum:
+              - fsl,imx8ulp-evk           # i.MX8ULP EVK Board
+          - const: fsl,imx8ulp
+
       - description:
           Freescale Vybrid Platform Device Tree Bindings
 
-- 
2.26.2

