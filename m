Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E28433E5358
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:18:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237032AbhHJGS2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:28 -0400
Received: from mail-eopbgr150088.outbound.protection.outlook.com ([40.107.15.88]:2213
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S237003AbhHJGS2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:28 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ixec6GZGbe6LpIcogJ0VWv0a5vZdtkEOPq1E0hTwiVZ5UNMlYDnFAdxLGVrocw9si+Wv4MP3/8lDtDlzAczeUm4U7cs/JTfWdChjIImAojn1yJA/tmrCaK5KzDIv8ZM1wLxN2DxIpFzosGCPbqjbWy1y11yzad7YBh9aybMhwQ2IF0VnKOh9fpELRGjvcNcflG3qIyJa64VXFheGI+50pAa71cGy+60eP3YyeBHlEBt3Bn8HWr1kGCZZUEDt7w45oDOFDPBael7tH1lJuDzm2M4CzvWJI6hEdZqgndYgOKdqHyqUqIBq9biWbddZLHfgRy37sffcM0UsW6i0saGbdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1wHuIwQmr97sCJMqXS5+M92wQJ6CMVFuaMVGOrbXZpo=;
 b=CsUCdnxrD+XzWFI36TNcEOQ4MDPqKSl/9PYEofpNm/nXwTGFn9G2eZH7grcyT6GNDDdAO8sCaO0PDcfkF5eeiJk1kIZupmQuJOiqcO6Zu7WavBnwVD3PXThNqRcrOj+92MHhfsjKo7NCSzl+tI4yPk96ciwxnW1vJyDfW0cvPhg0hsoW25M8NA/6jt6gmRlWuI83G5MP6sQ6OTZwtHKVNvxUqzzatuT1SCOkzDKTGtBrd4TGgn8Z6Ed32RTTfWn5J3j+v4/D8UPnAXp8UTNVv5AKnYnKWXVEKrd+aBqI1252yb/sKFpVysfVh9r1zUn6851Gl9FKbekThiXUvILX0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1wHuIwQmr97sCJMqXS5+M92wQJ6CMVFuaMVGOrbXZpo=;
 b=cCC5z9C9vd9dogH2UUr9Bt6pf8VvJsWweg5q7ckwalrD+PvsczQyEbbp+zqEV4Vz3yQjueBBnBopZhnorfIveqXVz+dFlgLGDCbY4DTA2lo+j2XbS20NdytX4tYvn9L+3mCb+mSs7OCG/6vdt0pmzzHIA1zEGyZ0D+NmjjyckPc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7563.eurprd04.prod.outlook.com (2603:10a6:10:206::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 06:18:05 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:18:05 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 6/9] clk: imx: disable the pfd when set pfdv2 clock rate
Date:   Tue, 10 Aug 2021 14:28:17 +0800
Message-Id: <20210810062820.1062884-7-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210810062820.1062884-1-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:18:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d6b7fd8e-f11d-4c9f-5c33-08d95bc69d4e
X-MS-TrafficTypeDiagnostic: DBBPR04MB7563:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7563DE9072D1C607DEC70FBE87F79@DBBPR04MB7563.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PSJH2sojRkpikBWWAKToHC+sH4rgpCVEmhom+cnScDxEfhJlJQ6nrVfuVtOB8E2MVI4Nju0lUZJhQH6vbvCGz4KJulc1iSWH1sD0+cUoNRstz+0wgib/5ogFlaZFA4KyEA0606RUDEc1/FxxVBn7uIydS3iqFzfDXzMKSMVp4qjqaF3hzQqXCJ6zSRH7N72fZIEqWP6JL1MQwlebX/ey4031JSSgSsdIPGlOIoI/+z7sklMzZAjxwahbHjqmjgHzvApUIUT/JEC2uq76ZGsawkiUPQ0/gAuEXQv0SxfBqTOIHGL2j7wfwLFrXBt2QBHRePRYawf8NE+bF8hBlnD8arnSzlyUdh4x/gLJ9j7Fiukz0owNb9/JNi29Ku9CEYdMRYePmibh0wMzXV4LWHDLwBhbVQC4J+4FOTsLb7ASWr5c75C8XyFobNWzCoI7bwBGVZPA1Tke85DelGqWR62b2YaiftHr+vN8fC4qCoo+0DC3MU74qfKlnZgrmsXEksHUBP+RTzGnKMMuRxecujzJbJb3XLQLJPtscHFWjek0jqu690373hIm6F/mc786YNR7STWOgN8DGtswdPNLeP1mDd7p2Lkp3W1VLoJ9KoyVqfiYtfg+LouFt3JMxdh63lr1lgRrM48QZjWCX6XXiCFOnpLdPbTcd0oHCLRMk4FP5r99Ew66QMVqp7a/M6RVDZhv2zoOELT5/Mws/mN3z/IDulFKUdy1RTAbRng6Sf0nL4E=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(478600001)(66946007)(2906002)(52116002)(38100700002)(38350700002)(66556008)(66476007)(2616005)(956004)(4326008)(8676002)(36756003)(6486002)(1076003)(6506007)(6666004)(26005)(6512007)(8936002)(86362001)(83380400001)(316002)(5660300002)(186003)(21314003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bu5Rwp6jfgzyfycXiudH5dPGDS9EJgN0Z6kTB2un0/5Kj44kX/DANON1R2x3?=
 =?us-ascii?Q?1FPnGANROC2ZZWisJqA2nEW+a+LQnJjugQeZinhZ57Vrtthw2+Umd+/Tc//l?=
 =?us-ascii?Q?DKurj6oMCs5QoheLcFGy5m9w9zdD53nOA4KEEEaGeAhqV6kWzFIYKh/EfECu?=
 =?us-ascii?Q?GhgepkfEtEUkqk4icI5B/fc9+T52WM7OME7nHxdFIvRCSDzuii+nFVlBpGsU?=
 =?us-ascii?Q?lhyPYp1dZ/GLTruP4HZS2v3e/3j4QMHuWeLEbEpm9XgwQfbgLU1MX20kzlGE?=
 =?us-ascii?Q?7sLbgkd3C1w5jcEdWiD46EgLCFdA1iNQrI6YE346QafatgWi0M/mKLeO8xoC?=
 =?us-ascii?Q?SKKOeCTL89f3vk43vjQfDKBjmfzSEzUxLGas/5rI6WYOi72m2K9l5JQjkLTY?=
 =?us-ascii?Q?r/62j2r3pbTYF8rEiOctp/ix+FSFyEJSsv9HPcRGlHeR0pTS15TpbhAsmD+b?=
 =?us-ascii?Q?soX3ARk7/a5HjTFDdigbYjxmbU+2jTjIu5ctiEuUbGy+v5gHDYBP4VPA8NMk?=
 =?us-ascii?Q?UfcWMRL181Ecaz5F6aRvK6l/yezjdtzptUk+jCwQdRWpjRU6yZxAzfsBX3Lf?=
 =?us-ascii?Q?LyBuZ+HEAiWBub/9z4224eRu+zRkxSXuxnYtXADUp/xroieENlvrk5JxEG5D?=
 =?us-ascii?Q?+xiXrjbxcMyCDLo10gGzGV2/mlPhaAEgSjHV8piP+JHN7RNaKZ/wW9+svUl1?=
 =?us-ascii?Q?wVjipw2ojsLtKmrpfTzCebic2WkATanQF0A/xBVROYkNBM4eOwBCp/0tTKWO?=
 =?us-ascii?Q?oxbo4XMn1uAeObco6FyF7pCoGlVdyfRtr2Juge9BEgCnmdSoYj6ZwKI8j1bT?=
 =?us-ascii?Q?Y2iTRVyx9ppF3nlhmrfTHDfr7c9dwqkJWGUYOLvvqsm7Gv6+Kl/bTdZ8q7r+?=
 =?us-ascii?Q?9En2hEqFElyRbH0g7jeEVQguvhfmbqdyilZ66uzlkfAKyiAdcN5583Z9DXBG?=
 =?us-ascii?Q?1l1DKW/ckoNLE/sJcHc2nq7r9o1mTagWotH6nGGuHwjpk7B8xwQ3Qua4U8Lb?=
 =?us-ascii?Q?hULD+beI+OTDCxuyrHdTLXJodmciwQWTnIaW98gF3n99xTw708hzXS3KBKFy?=
 =?us-ascii?Q?w6dPJeilkaoOlrPzvSRgPfx+CDBbYwLirkah8xv0DrmYwczVneG+kmItpERx?=
 =?us-ascii?Q?fnnSKpkLlkKdouxVU2fBd++TyJI2fPPkJ7618vGY9msP1FHB6hqMdQZdYE2v?=
 =?us-ascii?Q?yKAfoXz7Z8rPTMx/i0AQTWW0HPmDt0JuUO2v6XZgXmsfspHL/X6RtmW3SWuS?=
 =?us-ascii?Q?ELRUAR0VATm/xjFxDqzH2OOJcjcTIhx98DR2q4Q/wZhMN9Lyl8Qvt3VolYfX?=
 =?us-ascii?Q?YRVij/oYKn6xax6opTXENgWt?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6b7fd8e-f11d-4c9f-5c33-08d95bc69d4e
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:18:05.2716
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YuGn3jWzK17cUVdNcQYsXI1nas/5+BRfKshIXkHT8D811aFPizdOL7peGWHZwASNjTmSIJRnaxOzj8QbR3kllA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7563
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
  v2 changs: no
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

