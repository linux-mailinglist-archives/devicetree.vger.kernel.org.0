Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EC033E5352
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234461AbhHJGSD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:03 -0400
Received: from mail-am6eur05on2040.outbound.protection.outlook.com ([40.107.22.40]:23649
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230243AbhHJGSC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1jTUGAEovOC8LeDdQQee/yFWUjZHQb1M7/U6UPvUWcABMZ8e2Pcrgx30CRTzhAj/Gyqr4mrbjBxYZ0NtMaIptVChSvzycC58RQzNmzh0zVc2WRJpY3PvNsaMmrFhlSiAmo9A2fb2Lyt18NtEOiXcsDonWgGVqbf2i0UijrLpxwZd9YLY28LbBmKf5NIBN+gJbrUbhLMtYtbx85FPp7bkXnaRAuznVKACUAtxfp5qYWOdSd3TadfDq51CNY7s79ciTdU0d071leF+gutOGRnDT1KRMAnbJHNlbBUVQWFyr/ER0tfBjMabhgITxndPslYMDFutC4OxdF7yXueZJjDxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8gxgazA0DtJ/IMTNIHCCD7XmJGZ/+2FU85CwCo3kev0=;
 b=kkIEbJv+paBZWUOUEdsJrG2b8e5/E2wGks/v31DKKcl/zbNNnB5o8feJmEVGcmWZyEzGF+k83lvQo/9CyjJqbaRdU3Rc9dDpf+s08XWQY2tejVO+nXCiw8O+zfrAg0QJoVo6psqnzHR62kmbkIdCOTmzMMkw7PYb9X1nm5DM+ldAZ6f630wvb5xLgASPhkreZtFtoJadPJjp8I3mrpsnPYuv8afYhinLncYF63gm+Zwh8Zn5ay+zT8aEB92lzuWP5+eVZmP/DiuTe7p1JC0qhiSb6f7IlbGhT8y8lhl+PvBQX7WwGYnn4Qb9nl4dYEhJiqm3rb10GsNTyf4ws0XeVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8gxgazA0DtJ/IMTNIHCCD7XmJGZ/+2FU85CwCo3kev0=;
 b=TKKTY9JFhWYChxPuqH82+k6+HdVorVZ3Tq7rng6xvAYVGniTH61aGp8aSuAK8uUcnKZrZw0iOkarXirevq14cVq8wsukj7bQqkC+yro0pl18OCbyEA4GSkDHwU/AuU5A0pAFgPHMfvGbwchS2llFNTjS97bDMNbu8NQQEIryJ8g=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4636.eurprd04.prod.outlook.com (2603:10a6:5:2e::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Tue, 10 Aug
 2021 06:17:39 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:17:39 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/9] Add imx8ulp clock & reset driver support
Date:   Tue, 10 Aug 2021 14:28:11 +0800
Message-Id: <20210810062820.1062884-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:17:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3060223d-952a-4021-021b-08d95bc68de5
X-MS-TrafficTypeDiagnostic: DB7PR04MB4636:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4636C7123030EA16E3147A3B87F79@DB7PR04MB4636.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1751;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oa7eRKdt7V7j0GZJL0RjzdlxHGYtyqg8T12tH552K9Y956THBh+8AReQDz+gH7NaE9Qw010MparLFKb5+9ESKBU4AHfrJdGv48F16726S7oqnP36OBFvfzIChN4WoL4k7dxEr9uqTF0t0m3+b81eaAPuXNUPuXUUkmTyMacKFYOIwWVG443C/Q3XQ1IQNwh3ddQYfUsXsyvjG6NwW5LnPETZZH1ITUYN5H13Tm8hwxRlWtscktiZjZTG8GRawxA/srUff2Sru1E0TmJxGl03jAkk5epYZ6KV/ETIdGOdBkfq4UfQMWGIepuDqTkAB+pIhp7MuLH0OaQW5bYeXse7HK/HQi7j1Aq+FKlxzDOrQO0/4jdX8PsemzKHkF50FmSORtXLFvT9X87SPFWLg85dh4iRZ/q9rQMXQsFmY3tR+qbBj/a2Uv03oaM+i1xIr0CVSuNg0rn1MGZALBBJmebJq9gLwJ2w20A6arBlPFQW69mTB2yooE8VHR5GHQ7j9fnhW03jpoLiSd+qdyAEBlIxz6gPtyN59pI+e7jJrRwXpg6mMRK07o3TcQgnWGamZOTKoHHpip5C0zxsw7a3EBfU7/4ECQNmSjKqX6N6Avvm9nPTWDLK+MY2QUO3KRNemnIwUdvx69HinLOMR9x1PmXVybJB92xRM9fXYlc5qm9DnmhNnNErMtLhNOEPF7tb3fV+LuMApFBAa+ZvTVIiJDqxfzVoWj0iv7op1LImgBzsNwuIKztfeOf1LSY0AxN60lrNiasoCi5u39DlsldCXQEMzGFxfvR8G4n8bfTn3h8vUVs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(26005)(6666004)(83380400001)(5660300002)(66946007)(86362001)(6486002)(186003)(66556008)(66476007)(2616005)(956004)(2906002)(8936002)(4326008)(38100700002)(38350700002)(36756003)(8676002)(6512007)(1076003)(6506007)(966005)(52116002)(508600001)(316002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7TzC61g7gwl+wAyiKeLuB+G+dRu1Y/rhg49Hm+5JAYT7atbg8+8kmmuDiq0v?=
 =?us-ascii?Q?IaLEYOzmydExMuZJVToStoAsCPmTzyVONhNzRaWwESfULY4v9HlLJE/XzzOj?=
 =?us-ascii?Q?+5S179Kuhtfb4Q8oBrtui5az36wr8apN4nXoHobtQ8zBt/EHUPc/cKO/cddO?=
 =?us-ascii?Q?Q6/0ScaMfgP3m+NSJRfAwY76Hy5cP2sFIqi/NgkQE37EC+aSggxZOLRr8V5+?=
 =?us-ascii?Q?pHK2H+/xS2NpQ2nWQh8w9jZHn1Fe83IYYL55713kn5cekWGVdQ0oVPgG49Vg?=
 =?us-ascii?Q?WeITIlSZJGaCofPcK/JRUlTenk2e/zLkAvXv7DHrqd86KwsRdNz3nwZRZKzx?=
 =?us-ascii?Q?4Mj5gYHFGFXgxqRvzLV5QoGX5DppQYUxMoeRhHDDl2D4ssLziqbzbdsTJZhI?=
 =?us-ascii?Q?JNAKyrT8fthrGZEOKpSa6/KZIB6lamwiO4qBujPvsRRDLbgevtgIx49UufGc?=
 =?us-ascii?Q?H9XCy+rx480OM2tmonATXGDkNLb3XXpl8Zx0U84BaGl5kIJ1Gg+ftxNjouaJ?=
 =?us-ascii?Q?ebkZ6pPQEeIIb1GAMCQNnpz9bPZB8mB/aOppHjF944D8kQGwWMBoKCWNDm8E?=
 =?us-ascii?Q?mrRG94eksOOEGbJiksiSrinYHShDlkgXMOy3ryD4L+Ot7CbuPeD20mMFlULX?=
 =?us-ascii?Q?xLfS3DXUiksTvoJ8rKynrGimJu8+WSFeK1ZlDzNJ0HNjbqqeDVQBkruKkRwP?=
 =?us-ascii?Q?h9QRbdcdJCQ7SfzgDbysdIdhwBcyDlTNoEvfZ/UduUjG0CfsSse/ZNtNWHTr?=
 =?us-ascii?Q?YqX8255CseV3MefKpVearv5Qx+ZJkEVWv6d3LD3g+ap45tgEuqFFScPTvHut?=
 =?us-ascii?Q?B7Bc9GtsGwSpSRp4Xcq+SlLjBYk2LCjlSl41Zv58m3OuxNGXzNk3hQTK4c/A?=
 =?us-ascii?Q?nhWPKySfAwEpo5LiRBwe95z5CiwaHGOPgGURy4SD1iUuKhx8NDb0KaJZYySm?=
 =?us-ascii?Q?a4UowOtnKgpYt0xv31c/kJV+xE2loDLEz6wS/6rkQSoNJcAXm35MI3DrgXCu?=
 =?us-ascii?Q?QM5W88O8j4iRz34dxEr9qLDtXXqoKbdgEk68PsBGHSdMamKZgvuJs8Sa4eAs?=
 =?us-ascii?Q?Zsr+LIdz3zOH9fdQXB2eGjQ2EKEL1S+17/TVeS3cGc4ijF7GMGCqrjGFEdwp?=
 =?us-ascii?Q?myMYsTVDX3mknTXfvEOnNbcRWJKw0bGKHn0hdDVEakjPuAy19Gd01bU9ZcxR?=
 =?us-ascii?Q?g4t+p5aalKtfug8q4OU76QBeyABxGkyDDUe2nPJ/R+BG2TbXG1K/BxlXzlgx?=
 =?us-ascii?Q?ZPRQV4THBaHUSk3WKBDmtLBhO8C8b1a7/2ptYFd+FaCzAZTIVHsUGG11kWml?=
 =?us-ascii?Q?CK1a5TOZ8AZVmoy54PCkce5t?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3060223d-952a-4021-021b-08d95bc68de5
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:17:39.4113
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HARu+79hbTBtOhhS1EK26VFsoUfWKS7Bj3nh9+KAl8Cx6tl26qKNVBIAkTn/L4lTqNYjYN6Gb3Wjz5dcojTjmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4636
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the clock & reset driver support for i.MX8ULP.
For some of the PCC slot, As there is a SWRST control bit share
the same pcc register for peripheral reset ccontrol. To simplify
the case, register the pcc reset controller driver when pcc
clock driver is registered.

Patch 1/9  for the dt-bindings part is send out for review previously
with the dts patchset:
https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210607083921.2668568-1-ping.bai@nxp.com/

Shawn suggests to send out the clock driver part firstly, so this
patch is included in this patchset for now.

v2 changes:
  - remove the useless clocks & clock-names from the dt-binding doc
  - remove the redundant fixed clock register.

Anson Huang (1):
  clk: imx: disable i.mx7ulp composite clock during initialization

Jacky Bai (8):
  dt-bindings: clock: Add imx8ulp clock support
  clk: imx: Update the pllv4 to support imx8ulp
  clk: imx: Update the compsite driver to support imx8ulp
  clk: imx: Add 'CLK_SET_RATE_NO_REPARENT' for composite-7ulp
  clk: imx: disable the pfd when set pfdv2 clock rate
  clk: imx: Update the pfdv2 for 8ulp specific support
  clk: imx: Add clock driver for imx8ulp
  clk: imx: Add the pcc reset controller support on imx8ulp

 .../bindings/clock/imx8ulp-clock.yaml         |  71 +++
 drivers/clk/imx/Kconfig                       |   7 +
 drivers/clk/imx/Makefile                      |   2 +
 drivers/clk/imx/clk-composite-7ulp.c          |  87 ++-
 drivers/clk/imx/clk-imx7ulp.c                 |  20 +-
 drivers/clk/imx/clk-imx8ulp.c                 | 568 ++++++++++++++++++
 drivers/clk/imx/clk-pfdv2.c                   |  22 +-
 drivers/clk/imx/clk-pllv4.c                   |  34 +-
 drivers/clk/imx/clk.h                         |  24 +-
 include/dt-bindings/clock/imx8ulp-clock.h     | 258 ++++++++
 include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++
 11 files changed, 1120 insertions(+), 32 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
 create mode 100644 drivers/clk/imx/clk-imx8ulp.c
 create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
 create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h

-- 
2.26.2

