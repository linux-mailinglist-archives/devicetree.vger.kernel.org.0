Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17E6D2C7553
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:24:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732587AbgK1VtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:24 -0500
Received: from mail-eopbgr00054.outbound.protection.outlook.com ([40.107.0.54]:33507
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1732767AbgK1SJF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:09:05 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j8SU/iKtBHNuUQdFAtV3n87WAGj2zuzQkFP/Vu3MS98b8QMmBHizFBVyWgW8aDtxMhjgDY4WOl887+p4ssGzElQuSu6dgYyxcPW/DPAi//szJjeKqKKAziG9kEv5Yq5yiAMfPnUqKNRlvBEHuXwNZln/WwP+7WIbCeFguQwtBn4sX3LKtwlwqAG9PceGHWvjHcyOiHFDZ2T6O+8Sglota0B0fiFqML2+lHib+43bWiZxuNxuohH2kqRj6AX9BQCUOaM5BMRg8n4KAcoMDvgleBIRF2qRtExzRgWVbm2350T/KFWs7psRIYsMyQWpk3KMiy74HvuTZimb25uq3Xws/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lNfgK7RY5oo+ax9yb5Cv3s8MxoAu0qXyoi/4z6g6ZzI=;
 b=go6j1gwDw+2USC3F84lfZVhD/p2SlYV3o6n7uumDaJ9imDz861cknDwBUMAGmjUGlwqvHgES5isYCjXXktRJm0pHCwGRR+0VmmBOWEhzq8j3LqkhLnla3kl61GPffcae3an8XI32eMzSI6gmJktEPjA0AbHKpxbJ8huEU1XqMCPZAUjjriDa+MUNqUq8alSwhplIA7yK2oFnoHXs/MkjgpGQ7+/yAEZtT9rn0iTYUhCcvDzdlQPzb5jo0zY2wQ7YJuuCmu3PqsfYWBPTzoAjzT0VXft/CSsyaVLfvUQpReOhoMRuHqk7rMCc/MWoQ4Ei6dJ1IeKCPNEI2GOKEznoPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lNfgK7RY5oo+ax9yb5Cv3s8MxoAu0qXyoi/4z6g6ZzI=;
 b=rVuSAWKNHALRk2UkeLlj+ro0vnOUIpRM/zbxkXLE4MaWCaRluHqLoMpsOy/CjG6dPVQg5L3bfGIvDynT5eVb0Y0s+FzyE4B3w60NCjzAW428PJszOmak6/pAOHXSdaCyxB8pkYVnIpEVdRzO4Kj6geYY1sl1T9EkwNXmvf1S/E0=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:36:13 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:36:13 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, frank.li@nxp.com
Subject: [PATCH 2/2] perf/imx_ddr: Add system PMU identifier for userspace
Date:   Sat, 28 Nov 2020 13:36:27 +0800
Message-Id: <20201128053627.7971-3-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201128053627.7971-1-qiangqing.zhang@nxp.com>
References: <20201128053627.7971-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0093.apcprd06.prod.outlook.com
 (2603:1096:3:14::19) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0093.apcprd06.prod.outlook.com (2603:1096:3:14::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Sat, 28 Nov 2020 05:36:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c6d3a2d6-fb07-4aa6-9cbc-08d8935f84bf
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB3PR0402MB3707084F48167AFC2CF2B5D3E6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c7Paj2/RcJ4og4m3feoN/O3KUMsZJyzkXcik0VTDsHDsX/0VzwC1KkiwW4f5SwBz9IpOSFHxj3GnkD5dKgFI4Zsf3MGciHEbi55FvVJo/Vivc8gYKlbky1WKzA7MKVabUyhCv2HZT52pr2YN7WRHoxxpzDkyEu68aEnfD96xvWLsghPy7Jwcjh0y73bmJZofHPr+fxsAVQ7GOvUJfUdscSaQ1dlhi6sEvkINUntN/0PZNnKAhNdS+byRk5wl8pRhHe5lJX/UTEG0PBmXJnLLkPJFSfMt7HLUaAL7+ffQxxTzCekOSRVxt+nNLxAIHFMzR5GkU7kn6/51uEwo1vjm5Ajrrow7hCZt2Q6Ub+RDZhniuXUdG7ah3bWNkpsyJONg
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(86362001)(1076003)(6666004)(26005)(69590400008)(4326008)(36756003)(16526019)(478600001)(186003)(52116002)(6486002)(5660300002)(2906002)(8676002)(2616005)(66556008)(66476007)(8936002)(66946007)(6512007)(316002)(956004)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?aFNFmjKw9VQqWkZEbhrRnsFBEru6L1g2mLgObUALI1ejQd4B1EU/cVUevQc9?=
 =?us-ascii?Q?JPSSNvoXXmjTnYfT/LG0FzvG2TEIK1hWaa/zNpU6v3e5yGx+sR2kk9J02Zgu?=
 =?us-ascii?Q?zhyNL2Wkpm/psbuUseawso5SiDwh3qaQlGiuKYmyvYPYzTmdDQipnvgCSDud?=
 =?us-ascii?Q?EZ5Iu0zpjG3325L4w5kAtnkY7ZLHnOTzXHidVbtcz4Xg/402wLduc8VKbgMT?=
 =?us-ascii?Q?Doh7wXFXFm+ooICdMf+sEAqnAJ6pNKYEqWilyuEu9e6su1tiHRzXPEmhoiZi?=
 =?us-ascii?Q?N+qEwmbE/zwb2yLDPC6FMSYkKo4N+nKRPtNWRS1jlN2ryL+fLkfSXj374s0E?=
 =?us-ascii?Q?VKgJxS9A/Adda0yet/7sMT1DAMJslzBQ2nwyjS/KGQz6+j9xwwv3gF3SF5A+?=
 =?us-ascii?Q?2ny/IDZemPMJselKlboqqKkf6aQdeaeW5nd9BlX9iwS9Zj5Smv8sSjZgg1+6?=
 =?us-ascii?Q?zuJ2CWd7PrWDeM04EVJiRSYEwnuwYdeaMMh8ZbT7y+ybozzPPj78YcjFBrKm?=
 =?us-ascii?Q?ZNPlE56q2hZq1eOTYbdxqSaspIh1M++4lIm3e5dyZwro6Z9rRC1DKE6eSNEE?=
 =?us-ascii?Q?PJscg6puhJLb9O0v+56Ge/dm9PmFIhtVRSCMs6hCbeMfJqPndaS/gIhMs0AK?=
 =?us-ascii?Q?u5E+JKP74nxl31lSZuqXMVgoEuiGFAem/wZ1A/7wyQujdi5CWu12mf8snojb?=
 =?us-ascii?Q?O9PBE7vQn4Bzn7CI9pSSpsazFKm5l59S+A3NMHsGwnZ52uoSL4p47/T81vBd?=
 =?us-ascii?Q?OggIY2Rqo/tVGk/uH5gyS02N54Co603TxKN6PxfH7JFFp+tT570RW0618N9z?=
 =?us-ascii?Q?SMTx3CqaLiYJUYcUhWGKrG03+PR/lhKCaqhzr3y+Ow5BVGSIkhW5MvtjCBIG?=
 =?us-ascii?Q?7N5mcf+/LAHDu5pnvGHvgLzmBv4+iHrKSAN6c4FBzQGuecc9QrqDKWPTRwh1?=
 =?us-ascii?Q?LP0MTfDpznyUWz8KyvG84qyEN6uw1CKnr1hx9CGxTkxe9oavo2cSTvvUaayZ?=
 =?us-ascii?Q?xr05?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6d3a2d6-fb07-4aa6-9cbc-08d8935f84bf
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2020 05:36:13.3382
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RRdJu3S1Fcf59JD96ICca32aquO79yOFTX8Ny7JhjPU55s+Nhz+tSsTDlt2uuEFDKLcvlWaevbyoO0sEw75sPA==
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

