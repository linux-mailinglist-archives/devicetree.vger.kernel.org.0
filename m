Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1D1B3E5357
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:18:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237022AbhHJGSY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:24 -0400
Received: from mail-eopbgr150084.outbound.protection.outlook.com ([40.107.15.84]:60841
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S237003AbhHJGSX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3kye0x+YvEENAP/kauuFG66AJ1XZ37UySAQ/nAEZFunS2EeY10ZYKPqfYFaB1wdV+HLZ+/JjywFYqk6IW94clWDwOFcZE/CyejpoVce3elVxyQl5FZTlgL2FnkHmBALuUFSEKpqwXNP6Pp758wgvDRjS0mZ5nTfaXSq9wgJU9RjDxz5Wzx5EYeF4zl278YrmOiRuuz0ptkTJ2o/LXU+cij6Nstzp/I+r04z4Q7zuJ2Wm/MEzyxQwXPNTAIWUTTWgdmedaYmFfLF4p6ABA2vYhXSjAWnbwKA1ZsBPepJn1XYbptbZNwWiVIBWyFGPseHagbjS3Zi8fLdFTu8AYX/Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=It0OwaY3ZCoEQEX8Xjy27RxK3rqLpZ7+v/5EAGWriEc=;
 b=KYjpOZvMzr3TtlXfx1wNgVOc2/nDNldI752hCMuqRDCo+bQQoqf8MhyQzlV48x4lUw8FASJzw5lWlFc0mNmTNgeYVQm4ZaMJ4LwYHmBi5i4N7Y9etSJXB28QkJaShhTuM723OgR8YZsQhb9nf6p9/VESL4OjV648KuX++yN9it1LhbE/5m+bDhItM+gAdOUe2HuoMqG6Yv3TTzZVVUg7jIOZlGQJtzJTJwC8+JslKGLvV9XYXg77Fkxc8s+GcdllzwlHGdtBb5CM7KtLFYwaRjYx/AsBJaVPY6FGjthBpJBSha1nwmw2bFFvVvC2mHoL0hL2li8hxu33SSOfZHyEjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=It0OwaY3ZCoEQEX8Xjy27RxK3rqLpZ7+v/5EAGWriEc=;
 b=p3f69y5LjIDLehcQZqaGTfm+Tqi0RTjTnoPwRnEYejza8OaAkriorQpIoxo02akXZrYofYHZdaakWcaNKKAOzl12j+t7XAmmgmbsRHq99Q9z8MnnhkvTyqybj5piThqoyxlfosuA+8WoGh3V93Ot9BxslXC2M6CzsuqIFbhYeWI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7563.eurprd04.prod.outlook.com (2603:10a6:10:206::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 06:18:01 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:18:01 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 5/9] clk: imx: Add 'CLK_SET_RATE_NO_REPARENT' for composite-7ulp
Date:   Tue, 10 Aug 2021 14:28:16 +0800
Message-Id: <20210810062820.1062884-6-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210810062820.1062884-1-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:17:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: daf60e38-5ee9-4e5b-85f5-08d95bc69abe
X-MS-TrafficTypeDiagnostic: DBBPR04MB7563:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7563A61A2E29620C1CB45B2087F79@DBBPR04MB7563.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dzCCwovC74QRlrjJRVkyx/WNHUDHWXzvbOYKFCwz8ub6UX7zpi3GA+Ewi4UYKze4JliJ+N5LlwAqCbhfpmrONnnPDIwCHJxEZm27avgn7tJJuiHjky0XcdGl+SBq5oR7XZvXwT9stGiJvQ6lAm1P84i4hpkWAT2MmTbXeqBmEdM3ReHsjhcp4HAahRhwIvhxQJQKR++dcXijk0aUxdA1/XYGSzwSj7mm1oJJxRVTvay4gN60IbG4OVguvnwAB7hCz3V74rmr8OIfcTKFR0s4lhpdjiSuIvo2h9TLnmtE0UockRhykoBo9CcQpsYjFHnAP03yK54tO21/MphnfZGMkG0OkqR6lna759brQqWrgMukDQekQ1vJk/WO6+XlyeU63BX0zafmVqV07dG6cT4Zu6qZQsRg8U9j/oHVEVYrcPW4Zs56glO6YtW0akKiXXdZ28e7YcH9rl1C5lLuiHzkfPRHDFIZgLkMvn8iPrxytIb+XTXYkpGTTQPrHNjlWiiBuot15zSMOiH0gUWCzLMI+yjP4MZREhmmS2HxDAPhDVE/TM0njGo+oI2vlwosciV587S818i108cpZjh+GqTqgojpZGA9DBP1oiDAiwF4H3NiW3n6WZAuiF8+y7d93AqjazSvw7X4ihJleafchKCE0oI+l/kKlP7s1FFvxuoHIRzh6DUhrqLR3XwZwCoRNgMmtQJtX6M4nZPSLiwZbiBNXQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(478600001)(66946007)(2906002)(52116002)(38100700002)(38350700002)(66556008)(66476007)(2616005)(956004)(4326008)(8676002)(36756003)(6486002)(1076003)(6506007)(6666004)(26005)(6512007)(8936002)(86362001)(83380400001)(316002)(5660300002)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uMPN0QClDU+VgS6VZAOnv0FSRYw2uL/5uYWrJIrg0Vv//51PZ/kQ53MHBgvv?=
 =?us-ascii?Q?hYBOeGPlZvFsbw010PKA9gi0ThEVBwL/aHuvNhdJfOI4UOUNCyL52BWL+kFB?=
 =?us-ascii?Q?wnsTSPOI6NXpFKboWEAIC3QJDrW4os8oy5a5jEhHbFxHtuetUkzHBszdeKQ8?=
 =?us-ascii?Q?DzQIztEefNS2+ydZr0cufuRNrtXl/2ERMZ9JEAxnypCe+wVSQqb4iTK1gWYM?=
 =?us-ascii?Q?Umb244i3iByJVRJsRiTJ0acBxm8jdS3ffYh7109wAhmDhdKempl7jdL1HYM+?=
 =?us-ascii?Q?WKA939ybBKqN+NxkOMN0+vrTR+TrnAAXjUW7y8TEA5ZVDQ5BfHevsiPC540s?=
 =?us-ascii?Q?Ee0r5Ke18Qj+1dlZk7Y4A4PYF6xe702jI4OSaaC5Hy8uNcf/qksV3rHAuhMW?=
 =?us-ascii?Q?e+mtYLAXOmPn5pCHmRYZqXAC41gRrQCM/UfND1vMm3iSNj3clOPUcoLu0Ea0?=
 =?us-ascii?Q?9sS8eR0k5pgyI7jDY2SK2aaZmmy1AzzRyp4tzhFiTtzYl7llaQukHsStiBgA?=
 =?us-ascii?Q?82x+zFEbT64rwLTL8RmmYNmSRCT76HDDc5f4dcqDUleCWlzMwllyb/STGaIJ?=
 =?us-ascii?Q?eJus8PvZF9h7z1nljywA57XNDumHQ9apGS4WUe7M1kOYYA5kUucc7XNncg6s?=
 =?us-ascii?Q?h22JM7MjbYGVFh6mwCbRUXOfw4OqgQMlBddGfO0kbG0yWgRmWi5PK4bbGAYs?=
 =?us-ascii?Q?iCca3Ciql0h+7tTCX5T1w9JMWzMIBclYzwMDkZ1bQ2cZ26dXKDMaC7rXE98l?=
 =?us-ascii?Q?lLD7by3c4eBi3P7KaCYJ8Vrp85BBtgvKcA6JX6AesUXNWZsPgW/xDlmHd7h4?=
 =?us-ascii?Q?P5y6Onr+kVQm5ktfZvO/dxh8uvqmwPtDt0EjLc+D4YuDeKAz5fcx7WZpWbyB?=
 =?us-ascii?Q?1cRr8OzJPWAFfIVLSollrZQjkz96QAbyVdXW8A5JMNaAdc9d05sA+EurvoXj?=
 =?us-ascii?Q?Igv3yQd/4E8t+aU445A599TdMQoa7vhWNkztFHgjD9fa5xGcKz2Qr8FeFXGg?=
 =?us-ascii?Q?kE5nbS4PVzSa+RNkFQsiryxSN9ct+uwZvonIC571YN7erYvvFO7N7Tmy0pyq?=
 =?us-ascii?Q?+qW8iHnSia2KjCJBlrNrceSEOUVHItJqCDlVTJYs9X3uHShC34jEqRC1eHrM?=
 =?us-ascii?Q?rpSvcr5B6RPv0q+lRWzYE/bC58/4zAL0c9Te+8PcFZLU7iNc61W/Mrbex4Fg?=
 =?us-ascii?Q?AhLMzEFLsiySwhZoVv/wqo1uIhDWvtGH8MKqjljMH6pAMqFTx5Bhs94x3EGk?=
 =?us-ascii?Q?ylHwyl0cK6qPqFdVex5UF7i29znlnevkO07bK11Uj5N/6eHqyu0mMJ4TY1ug?=
 =?us-ascii?Q?8YpYX8DDMGrZxdvL3lyJn778?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daf60e38-5ee9-4e5b-85f5-08d95bc69abe
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:18:01.0362
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kxiYgyYrX1IlOB/gD18hpyRpSDftQ6lJQFOFMsdbugUhPC6gYTWkKPb8Imqeigd1zb3mc207L47sr3fH4qu0Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7563
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For the imx_composite-7ulp clock type, The clock parent should
be changed explicitly by end user of this clock, if the the
'CLK_SET_RATE_NO_REPARENT' flag is not set, when user want to
set a clock frequency that can NOT get from HW accurately, then
the clock's parent will be switch to another clock parent sometimes.
This is NOT what we expected and introduced some additional debug
effort, so add the 'CLK_SET_RATE_NO_REPARENT' to avoid such unexpected
result.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v2 changs: no
---
 drivers/clk/imx/clk-composite-7ulp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index ba48445a0007..99a36a73dcb5 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -130,7 +130,7 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 				       mux_hw, &clk_mux_ops, fd_hw,
 				       &clk_fractional_divider_ops, gate_hw,
 				       has_swrst ? &pcc_gate_ops : &clk_gate_ops, CLK_SET_RATE_GATE |
-				       CLK_SET_PARENT_GATE);
+				       CLK_SET_PARENT_GATE | CLK_SET_RATE_NO_REPARENT);
 	if (IS_ERR(hw)) {
 		kfree(mux);
 		kfree(fd);
-- 
2.26.2

