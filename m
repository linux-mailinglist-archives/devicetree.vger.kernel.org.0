Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 140FE2C8367
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:43:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727569AbgK3Lmp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:42:45 -0500
Received: from mail-eopbgr130085.outbound.protection.outlook.com ([40.107.13.85]:51917
        "EHLO EUR01-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728544AbgK3Lmp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 06:42:45 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XiifP2oYxmEPW+DKKiyyLUr5aMoP8XntjT5JSFygI4by7tOfNG+pTxU7HrPS7ppwYE7FaMpiGvW3/FA6W4u/Yga+mu4X7A1Ck5Yl8yFLmhjBymVyj4XLiENgzFzdhY0wTqHO/LZiX9Vt7JaifgbRjEmYZNCGPY/kJrHITrcG+CB5clIBud0xsFRA21q+gSVuYf5/2vuYFaSdYfKHy/1JbYmlOuG4kAuiPd2ayJsFZTqoePdsmuVuVdeBK7JrG11iRJ6mE9J0eUxnA5iMB9kpuzOdHHK9fu1C0n1m+VZXrZAGhrBYn+88jb60aZTZnCXhqSgDIkdDHogWw6OyV6DUSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNWAt4lv5rsb3h3aO9/8fBhnh6/PCEvRa2XhD5X6Fro=;
 b=J9KrC1WID69AlWXu++/pS6AQYiRRzKGEfPiSUby158oFjrzyYF++njqaOf8Ojovx2SOOzYmgPsvr1Y4JamICHtVkawTIQPRm8TRuV/zp2STKWABW6Hog0XJAqL4oKk9gSOZOkZBEGcrMwsdMNU+iZ2d3WS9QrdlV2wf2sCU5YJzV8VO9R3Nvla/O8kR7u+/KDQou2tdK5nvvDbnnAHTjbURVJT2rX2TLoaO7sZGB58YB/rq27f/FGIQ1ZEa9BE6YLWUKGkfpfZFoEbpJB/VJA6SywY6dZTYIEy9RwNkxOlB/8WsnQtnwicMlMvnszMd3Ih3EQqqupXTLo/OmBGe5Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNWAt4lv5rsb3h3aO9/8fBhnh6/PCEvRa2XhD5X6Fro=;
 b=RmyNG/uKdQZzijFPb0VPFQqbyUiTAUSYh25O8/a6zgJgUdcUHiqVS/tcET1YsN1wzEfXrjMrFE4TprSkTyU9akIZFs3AmEgaS7u1qLEuF7vj3tmJlZll28jWzcObIG8K0bE75J/YWFXx8uD06eB3u5NAOqwChRB1AY7NyRFxdxI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB6PR0401MB2501.eurprd04.prod.outlook.com (2603:10a6:4:33::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.23; Mon, 30 Nov
 2020 11:41:54 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Mon, 30 Nov 2020
 11:41:54 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, frank.li@nxp.com
Subject: [PATCH V2 2/2] perf/imx_ddr: Add system PMU identifier for userspace
Date:   Mon, 30 Nov 2020 19:42:02 +0800
Message-Id: <20201130114202.26057-3-qiangqing.zhang@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0099.apcprd06.prod.outlook.com (2603:1096:3:14::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Mon, 30 Nov 2020 11:41:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 780f0b57-ee06-4477-cf7f-08d89524ef67
X-MS-TrafficTypeDiagnostic: DB6PR0401MB2501:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0401MB250107C9B3461C45620B0739E6F50@DB6PR0401MB2501.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EVnlQD3uc4eR/Fp3TiXw1J9s7plczzqn4m47WtSobMds7eR5f+kSfYZsrKDu7MJZpfGOXlXXL5k81842uD999ErmVY4CxpU7ZEHMF291teEqtFrozY2ITaNNAZh0Jf8oz8wAQU6cODDoatLAouafj2x57os4V/iKbEVmNcoPhz1mR4Bt6mXcbZiuJDvcM7ETn/xIOdyZpd+chCAm5GpzZq/x5H08fTqHexCHhTti4yF9KvkOqcVfqc1CmRvx1xYV8lpYIF5PUdrmCauab+OEz4PRfm2UUOpOP8QJtUnzzsTg7B5deh4ScKxYtTuUKZ0dD0Z5PRKyzdng1+BSO5OpsdBzp27NXn1M7V713jkDXYW702WM9bBuypTI+l519DgZ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(136003)(366004)(346002)(39860400002)(478600001)(66556008)(36756003)(1076003)(66476007)(69590400008)(186003)(2616005)(16526019)(8676002)(66946007)(8936002)(956004)(5660300002)(52116002)(6666004)(316002)(4326008)(6512007)(6486002)(86362001)(6506007)(2906002)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?EBerqfXX7EOO2nbVyak6XUYjfbvDLi4hQiCx1NYNrrOtkh039aP+D1SY3RBO?=
 =?us-ascii?Q?LBkLpnYwSTAFjcR9n5kB1OC0w5DcGXnWPm1NkErpkjqSFO3Pg89Bfyerh8FO?=
 =?us-ascii?Q?3M6Kho2l5fH02+d5SxdEPymBfTP6GT1f0EuqnUiuJNq6mZT7kv2TcMe3DkVz?=
 =?us-ascii?Q?C99w1gMOnF2WZ8OroyGmshJfMGnj0YdbJ28KNCr6TDZOQfxX1i4ma/60NZVv?=
 =?us-ascii?Q?VfSt8z6VTDlkSaSQxWikIg4ph87u5FnEx9SR0S+04rNpZHf1DLMdBS/tJPIg?=
 =?us-ascii?Q?oW2xKvf9IA+RgA1Z6bhZuGM1nF5eiXPWv6KngY64h2cYOcKqQhLmYqxkWcK+?=
 =?us-ascii?Q?lmbGB5qdkRbQOI+mkRmSXQnljYrEA2tOuvjFvV3IvQYtXcMVZHKVuT6k4wWi?=
 =?us-ascii?Q?NPck0TB/NYHQ8tB0KYtCxo8nityTJ/6N+Ekovv6i56dTtgSdZ96rAgGu3LVT?=
 =?us-ascii?Q?cvpFo60Rl2NveHAc77vPSaN6aDlet55jfBi6m+wczxKWuf4AwmJ7bIe8WgRp?=
 =?us-ascii?Q?ggaY4CCTtJNh94zfswhYIwAfOfCIwyi19MO26uWUR+k8oVrlhzSNytvU3Ekm?=
 =?us-ascii?Q?WkLm05hXKAMcAA9mCoztIg45jKsb5TxAKuOBIGRtwsOKbDGiDSpUYnF33UIW?=
 =?us-ascii?Q?gcfkZp7fdAZU3SVG5DDQnFNhkb8K8Kb/Q0Cv20GSop0c1NM8t8LqJDltdNSa?=
 =?us-ascii?Q?Y0UOuIciPEvLYMhFtvFlvROuDhgVspL4eNpWG3TunPyTr6zlLfmvKt9NItx+?=
 =?us-ascii?Q?yu+3QCtI/SXP5eDVLEJl+CfomM7cnbLTkxECLCvV4gxOU4PhgKtx64HovwpT?=
 =?us-ascii?Q?cKSD2m01B/AyIlIHuI42pM4/5lwJ1jruLJVaN9c/A3Rh6eCA7cDUrQuOZflO?=
 =?us-ascii?Q?W1LRRMpRZLMIY31HD9r3E0aoDvtoSvC0UcYl/v7L2HKZ9x32DfSCjHU6nSoa?=
 =?us-ascii?Q?ip5PIB56DZMI4vUR/ONulEtyjGOUSz5b633By7EvAPq0B8eAyTfiEsefeomr?=
 =?us-ascii?Q?1rEc?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 780f0b57-ee06-4477-cf7f-08d89524ef67
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2020 11:41:54.3094
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yd60Hvl3bHPBw4ZHw3pPobyYi1sU/aJ21bEdziHxHCvpqo8PcA7Uoi/FiHuwzJTbcA1bI27gQ/XcB2IW+CK1WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2501
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DDR Perf for i.MX8 is a system PMU whose AXI ID would different from
SoC to SoC. Need expose system PMU identifier for userspace which refer
to /sys/bus/event_source/devices/<PMU DEVICE>/identifier.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 55 ++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 4f063fb1c6b4..a11bfd8a0823 100644
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
@@ -84,6 +104,40 @@ struct ddr_pmu {
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
+static umode_t ddr_perf_identifier_attr_visible(struct kobject *kobj,
+						struct attribute *attr,
+						int n)
+{
+	struct device *dev = kobj_to_dev(kobj);
+	struct ddr_pmu *pmu = dev_get_drvdata(dev);
+
+	if (!pmu->devtype_data->identifier)
+		return 0;
+	return attr->mode;
+};
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
+	.is_visible = ddr_perf_identifier_attr_visible,
+};
+
 enum ddr_perf_filter_capabilities {
 	PERF_CAP_AXI_ID_FILTER = 0,
 	PERF_CAP_AXI_ID_FILTER_ENHANCED,
@@ -237,6 +291,7 @@ static const struct attribute_group *attr_groups[] = {
 	&ddr_perf_format_attr_group,
 	&ddr_perf_cpumask_attr_group,
 	&ddr_perf_filter_cap_attr_group,
+	&ddr_perf_identifier_attr_group,
 	NULL,
 };
 
-- 
2.17.1

