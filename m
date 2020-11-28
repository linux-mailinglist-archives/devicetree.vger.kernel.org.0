Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8E02C7561
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:24:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727348AbgK1VtW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:22 -0500
Received: from mail-eopbgr00062.outbound.protection.outlook.com ([40.107.0.62]:25830
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1732373AbgK1SHm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:07:42 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b4WnCHgUc0enh7cA1Gc6j8nOptKrCmHN3hgInc8vVHhaUwAlHXc4rGCvmUqQkeBK70lOColDAkvft3f5PYKMjKSatb8znQCU3DHJ6eKhqczdiPGPGQRqGr1/1SobtLeUUhHaGTtt5CVtUTEKF/w2kyxyM0nSn8hLukXnLlyY+b3WfTtydapIdkm88y9Hfp5+DRBdDksb7Y4BLamoT/l+6qH8Km2Jsn/xjWBNIlphcrxcGEL9VMMLPfW6+wiWIt6sbgYURqR7lZaIXTmFwBqIoMHimLpQtErcm7Jn2wRxOYavUqa78Yz6pTl7dw14WE0oyerH4s33Yz2Aanc6C7phtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lNfgK7RY5oo+ax9yb5Cv3s8MxoAu0qXyoi/4z6g6ZzI=;
 b=GaJ9SkRlztghIcAhwIbg+Tz2fwCL1ARVAwCjh0tlYSIfOk6xOHGbe6PdswtjLYTq1JnMXI9wx91b1CUkhc6N0GvV1iDXNV6S5xZIYiw1MEi0T9UDQWCBzbaO//R83Pf7q2hPoDm4GuJ4+VODm5LQ5U6dNWf0JrcTYV6s4P1Z8bH/XqafV6SetbV5jap74kfR0H2CRGCp4jryPEuuhR6ah6VZgyUBclj0QgKBq6MC2UJjnOT3/8iQf9gcLcldOOKgdNybhLvu6RL3ELukopPs8pg3twLJNTVhRIx0x1IRayWNEgOen1t9SHRbAhbZB/pKXEyEx0va/5ihIS8wr5Op6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lNfgK7RY5oo+ax9yb5Cv3s8MxoAu0qXyoi/4z6g6ZzI=;
 b=rPIfIa2LEVRrzoxsDFtGOuPCMvuEqxC6fLJCU6gfQwzel8SkHJPyYYYrV2rJJSx1v4KPLe2AAvmZd8XZbSf9bSMTVIbfwT9uWbS4vVgLSQBq9a7jxVnh39P2EraFVQ6q6xvD/7O53a5ee6q5thehO4xKgTH6/1JZXyNpMZex04g=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:31:00 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:31:00 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, LnxRevLi@nxp.com, frank.li@nxp.com
Subject: [PATCH 2/2] perf/imx_ddr: Add system PMU identifier for userspace
Date:   Sat, 28 Nov 2020 13:30:52 +0800
Message-Id: <20201128053052.7880-3-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201128053052.7880-1-qiangqing.zhang@nxp.com>
References: <20201128053052.7880-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0401CA0016.apcprd04.prod.outlook.com
 (2603:1096:3:1::26) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0401CA0016.apcprd04.prod.outlook.com (2603:1096:3:1::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Sat, 28 Nov 2020 05:30:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 058a531d-ffe0-4d67-cb92-08d8935eca26
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB3PR0402MB370780471A6D2D68680098F2E6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ko2p8okrsoY7Vj4gJpwlXXg4lIyXwkir+VVcA5djJ0KciqihygOgAoSsTCXU3Zp9zVxwZ9OVgkIA2ETFv/s1zciP6CIAaa78lkh0MGG25FGWSSA3rSjCZ0wa7R0HkIyUgn7IP6U9RlqnamGrR6ezb2W8yf+XlGJqX0zjeshAKZdmOQup7nAIgmiyfqWzM71/LCa1HPAoxpKyHteyNu0vgB4S7grAaGCpEfrsmMFZVgcKXNcTaZ7atKYLTRc8p1ObDDtyB0gVB7D1X2wmvpJ4PaSg/nyc0YYudGbtCNLkuLwI04r+Cb1xOD5kjFNFElrS9u8hhMSd5grD6UatrhV6sAsg7rcMK4UjzhLbLbGJEPKeMarC2KLn/Zk4/Ox+fNbR
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(136003)(376002)(346002)(396003)(2906002)(8676002)(52116002)(6486002)(5660300002)(66946007)(6506007)(956004)(6512007)(316002)(66476007)(2616005)(66556008)(8936002)(1076003)(26005)(6666004)(86362001)(16526019)(36756003)(186003)(478600001)(69590400008)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?4j+cxu5gwdUhaXo5fi+bV8puK4Z9zvNdXx/l9fWyWhSqzk3GYbdKRFDHXjks?=
 =?us-ascii?Q?enr8mjEh6gNkmImiwduRz5wwntRFFZKIsgJjsFqucQKHLC3ndh+9WmDjVDDg?=
 =?us-ascii?Q?bFfkGNr/CJXqNUZ8P9JukIFg0LrSJlr8HWnSfqSyKgyG9Qfw8PvHhsfiwkQX?=
 =?us-ascii?Q?Rv7DyN78YC25yA9tkMEUj1DKq8zGlaLfQWEkWQLprIsPHPZDdpM/AEc2JE+W?=
 =?us-ascii?Q?dN3jhTzjM9lPXtJYxkvFJL2Ax1ep1dfrNwlIWrX7ATNiyDs6GjCWbJEkDjXE?=
 =?us-ascii?Q?kWMRHfnbGU5itiSZ8fcqMwFtq+PgDJGemNiKVNTqPoSvQKRpYB1IwegbZjQU?=
 =?us-ascii?Q?j44yL0tuM5D2GHAkJYPVGUTeQerl8rOdSD2veZvvKh+XuAv2PZ7x/qPhKghF?=
 =?us-ascii?Q?gHtTFDvJESH0AT8BuE+IODdmaG17Y77lfFiEwlZlmyS2kRshODTLWVVqiw53?=
 =?us-ascii?Q?EyMDyB9J4reo0Pzv184Xj1JhnaWyY/4ccQlgJIfynEOk7Cu8oOSKDthUSYj4?=
 =?us-ascii?Q?VdLplxkVMWKmLwDXSAzxOh7i8g/TC2mBHu0IiLDqV+xuqk+4McPE6ctNbg/r?=
 =?us-ascii?Q?2tCTYaQ7e4ZzxhUpoG3ie3l/I5opCmdcO5kfDilZ3k4X7d/HGpsmsgSQe4FJ?=
 =?us-ascii?Q?Si5wbtTxCMsaKF6QYqB+zwDLZvNvp010bQDENW5LcVMr56pRDIA3p4V/HdZj?=
 =?us-ascii?Q?vjWA4xP713jG4JgensfgcG6zmUoQCDbggKsUciWixJ8w44B5MdjqT7Ca5C+r?=
 =?us-ascii?Q?62txSAADQe9v1B3HUqgdNPDjIGWisZx2R5CI8O86rs5RxE8k1gyFI0dIhW65?=
 =?us-ascii?Q?c40tqkoT9X0F36sZVlWi5KyetEvxytK6oc8LJkvkrbIXpQDw92UykWnGFJo1?=
 =?us-ascii?Q?U3wtyC/Dd7EFHfwFUR9Y5gNJfPjBQR2CxhDh1uNw+WlXvcIQNeJEEXR20xY9?=
 =?us-ascii?Q?x05hGBNO9reu6UjKISzR6a1Y/nUBR8bguHSSR1XAd0N/Gw3pnPRdJOjXydz9?=
 =?us-ascii?Q?jUdy?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 058a531d-ffe0-4d67-cb92-08d8935eca26
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2020 05:31:00.3173
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zh9fQYR84zBEGdib0JVQ0qW8v3/MYJxM2jWReUhDlw7pRcmWOOuAKdWpLm2xPEtc7M9TI7H144oeqKpbMVA/8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3707
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DDR Perf for i.MX8 is a system PMU whose AXI ID would different from
SoC to SoC. Need expose system PMU identifier for userspace which refer
to /sys/bus/event_source/devices/<PMU DEVICE>/identifier.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 4f063fb1c6b4..3517d2fb1469 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -50,6 +50,7 @@ static DEFINE_IDA(ddr_ida);
 
 struct fsl_ddr_devtype_data {
 	unsigned int quirks;    /* quirks needed for different DDR Perf core */
+	const char *identifier;	/* system PMU identifier for userspace */
 };
 
 static const struct fsl_ddr_devtype_data imx8_devtype_data;
@@ -58,13 +59,32 @@ static const struct fsl_ddr_devtype_data imx8m_devtype_data = {
 	.quirks = DDR_CAP_AXI_ID_FILTER,
 };
 
+static const struct fsl_ddr_devtype_data imx8mq_devtype_data = {
+	.quirks = DDR_CAP_AXI_ID_FILTER,
+	.identifier = "i.MX8MQ",
+};
+
+static const struct fsl_ddr_devtype_data imx8mm_devtype_data = {
+	.quirks = DDR_CAP_AXI_ID_FILTER,
+	.identifier = "i.MX8MM",
+};
+
+static const struct fsl_ddr_devtype_data imx8mn_devtype_data = {
+	.quirks = DDR_CAP_AXI_ID_FILTER,
+	.identifier = "i.MX8MN",
+};
+
 static const struct fsl_ddr_devtype_data imx8mp_devtype_data = {
 	.quirks = DDR_CAP_AXI_ID_FILTER_ENHANCED,
+	.identifier = "i.MX8MP",
 };
 
 static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
 	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
 	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
+	{ .compatible = "fsl,imx8mq-ddr-pmu", .data = &imx8mq_devtype_data},
+	{ .compatible = "fsl,imx8mm-ddr-pmu", .data = &imx8mm_devtype_data},
+	{ .compatible = "fsl,imx8mn-ddr-pmu", .data = &imx8mn_devtype_data},
 	{ .compatible = "fsl,imx8mp-ddr-pmu", .data = &imx8mp_devtype_data},
 	{ /* sentinel */ }
 };
@@ -84,6 +104,27 @@ struct ddr_pmu {
 	int id;
 };
 
+static ssize_t ddr_perf_identifier_show(struct device *dev,
+					struct device_attribute *attr,
+					char *page)
+{
+	struct ddr_pmu *pmu = dev_get_drvdata(dev);
+
+	return sprintf(page, "%s\n", pmu->devtype_data->identifier);
+}
+
+static struct device_attribute ddr_perf_identifier_attr =
+	__ATTR(identifier, 0444, ddr_perf_identifier_show, NULL);
+
+static struct attribute *ddr_perf_identifier_attrs[] = {
+	&ddr_perf_identifier_attr.attr,
+	NULL,
+};
+
+static struct attribute_group ddr_perf_identifier_attr_group = {
+	.attrs = ddr_perf_identifier_attrs,
+};
+
 enum ddr_perf_filter_capabilities {
 	PERF_CAP_AXI_ID_FILTER = 0,
 	PERF_CAP_AXI_ID_FILTER_ENHANCED,
@@ -237,6 +278,7 @@ static const struct attribute_group *attr_groups[] = {
 	&ddr_perf_format_attr_group,
 	&ddr_perf_cpumask_attr_group,
 	&ddr_perf_filter_cap_attr_group,
+	&ddr_perf_identifier_attr_group,
 	NULL,
 };
 
-- 
2.17.1

