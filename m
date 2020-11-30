Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80B792C8369
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:43:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728544AbgK3LnQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:43:16 -0500
Received: from mail-eopbgr40084.outbound.protection.outlook.com ([40.107.4.84]:43512
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726137AbgK3LnP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 06:43:15 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cf/s9sQYDn9l7iczUqKybb9pLOL3p7lHp1ulHzKEzbFRoSo8calQQT83aM7n8Pwp3m4jbeD5IQ5HZbUEYhVFfNMhagFJRNo27ntGEWvvhyUPiL5CgpkgJz66gW2w8jXa0W0ZLiqNspEW0EYGYGA6ePMnz+xEnSh4r4XGKW58X1W7QhccNNcLsbTvxmR+J7nnfoud3UyuWZpMi2GVSHRV/loutzNXvlvel5AaH5eaCeJcI+Zb9OhjR9y7lgQougAZFD6H+CBp1MReixOX7ueOaf46uAuyZ+xuaRd+RhBZRHsLQRINudBWG78YRaRJrl1s9HEBfoGofD2jeEAtBX9zkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ykfL2k9mOycQLZsFj+W7VJqj5rIJRRZpknFW48bZAsc=;
 b=K2RSK7Dxf+06ct8fgI9cXFcUnmF8swjRhlGHwLVhTRA+D2W4hX0hVZiKNKEJaNKT5XDHLWA0gYr7sf0/YwgIniwQ+IC4ZEgJo1IEWCs63ngkPeXwXci9A5lldKSq3UvjYpu/5uCHQtisegd3WG/oBrAyDoeve5QriezR0ZpnBbONK7DHxThd2X7PW05x2R0WJvNiMM6nLCMPWRzPUwu98B/1wXV7ceFoS3ru6HIz/4SG6DlKw2mxNKtgHMAouaPcCrAdIkMdHuQvUTEz72emcP8FXI9Sx4Ak/BLUjlOP30vvDi6F0UN/aIvavKwp6mGRuIOmAbtSTjfdV4moAGRnzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ykfL2k9mOycQLZsFj+W7VJqj5rIJRRZpknFW48bZAsc=;
 b=gw64stBr6IdHn0KhHcw5yxQ49JuL5D9twvwKEYYDTmLScVUZ0+loYa99VwBWcZZJwojPrrECOHFg54Ok9bi7ICBJN06OPErMEmRrk+FL+Nl08trBq/aRjfgCuDcNiT6RQjcaLv2NNvc/HIlUPTiiQqV6n6Mu3VhN0CjYa6YmR4g=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB7PR04MB4106.eurprd04.prod.outlook.com (2603:10a6:5:19::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Mon, 30 Nov
 2020 11:41:51 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Mon, 30 Nov 2020
 11:41:51 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, frank.li@nxp.com
Subject: [PATCH V2 1/2] bindings: perf: imx-ddr: add compatible string
Date:   Mon, 30 Nov 2020 19:42:01 +0800
Message-Id: <20201130114202.26057-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201130114202.26057-1-qiangqing.zhang@nxp.com>
References: <20201130114202.26057-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0099.apcprd06.prod.outlook.com
 (2603:1096:3:14::25) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0099.apcprd06.prod.outlook.com (2603:1096:3:14::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Mon, 30 Nov 2020 11:41:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6bb800fa-a8d3-4753-aa98-08d89524edbd
X-MS-TrafficTypeDiagnostic: DB7PR04MB4106:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB41065302E2AE81AD459BC578E6F50@DB7PR04MB4106.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Pr3gZxNQPPlqr0bR7wz9xmzNH51WGHfN3n8gxpwIo8HA6NIER1oVdTCuqdtp6yW8An/Fhaw5jObiZmWXlg9P1ZevClura48QY3ANgXfcMcwYAiGn10ww6DZ47AFpTnztG2gKxuBsTsouRo8Kc6g77pnLCaxN2Z/XOf0EWyOpjCoXTrz1BKNl8Go5GgTaEyDwUXTV9Z1fViI2zFIyxjfNM59exQ3Pd1UfG1XMTSTZi430jSzSpF2/xKeIsLRAaGPLGGnUm2byB2snJ1ptV8VUINijvb7GnkRIDNekQiUIVfbYZ/ONEHxo6v8pdINWwZOL4+U9Qg/md0xnzis+unWZoYVK7QfW40lGjuee+rolU9OONHDxqDRM/ZQtiw/fTSi
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(6666004)(36756003)(5660300002)(86362001)(6486002)(2616005)(956004)(478600001)(66476007)(316002)(66556008)(66946007)(6512007)(52116002)(8676002)(8936002)(4326008)(4744005)(186003)(6506007)(26005)(1076003)(16526019)(69590400008)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?fL+U0P3+xlZIxqNA39bpMjwN3Il0pfTP81q7Fw4H9hRZw8koEKL9TIKNlGCN?=
 =?us-ascii?Q?G7y0QQeEawayg1fF6SA60y62SP7Mf2MsISC78wGjzSytkPK/jvRHnnqfQFeU?=
 =?us-ascii?Q?VI5BPrXE4yNRwmci/Hx74XWuYo6Lzd8E0ci1z8x1z70Y2wzQObu+JU5T5jxx?=
 =?us-ascii?Q?GYby3E935Id0zuuHKwojubEH2NQQ7tYkptDhCxmWaOZlVwL8OkQF+pwpAmzd?=
 =?us-ascii?Q?qyH8FKmFbXuQBP6j1KjU3404NzTznjW4npsjSapkHCnEz7iOA7VPGVgTeOHx?=
 =?us-ascii?Q?2wvE1E8SJjKxmUbNFR5YQ3h6NpFRGh/ZNtZpaNUGbSpVTMT4+7J07cr7WfVx?=
 =?us-ascii?Q?t6agoinsTwsDN38ZmR/1AzUqaD8bi8KjH8ryqBK74hDlr1ftPcnjdKvOCoOH?=
 =?us-ascii?Q?UCeEPVbytv7RZXLyX07FD8CX4ILtLedngnSplbkYEMmtQZ+rHoR8/Po0c3H/?=
 =?us-ascii?Q?x6VqtOwwS+E/B1Wo1e+OhD43j2V2RWxqX/g356RNROm7Zmd770IY9y1fcZaq?=
 =?us-ascii?Q?/tnzx+m6NXlq59mWfCWMbJL39PO1ZdYxgQcZOrli/H6LakSYDV5a7KTbQP3E?=
 =?us-ascii?Q?QLlP8kGYPvx5fAYSnRXCipLpnipjdnMnfUrMDV8owNb9c0Ur5GigdT5pCLWI?=
 =?us-ascii?Q?W49xzOeLXyWeHv6T307a2OrbH+uED0H3uS5B1sKpfX9iX1g0i4UPBwrd9M12?=
 =?us-ascii?Q?Lp+CbDo6l/N+mz2wDnqO1ryAaNoNZO1BCAkZkGREeGT9sxDGrgWYl1AwidRF?=
 =?us-ascii?Q?BJRuqmZZipaB27p45rz9BTXZGnBbYemBfrZ8PzBQ5hvR0ZMwA9AD1eQxhPCB?=
 =?us-ascii?Q?CivbKFY5qdoGuNUC9KtdcnpQ3Q5Q6mkodroCP+CbaS8BfDEkUsbRdxJubUvW?=
 =?us-ascii?Q?kXj83iYzYj7K6vMJY6rLOPWV7MwTKY7P4O3qDtfk4DvzLZxg9/qyOZo3RFaZ?=
 =?us-ascii?Q?JkNFeX5DhXco46/cLAG81sItHU7jg3efsjUScjAMpycA2x/VLg3j+BQ6r4AU?=
 =?us-ascii?Q?xHYT?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb800fa-a8d3-4753-aa98-08d89524edbd
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2020 11:41:51.6162
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gv63sRqMzy+9YOV3kJzMADmhhaqhEkfjh4X4dulq0Z8JZE3B+StNdQozyBni1AagEOecVxED04CR9+yV/REIUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4106
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add extra compabile string to support driver.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
index 5aad9f4e0b2a..80a92385367e 100644
--- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
@@ -15,6 +15,9 @@ properties:
       - enum:
           - fsl,imx8-ddr-pmu
           - fsl,imx8m-ddr-pmu
+          - fsl,imx8mq-ddr-pmu
+          - fsl,imx8mm-ddr-pmu
+          - fsl,imx8mn-ddr-pmu
           - fsl,imx8mp-ddr-pmu
       - items:
           - enum:
-- 
2.17.1

