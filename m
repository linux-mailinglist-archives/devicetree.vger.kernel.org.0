Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 169412F8C4D
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 09:46:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725964AbhAPIqO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 03:46:14 -0500
Received: from mail-vi1eur05on2073.outbound.protection.outlook.com ([40.107.21.73]:46624
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725928AbhAPIqN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 16 Jan 2021 03:46:13 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQzT8G7uPhTvHI4BRUnCGttkCt/dvjYkkUrZmLRr7mZkUbQL+VwJ26kjrTP7tFfc/unj97e2GzPG3wU6f7imRBEwmg7uGAwfus4I3hIUDpKDqE8AEVM488flui+4Z3zYgOFmYftk3phlNto8+uj5eG/gMwy8QKlSMxBA2tSQtUOnFsnzmIlMBqWBCrC9uZm2u0oxLd7w+1smdgunUrsv0oDy78PXpO+cZQNBkUW88mr6qF+4/15eeo7s7PoHKhhxXu6FkCG2mh7e/EHeK6rkeLKq19utMxYKbq0fsKNnn2ghcXXulyl3q1nxLWQjYBIIhI3jGhaRejvBvYIkGk/wGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SbRxYagE7FDX5F4vgIasHtM520J0Im/eEOQXDk1LA2w=;
 b=AaLN6AVssTOj6pXC6l3lLczRu+5oyw9d9tSkT6/kLCx+u87vvx0M4Ibi35/QTWh8FUsNT4Ax5VQrBCYJwXjKSTQHbuXLa1PSQwyxZrLE0a4haSWxS9vIBui0JdnlWXNxFcioxUD7n5OOaB+yHJVWmYwPOYZNLIqKfZce6AKUcdRb78bfpyMkgfOFZ79S66R9NPQrDk8MS+iTftGhH8VevhzKipusWcw531bhrhwEgasNq7hAa5/YWvkcQBk/oFxP4ndi4WkRqtLxgAPKxgnjuBSDYG1SX9z7UiNfCnjqAXIww1GBV1R9Kt+nTJXtBQLknNLYIF7TguJu2anoKVK6Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SbRxYagE7FDX5F4vgIasHtM520J0Im/eEOQXDk1LA2w=;
 b=nXlyBTGMeFmL+iEB0Y4So+Y+DAa7FMx7HhoTtmJWmubbs3xUYfaS8PNoAiJfNjJUp/AV1F3t3qAk+QdtC50EcDpUmS5M4CGOGAFHrb+Z3gLxrS2FeJsj8W4u3ex6drHnF9xovNZ7eLbJTkhdz5MtmwY7Do6dsTkVHnFa3GiQLTw=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB7018.eurprd04.prod.outlook.com (2603:10a6:10:121::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Sat, 16 Jan
 2021 08:45:24 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3763.013; Sat, 16 Jan 2021
 08:45:23 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH V2 0/5] patches for FEC
Date:   Sat, 16 Jan 2021 16:44:26 +0800
Message-Id: <20210116084431.25851-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR02CA0081.apcprd02.prod.outlook.com
 (2603:1096:4:90::21) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR02CA0081.apcprd02.prod.outlook.com (2603:1096:4:90::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Sat, 16 Jan 2021 08:45:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 075958b3-1888-4250-c040-08d8b9fb1047
X-MS-TrafficTypeDiagnostic: DB8PR04MB7018:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB70183557C3CAB09BEEF5E129E6A60@DB8PR04MB7018.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lOTBwdFQvK1VQgc6Y3EbfALzo0IZHOaLtvZNgxzhKPV/wIlD/h05Ek7ZOlEIGJ9WN/G15IiXX7gcqV8rBnVljPUI13mSvLMgRR5pmKbcOqDNj0fX5MNotNRKiLTuwJwFB8EqORfSe5f+2LPGiqwtBpIikv8KYRnkHpq65EBaUePK9AIKAGAnyRTN/3wklFyow7EmmOuVDWjk5xWBkuCnWR6aKtFXabFyFqLKh84Lkcuy4cQu0Q9V4MSHFnhogZ9CwyRjA5dP3MZv7b0cAs+9N4NoA8VDs1jo68MBJFW+/vC6fUY0GFx6umQ+TDm1vr9WLRJH8uu7MwKg2eKl4KXK4p/G6x0aJcDVWkbXz7cfxTqFB3LMxAGOsFHaNVVfODRQyuYrKfQM+Y2l0NXgGvAYH0Csbext8dba1CYMEINJ/u9eJqfldz0S2cXTYyaGF+wTlTJwprTwg5lFq0oaLrwB66XChPOYKQYMOv7ubR3NIs/CkkwsV+365oWcNYfkHygrvZQXKjYDsGd6vHL994TbP+/HeypUqtuq0KK2by/njKdpCcRF3IrI+sbM4KfbZIVlxqqxDt5UQA71WQF5kxNCYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(396003)(346002)(39860400002)(136003)(956004)(66476007)(66946007)(6506007)(2906002)(26005)(2616005)(66556008)(316002)(6512007)(478600001)(8676002)(186003)(16526019)(36756003)(6486002)(69590400011)(5660300002)(4326008)(1076003)(52116002)(83380400001)(8936002)(4744005)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?E4fVlNi/7HONiPbriLCcinKyjhsDP2Z4tkAdIabHEIodJlmj2nL5rGWpe47d?=
 =?us-ascii?Q?1UJnTnpeX+iYEJ1m82s6JGxmTAAUAAgpqhzm+4BhQO97qJAWztzr6IkGkW+R?=
 =?us-ascii?Q?v5ScVXYNqChYy1q7DZtb7sb44TtWA0/srpjcPxSWE0dEPNY5Dx4KQhLJuHXN?=
 =?us-ascii?Q?L5bHKElpnwZz0bW1MPiYOzK70FVerJ3IghBzUFQLP+IobH7VlhL+c0Bh/HVA?=
 =?us-ascii?Q?SzX/VxRz7DSa/Smw3f+GsSbq8g1LDdrxlrspjAZFKDPpi3m9GHELIe8vJcvA?=
 =?us-ascii?Q?rlzM1nRiZ5cZMHYIyOtBa0f7PHISUS92S1VahGqY8RcUzKnZfidli8oqs4uW?=
 =?us-ascii?Q?6Hl4bht+7KCYPrB3yaZR6UtNrElsio5oBdmjPPDvq3prEM4SoWJS1M/vc4s6?=
 =?us-ascii?Q?qVVrwIQZcUu0ob2eQPJEjXgxz03Pq79jIG1sK5/zyQ3Tgf3YKaxVh/FMqeLT?=
 =?us-ascii?Q?T1errWmNEN47HnuKu5stTeQGfx642Irtu6ZMMeg/E10eut6z+Oh1go+5qKSu?=
 =?us-ascii?Q?LIYF3mwhR3/kKWhTMBntQ0+pX1kQOW0Hj9NZ12Vvyxx6M3OFYvI7mWUBrvAs?=
 =?us-ascii?Q?mhE2bwgfbC3lNxTQLrX4TUU5MmpTcZJTobSsjjxm7gyePDSpkQ5lMK2GJ9+z?=
 =?us-ascii?Q?qgNV2gBpQWvddE813hxZMClBNrhbVVLsfFvVuR1VWWuFPOmJtNw4kgOhrVAq?=
 =?us-ascii?Q?en8te0623LMPKmygKdEbICJyQs8o9hYhWjKYkmECELa8aWKaOQV4ItPK2ewP?=
 =?us-ascii?Q?1h8AE/zkgx9gDcXdXedHa9ifOk4tAopQOts2rJ1qdmu0pfrr6C7yVeddPTmc?=
 =?us-ascii?Q?FHpUmd5F2af+z1YwrbX1nvz2LHgRqM3Tqcl9J97kW+Egqn9+5Bf7sszuEpH1?=
 =?us-ascii?Q?Js7QTPIBShoUhoGxxdVRPNaZBhRpHDoppFjbInzs09UjIo/M1eTEnpmVQBrk?=
 =?us-ascii?Q?sUqzZAv8xJnWgQLAeBoSpElRs/j0qLdhDjGAUZeLQr5Dj7iWt0tw7rxM0uWz?=
 =?us-ascii?Q?gpWM?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 075958b3-1888-4250-c040-08d8b9fb1047
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2021 08:45:23.7646
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0bf2/0JXtxxKxgAJOXZHHyP08vQRVHdZZTwCOLjtQkZfo+YzrK0TT/Ffk4AHbCBbPef95NQcidgyWeNyY+Lx1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7018
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some improve patches for i.MX FEC.

---
ChangeLogs:
V1->V2:
	* standardize patch subject prefix
	* let unit-address match 'reg' property

Joakim Zhang (5):
  ARM: dts: imx6: add wakeup support via magic packet
  arm64: dts: imx8m: correct assigned clocks for FEC
  arm64: dts: imx8mq: assign clock parents for FEC
  arm64: dts: imx8m: add mac address for FEC
  arm64: dts: imx8m: add fsl,stop-mode property for FEC

 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi  |  1 +
 arch/arm/boot/dts/imx6sx-sdb.dtsi         |  2 ++
 arch/arm/boot/dts/imx6ul.dtsi             |  2 ++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 15 ++++++++++++---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 15 ++++++++++++---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 15 ++++++++++++---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 17 +++++++++++++++++
 7 files changed, 58 insertions(+), 9 deletions(-)

-- 
2.17.1

