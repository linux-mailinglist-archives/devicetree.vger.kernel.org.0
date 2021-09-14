Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F40D040A6CD
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240056AbhINGmn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:42:43 -0400
Received: from mail-am6eur05on2046.outbound.protection.outlook.com ([40.107.22.46]:29281
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239015AbhINGmm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:42:42 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OdW4CShRq5O3WNh4RI81Z8VMohKgKgWcevEE7W9d0k1yoZ0dVmHtnk/jzV6BtvJCZZw/bwp5K/ALf4X7b6cjQgRcqYkSHe387ihAOZalrReRCoBrttOifbwuS4AP5wVVgLO418ufvQxGRbvo5UG7LuLKriKhutBtQY9shS0rAj7c78ES9MfqA2V6yrXShDv7LY6EDtF6ImUhASxxHEA5lVT9jHSuJWMaFnjB1ZyWihQiHCwYDcDAr8Z0X98Bu4+8UNH6q3rH6yO3UVBjX2DeM4dO+sfpFZ6k7269HP36Sb7Z5oCrtyA1qPz+poh4Mo5Pn2umUB2NXB8Ld72jwbC+Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=G+Q/Jyb0SIol5Cqm8djA7WjQq+KjCnzki+T982I2ID0=;
 b=cagTbvALJ/M4yVYpRUD+aqxw2TsGBVg69WkH0HRiy79V0b+0QJ9jboEdiPzbg/ki09LIxzlklc0ZWQlaB4WNISpqm0lUgcyN9pp9ICwrHymQKUhwoVSM9COy6bz0wafj7vxYn0jXjIeseptk/5CP/uYxG21YVG47smIWiGJpuYJyyciwSl746VoGHpsqJBaaP9tAoWJFBd37GtYq69cBto3xignZgUclmLcNJvOsRRbbpkAuaRQrKHh6m6QtA3sSGiDJ5Da3RdTAiRcWNXml99WfR6YDEaTagU8bewKG5ntkfYbI0mh5SJi1396WFR6ePU2Ru5dBTPlVMSKlaL9fuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G+Q/Jyb0SIol5Cqm8djA7WjQq+KjCnzki+T982I2ID0=;
 b=hbi6u1Usc0g6WKm50kIUws+CqQBtMSqGMU7ZAaBNoHaUtg4TtIGQespHavwmgtkn1TcYoXwmRqpRnX3fEJY4Y0TPt8yrCYzCudPBu05ebl2mlMfBAbKAf4pTM4oB8KKSJzKc4amAy1SiGF0ao4u6w3IeF5bSAdSrTwUZrk24MzI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4763.eurprd04.prod.outlook.com (2603:10a6:10:1c::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Tue, 14 Sep
 2021 06:41:24 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:24 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 4/9] clk: imx: disable i.mx7ulp composite clock during initialization
Date:   Tue, 14 Sep 2021 14:52:03 +0800
Message-Id: <20210914065208.3582128-5-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b2c6eaaa-7248-4faa-c805-08d9774aab9b
X-MS-TrafficTypeDiagnostic: DB7PR04MB4763:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4763B4923D7EDDB357C7ED2E87DA9@DB7PR04MB4763.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qvQ4ZrZSX5SiPQ67Fu68flV0BtiD8pKyDnUO3L9i2RcQADdwHck0v1fqcsDgQVkrEa0IwfCeXsGu/EREnVMfcaTGbFRzmSj/7LtU+62WtqdZpJr+JeY4JMuy/9F3pfkk2WSnMiSI9OuDV7HprhQWUnUT9kcZie3Od7WMBgnuJEeQz17DLjOwC2tIE4+3ODMvO0LZjZKJByp4xvpypirwSIzOIOc98dIzxWEEn6qZ37rqrGHJc6xFEhmdXch/o5kU/Qv7GBmv6AR55B+iMhLiRnoRiQWwnT6AJ1rNd1obwLdsdobTQclZ1pAjf77lAenhROSS+WWzBUuFtgZ4x1/HDHQgWQ4ISMqS+QCnj4byokCrPXwi9eUs5wTnu3u9weSTnAvQ2k/ugd/sbW37a7wLhLMvPip+EI3/jEMU+I/jQOhFH35G0OzK3qWRIYkohfNOi2RepCz9JF7f/ZfFQ+RQvFXQ/cIK9D5MQYWSpU9SMVziBBylA6oJhO0rIuCzoz7i7/R30BChqw+fe8ub69S4i8sm7/lngahMrhXu+7wdnLQ2W3rZxXMDTOV4FCFTq4RXyuWshjvdQt1mdTolTvUXosQ48/2Uq786toUslaC2HXcrSzH2WSd87uNgwtf6zEOoqRxVNXfSDIEFJAEzUjeOwdZmNxHNCvRd1XJHUAJ7MF24oHIO97+Dzq00xJhndts+EQoJ9100h/1Oa8PaLZNBQw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(376002)(136003)(396003)(39850400004)(5660300002)(6486002)(66476007)(36756003)(83380400001)(66556008)(86362001)(2906002)(316002)(66946007)(1076003)(8676002)(478600001)(8936002)(2616005)(52116002)(956004)(4326008)(26005)(6506007)(6666004)(6512007)(38350700002)(186003)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n+j/V+dxXd5y61BiuOye0wIAZDlqPA+HUO6cuH1sxPyAOdmYDrtgqpuB3fJR?=
 =?us-ascii?Q?J60dcFZ9aXKGfcIoEtnlnHxmRhb/IyVu8KKXRsxYYFw8RfnNP2JkE4FaGAuU?=
 =?us-ascii?Q?Cg12rt8F1hNkShFMrLuQ6Okxu9EmMPwRD9wVCyqEKHO2t9d5W1+yCHv4T5uo?=
 =?us-ascii?Q?32BmG1ApCtZlyy23Y2Rp5QfuCQw4hDHrAaQ0iVNUq8D/l8bYWW51tynYX6Cp?=
 =?us-ascii?Q?bRXIaNP6SWezskQOGlTbkZT7C3m9FfiWNE//cCADu2RdsiSFhZnJOqH/Cp4A?=
 =?us-ascii?Q?dkWYgzXAizhMIZtOTbR77dR1fDWuU2bowXwZR7ir26aobzrcNVvC4FjF7BpK?=
 =?us-ascii?Q?WzbMf3yaPOECYkW34EqLGMjuVd7V2xnaW3HpEwdJ8ZWFGEzE2PKjCrDxZZ+u?=
 =?us-ascii?Q?Y2P6s8jOTF6E9OGxJl9vY9KSh0di10JymlsMX7M20ZB4oqf/jafWlwB81kX2?=
 =?us-ascii?Q?JuXBSKoHcbgMCE6sU5WJ2tL5kdX8r/erDfvvKgIvUhfrtXUcqZNOKxDV6GVH?=
 =?us-ascii?Q?TaVk9WIjMegS1ajshr4UlG1lfynWrgkso4do6uqOWuErZh8EecF99C2C8Kcd?=
 =?us-ascii?Q?WvoJKfAiA058o+ueVjyDnA4q1carA7vsyN6Bvgr/y45+klM1mTKpQTInlC+P?=
 =?us-ascii?Q?n3rsZfb3foHxoe+pbvicMBEqzdQxwFKnkQjgYIer2hzbFfsh7z0Ali690ZTY?=
 =?us-ascii?Q?HdsKRUdY9IzD2lCD621UJD+ikRirXQNTJFp6eHQkfcVlDhM8FlHBXxQgdtv1?=
 =?us-ascii?Q?TEwwzaoxL5NMn5vGu7L2BwPh1nxZW4/H9AuVQGaidLrHtQw7hcYm3ofFyECe?=
 =?us-ascii?Q?j9Sb3BQFM9duts+Juz3XpEDXp2Fw5MvRtxrT0Xu+wYvYtO2N9NAspMIE6Akk?=
 =?us-ascii?Q?B9/9h4W9r1RzLswIF3dMZPEnSgU/QBCmQ5JiSoCVEmKbloyTHLkQCxhgdbVj?=
 =?us-ascii?Q?pQM4n447X4UijiTuYruN09Ago+0qlhNTkAZoKDuKqtB2Fv/3ZXFJAyMSJ+hN?=
 =?us-ascii?Q?RacsxMlEnlsfeAiuSyw58DUwC/rcLtYEOYbLfCUVrvld7O8g/cjoBhbPrWp+?=
 =?us-ascii?Q?HzU8o/KQICb7CJ3HD5dOZkhjOFgl3Niv+mYzjlQtIGJYSMwGChkK0f6xWeHz?=
 =?us-ascii?Q?qEhKMoMC439hBuQ61RHy1v5JJTQijQvIT3etAhfcI+vcFWuNmwHBUuYQO7bQ?=
 =?us-ascii?Q?vNN5CYcnNSTxgFDMo8gHojIrACs/fkFYBpUDvmDQYPzgGR1F9M1H2EUAs8EN?=
 =?us-ascii?Q?bdDcga53/Q8Lcftrj4pejnkcKtSBMf+y5qW1UpHW4KpKH3R8iqVGVVUkD0GL?=
 =?us-ascii?Q?eGvKbkAVLfZ3hSpgCLBbNaqk?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2c6eaaa-7248-4faa-c805-08d9774aab9b
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:24.2025
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mzlhi9JKASSUMIGGSONgcEJ0JfS9Hh+VMU0zKj6MP6XrW0LVeaUoMbqbzhC1GfaUpcJdRU2LCrRc89aDtBpypQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4763
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX7ULP peripheral clock ONLY allow parent/rate to be changed
with clock gated, however, during clock tree initialization, the
peripheral clock could be enabled by bootloader, but the prepare
count in clock tree is still zero, so clock core driver will allow
parent/rate changed even with CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE
set, but the change will fail due to HW NOT allow parent/rate change
with clock enabled. It will cause clock HW status mismatch with
clock tree info and lead to function issue. Below is an example:

usdhc0's pcc clock value is 0xC5000000 during kernel boot up, it
means usdhc0 clock is enabled, its parent is APLL_PFD1. In DT file,
the usdhc0 clock settings are as below:

assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;

when kernel boot up, the clock tree info is as below, but the usdhc0
PCC register is still 0xC5000000, which means its parent is still
from APLL_PFD1, which is incorrect and cause usdhc0 NOT work.

nic1_clk       2        2        0   176000000          0     0  50000
    usdhc0       0        0        0   176000000          0     0  50000

After making sure the peripheral clock is disabled during clock tree
initialization, the usdhc0 is working, and this change is necessary
for all i.MX7ULP peripheral clocks.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
  v3 changes: no
---
 drivers/clk/imx/clk-composite-7ulp.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 50ed383320bf..92908ee4509d 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -8,6 +8,7 @@
 #include <linux/bits.h>
 #include <linux/clk-provider.h>
 #include <linux/err.h>
+#include <linux/io.h>
 #include <linux/slab.h>
 
 #include "../clk-fractional-divider.h"
@@ -73,6 +74,7 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 	struct clk_gate *gate = NULL;
 	struct clk_mux *mux = NULL;
 	struct clk_hw *hw;
+	u32 val;
 
 	if (mux_present) {
 		mux = kzalloc(sizeof(*mux), GFP_KERNEL);
@@ -111,6 +113,18 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		gate_hw = &gate->hw;
 		gate->reg = reg;
 		gate->bit_idx = PCG_CGC_SHIFT;
+		/*
+		 * make sure clock is gated during clock tree initialization,
+		 * the HW ONLY allow clock parent/rate changed with clock gated,
+		 * during clock tree initialization, clocks could be enabled
+		 * by bootloader, so the HW status will mismatch with clock tree
+		 * prepare count, then clock core driver will allow parent/rate
+		 * change since the prepare count is zero, but HW actually
+		 * prevent the parent/rate change due to the clock is enabled.
+		 */
+		val = readl_relaxed(reg);
+		val &= ~(1 << PCG_CGC_SHIFT);
+		writel_relaxed(val, reg);
 	}
 
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
-- 
2.26.2

