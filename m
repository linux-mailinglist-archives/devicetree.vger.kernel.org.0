Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AF9340A6CF
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240231AbhINGmw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:42:52 -0400
Received: from mail-eopbgr150043.outbound.protection.outlook.com ([40.107.15.43]:7852
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239015AbhINGmw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:42:52 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aHkecP4I1qc1UOop0jX/lPsyN31FmPRWBwtTx+wjzpqiVWbh6lOAFTGtyXbD6Ij0aS1n0EDXUI1hTA/glGzbumcB/iNevuRGNseNWVijeNm5NbohEcJOPrb+wx/Uc5l17ZGoEkLmwLZCln7pC5YYWDTgN5XTCRhDRh4x1F6SeAe8qsy+QyU90d4Ks96WjTS9zWEYqOhMehqE4VhObWxV4gccUI+SSxlLwDktheK1qSeJ6Olc61HkCH7dnWv0LyYNCDsHFkAb8bUdvMQ5m/uiezwa38PnPZ46pD442WMueRcnDPGNGXjsRnnyAbS3KbOVLGnm8SD4wQLEl9WxuvPuwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=cG9LAcGsHjNniSdoEZRNSQgTxojO2fN1yi2JQuSdTZ8=;
 b=Ff65blJ0leR6dsJ1q9isR5RXEumM2YBlhDQqU8XOiLJqcwD68NnkOBgWIqOp6DBaIQDdoYjf7+uDgGIv0gVUwfWcAZm10YyHdTi5iRPgEDD8kyubMLXWc2ah31QZpO1ARBfHsW1pay01cBClAE1nGxmm01TJysZzop7st65kvGaMZVwGVZno8SWbz8f9HILvQICl84K5F6RAMqm1bjCWRCVLSNb5kbcTWQprE66mtj2A8PfUwaWQGtkjJjuK3bu8R4Gy56TbvU+6xnJVx5NSbTisNbNwerjiPQEM7RD6DusOXcx1bvzj60VghlriVADCL3um4ICAZ0qSgSPggzykPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cG9LAcGsHjNniSdoEZRNSQgTxojO2fN1yi2JQuSdTZ8=;
 b=OBfd2bH4thP+6sSIfPyo2Fr5yDC/g+XihDuI1IKyFEfDxMLTr74dKauVvwGUYqNobKLhQtcYZ9rEZ0gFBGhBqc2oKzTK0W9q3ozDn07WZlgE2S0zLsYgMpiGhw+LvFq0/EGBY95XTJaSSgV/04/XBl9KWszLDAGN5BN4tCG7esE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR04MB3013.eurprd04.prod.outlook.com (2603:10a6:6:4::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.18; Tue, 14 Sep 2021 06:41:32 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:32 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 6/9] clk: imx: disable the pfd when set pfdv2 clock rate
Date:   Tue, 14 Sep 2021 14:52:05 +0800
Message-Id: <20210914065208.3582128-7-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b951c8a4-3fa5-4ff7-779f-08d9774ab059
X-MS-TrafficTypeDiagnostic: DB6PR04MB3013:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR04MB30130F2F0C30F8BAC5AA190487DA9@DB6PR04MB3013.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sArz2xaWYPHOu9EXUFUey7B4kOD3FB2y4ePSmHu31CjJAAwP7k1MTM0p8omLbFKbt3rE2e2II2TgiWn7TcExdms9EogEvAS+/Ypa9A6D35ZdbtNy81S9VJLLavqrfm5Dv+sbQJYHmd3vPWG1UcrEeJIcIRV1V3SOONxF8lDeq8hsVIhZwhP/36DX9Uf9goaurndVoebG2pgV1VZKvg6l0h//7+lNdmuyTLXYPZdrh7FjJMA9XGBLIB5CRTMFDimpysPyrYug3cAsHdRbM9CG1qCsUt6in4LpUK+bF4nfleLYoQqpj4XHy9E8tthMdab3DX3JqJQvMRHMaddO4BHXMr+aIU1QZsyxGlbv1ShYLbG/23Eqg8Bewgkz21fzcZ95Lmo5F5JVIhDxqmOQbc66nyohxVeZ3SfbIPr7Y2BffzIEWbBnqpVODJTf26JynvmWBTMP22TS4u6rwgS7PidlDydisk+ynOIO0oXXqdGAcPuFnDScGrSQlcDZb9zUiR/L1X9NYWeKzlMteUr8/OMa1ta/SXyhhz79L8oHr1aXuxFYpH4T1yhoAo8Wrg7UxqgPryaSFC4A5XYcmrRyBxxfaa5NQ9ifx9SHLLXjtxZuOgWxn/nnq3LYSCWWNr9h8WFTxPA/r5+QjXVzzssIuA8iK9ggsRFrFsPN2mKTa76OLy97+nCbQS/kUZJZYa1HwsBFq1O9uJUuI5Knpd2Qn46mrPzjyKhDIn5eITdk0ABQr5A=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(136003)(39850400004)(366004)(186003)(26005)(52116002)(6506007)(86362001)(66946007)(6512007)(956004)(2616005)(316002)(83380400001)(478600001)(8676002)(38350700002)(38100700002)(36756003)(4326008)(2906002)(6666004)(5660300002)(1076003)(8936002)(6486002)(66556008)(66476007)(21314003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aYt15Mwi0ZjxCm8gF2Ln9IkFLbjqRvZajLTTxOOJEBubfzpmkm0t9qqrvC7w?=
 =?us-ascii?Q?yZ6OqX1eeTLRTZc8LpezSEyAVZoWqOP9NPyoon6rk9rsgCbzUxB7uQzt51/3?=
 =?us-ascii?Q?Nnovsxcs2hrWLdcjOHayPhrOhbERtr+q5iRjPaa1otwduidC7stp1KoZ3j8C?=
 =?us-ascii?Q?te3+XO3whUBl06ajQuu+OpwPDa4IA2nFR29N3nCDgZ8qyzxxZ/tuyNuTtySU?=
 =?us-ascii?Q?Os0AP1hAGdtLgkYJxZEqel44y2w6fXb/kgjxPbKz3wiOVBbhpW8LQvsdH8pJ?=
 =?us-ascii?Q?dZKv9kgnVzvXsDBfrfvG1vz/4OVHNV7d7dU45VkrMiNSA3FGicKggwH7Cd06?=
 =?us-ascii?Q?leHrffpKjNePIPJ5NKiUi7a1gWdXtee3Ll8xtgZ+0COAYOlnMj8p0g83jpHw?=
 =?us-ascii?Q?KPCs3ajY13puXMTZ7e5U53Y2SJIEkZiXpuEFM6xTI84x8tBJwLZngrDPN9u0?=
 =?us-ascii?Q?9oVytI/0Ojq9TF8m40GEQs2R6d3tev0TLVtxrgcTxqm8rgiQGQSmzTLTlMDD?=
 =?us-ascii?Q?vrt+hiIIFoLgpMUdy+fdL82FzgoOfaottsN6fp/W/B2P3uVZx+L1MMy6tmNz?=
 =?us-ascii?Q?Kw7EwatJ0IZ1IsQoXbEDryTIpJdibLDReH2fXbel7BjclM2LUSCF1g3w+vq8?=
 =?us-ascii?Q?weQV4SYMQ2TauS9MmvHLdFe/WR+WO627486noB1jLdwrINavkiWeEE/mb/iu?=
 =?us-ascii?Q?ydCC8YvrX8UZW6k/lZnKbCpP5E/znzmR56pKI/N57c9KmPJRbOzolVFnJvdG?=
 =?us-ascii?Q?yyXVzGIG6tjEcXVeFWn4xi8LiH3Qfni427TeeLqVMIokNdhtObcLIvqEPOZt?=
 =?us-ascii?Q?dsA7e1ev13WRN5XA2Rf33nYbprZ8lD8w5TU+C9MJP3rXBQRFRNRDv8feDBK6?=
 =?us-ascii?Q?q74Hfl1yF3UKJQvdx5CEzU6rMqdfpsPs2vGddIca1Pl8pzvOgEb7tgad24sG?=
 =?us-ascii?Q?Yoci7d8sRgPLNDqub/1hqVakUlIfaTDIHvM9BiB/4DLUy0JPbjCBQp4soKt4?=
 =?us-ascii?Q?8aIteztqQCu7ennOg13TEmmxJDMdubQ0gZ9pxCmQgqr0kfDyPnKwi3wBW4Kf?=
 =?us-ascii?Q?K5KUNK8BpGkWU4rnSHrffQ1NAEc/ThSDssCrEPyqAQKvkRJSb8lSOpLU7yPu?=
 =?us-ascii?Q?ivyL9LOwU9CLuzL2MLWadZUbaj1PXjJd2BAAgKaeZh1JUvQ1+lwmzXFRtLAn?=
 =?us-ascii?Q?B27SzG4651nvB6NwL5s2Hw7/gT9XIojjBGlhgoZ0XKExnqGfqtvrXOfY8XNA?=
 =?us-ascii?Q?3K6W9JGnl+cY1nxn7gsjw4Asrs+HshLK+a9+ene/Nl9li5qK1q/9nQlLQgus?=
 =?us-ascii?Q?XgWQpc7HgyNOa7PH1rcbx7fv?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b951c8a4-3fa5-4ff7-779f-08d9774ab059
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:32.3088
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RUYmcySfsBTwDRDfaZOo7Y7yovqllu0f+wYlh5yJHg9t4+4gZ6hGrkdobGePOwAhY/hOL+uic+V0U1G9siOCOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3013
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is possible that a PFD is enabled in HW but not in SW. That
means the enable count & prepare count of the PFD clock is '0',
so the 'CLK_SET_RATE' flag can do nothing when the rate is changed
while the PFD is hw enabled. In order to safely change the pfd
rate, we can disable the PFD directly if it is hw enabled but not
used by SW end user.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v3 changs: no
---
 drivers/clk/imx/clk-pfdv2.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index 6b744c84278e..9cba83521988 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -161,8 +161,17 @@ static int clk_pfdv2_set_rate(struct clk_hw *hw, unsigned long rate,
 	if (!rate)
 		return -EINVAL;
 
-	/* PFD can NOT change rate without gating */
-	WARN_ON(clk_pfdv2_is_enabled(hw));
+	/*
+	 * PFD can NOT change rate without gating.
+	 * as the PFDs may enabled in HW by default but no
+	 * consumer used it, the enable count is '0', so the
+	 * 'SET_RATE_GATE' can NOT help on blocking the set_rate
+	 * ops especially for 'assigned-clock-xxx'. In order
+	 * to simplify the case, just disable the PFD if it is
+	 * enabled in HW but not in SW.
+	 */
+	if (clk_pfdv2_is_enabled(hw))
+		clk_pfdv2_disable(hw);
 
 	tmp = tmp * 18 + rate / 2;
 	do_div(tmp, rate);
-- 
2.26.2

