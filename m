Return-Path: <devicetree+bounces-181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2407A0166
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED47D1C20B8E
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785CA1F18D;
	Thu, 14 Sep 2023 10:16:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663591D524
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 10:16:08 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2089.outbound.protection.outlook.com [40.107.21.89])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99E951BF0
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:16:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CINsKfM/MneZ+GrOF0NMMH/7C/yjLmbO3vUN9fSL8LQ0c7jCY6/eNO7iFME5xR2neajIcaKqRkSEmkcbeBixNGf8Qzie/+UsOhaK3GefpmlYWCLEzJ0K4SufZWOCH+SGJmWst2LyzJ2uDX0pdvTcOgjLVw6qUvt0UfoVf2tQ7sTTlGRx2nDi+/kmBWuNF39GtWTz1P+HbI38SglE9jHz4yMr+CpXh8KArienEHemLd7NUVpwHvp88r1T5qXPzJpQYtAuosvMDzqfthx1eHLUFBrb2T7fSfIw7H/s+WtuHtr3RFNhz1xF9dIisYr7FJ/ZiBQSLNMzAhUcEPt8yI2dzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4JzJS96XWCYONka3qB8XuWxgt4RU82gDx4+KS3A3pmE=;
 b=dBOPCcfgbUvCrIHxfsYtcTxTrigZ1SplAR69Sn4fprDKUKCrE/pTTJ24xheAm5bTVcjfimpXGjhd+553EH01wcMQVfoizfvoLfGG9Tc5ewRXtNwE8ZLRFt9AVIGGoFeAQejVaJac5ecScBrcC9DSRDdU9q7K5RLwZCDuObxLrA3Vd18NUGJb3ecTpymDuPSkV3BxTrNeww72rzjN7HrXXlIgD5dvYTUZgm6f1CaC153owfgwR+AkrDz3zc14L6kcLofIQspcE9/IME3LuS9zGIYALlsWKhzJSImNlv/4dwlAkdmqcaa+NmqVe/3jc8G2//RwaPg4nLiv0zBOqNxdHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4JzJS96XWCYONka3qB8XuWxgt4RU82gDx4+KS3A3pmE=;
 b=TUSgcVVuoeg+8yhlBdLXImkdbUVytP8sd5uWlKiETGoM0HJDYTs7HJnFiNCvI/nsDdZY4QPH9NO/LVP2fS9/vm73zBbBqfHgd6OF4DCyHaipxAHB1LXPSnx6fjkxLvUSekADBK0LtyNLjOgCsPscOEFeDZwqZz+ZkWFZTw1crBc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 PR3PR04MB7337.eurprd04.prod.outlook.com (2603:10a6:102:81::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.20; Thu, 14 Sep 2023 10:16:03 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923%7]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 10:16:03 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: will@kernel.org,
	mark.rutland@arm.com,
	robh+dt@kernel.org,
	shawnguo@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	ye.li@nxp.com
Subject: [PATCH 1/2] perf: imx9_ddr_perf: resolve resource map conflict
Date: Thu, 14 Sep 2023 18:20:37 +0800
Message-Id: <20230914102038.2944844-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0022.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::14) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|PR3PR04MB7337:EE_
X-MS-Office365-Filtering-Correlation-Id: f9e68d14-1ead-436a-4d56-08dbb50b99b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	UrLh4Gjsx4CETqY78DwEqToy8yimMg3HCiTQLSFsu6pErMcXyJvAARJpFUQgg0g4VbVgNZyq8/voRMCdpssZgUX+AizXukCCxl9F2t/QbQwq/WFY3PI3I6vrDHPh2Wz0Tr0r3MNSHOnas9XiffwE1LOC5JxROzZjh4tnoAccw/IK5U4mPehkgZZdfDDwvIPwsKSatrnWM6gqGIGNoeGhpLKa73r68/5yVGzx080yyQd86MwJy2tXlA6qOG/JmCjVDIXgEeyJ8YhhH5iTqkBBuGCnFiscHt4Lq9SiMkwy14UlzJDk5OVYbBhTT+32kYB/wsvxqs0KB7Vs633t3j2zEFO7ME4w2AVXg1QSxe/j9ogh3X3vOK1gzjo0N/gOqteK3GIJJqYUQpARzbCKBBJkt3i7GHWxEAfiYes7EIKsWyJyL75/cbAvwRvSMfg0lRK2tB139OmPlHlyv3muX+nZ0VuiqKEuApmmGrH+VHwiQB5XFrg15o06qMXW6qoBCQAQrUWlxhHbobJ0jQSSTbdVNdLLN1YFhnnvPQyYgidzjel3bZlX4Cyg8JclZD5TbuNwglKkEKTo5dSijIhTnutS1n3odhzA4Ssi53mOauszj/3f37L7eaONSB4Tjx4eN07C
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(396003)(376002)(366004)(39860400002)(186009)(451199024)(1800799009)(5660300002)(83380400001)(8676002)(4326008)(8936002)(2616005)(26005)(1076003)(36756003)(6666004)(6512007)(86362001)(41300700001)(316002)(52116002)(6506007)(6486002)(66946007)(66556008)(66476007)(478600001)(2906002)(38350700002)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?N8TyIm37VIJGRC4AP366q3+X4wN8n9sp0mSf2u01F0VWZ+vniO31x89ELyp/?=
 =?us-ascii?Q?ALRsAXVr7YjaIiI5FqTWz3C2Ftt5GZ8HeJN+ZSPMM3/OGIIKw6b8+ZAjO74Z?=
 =?us-ascii?Q?zNrnzbVtNg4a90aq4FSPE8CfP5iBT4lQMtkImJpC8+vswmxXitm17rAzvgaS?=
 =?us-ascii?Q?BnaK0p7z1FHFbN5tq5Vo0bZDYFUROMAyoWTygfYpgWajfM6b2rZqyRk2Pabm?=
 =?us-ascii?Q?uZeB+BxPeuL7usMDCRl6JTz1sX9u7KGKgXl29fxRf+6pyIbLAT2iyL2wgmzA?=
 =?us-ascii?Q?GHJRmZbYD8MBVfgLYGu/FnFT/1cpUAqiSILbbzEHtAQI4UfJJJL4T+seQFg8?=
 =?us-ascii?Q?IkbyWckwHBUD8ifLQUDhGJndu0sMGTvD9D54NHR1wVUw14mmOK3VLzOKZkmb?=
 =?us-ascii?Q?6/krSKiBD/938ZNcromsGD2zsex8ib8xubPsDR2kB+IRwbnvPMlDwVeKLPK6?=
 =?us-ascii?Q?vjtfW90lNBqPORhpt0Ae5UVzu1F0xUeRn1kgpcMds6GosbCiJuLvvXJs3ZpB?=
 =?us-ascii?Q?dWuu4a3/ADZ30aUJnh691UQCUW2oaGvyc7W04Ru6kZEIIG8g6r2ubOUFS48i?=
 =?us-ascii?Q?x4qS90BSeGV89FbxyyJvMl1BA+Z8z+LPnoog5YKmlE+aGEgRfK97gjMzYZTM?=
 =?us-ascii?Q?+9Z3gebsuZiztFdMN7MSF+1IBl0gUkv1PaSOlb5u0vMPO8D8qoGG3HGrj2mZ?=
 =?us-ascii?Q?j3yncIhz26UZS1Y72SqjD/xscDCwaWmQOgvZA228g7R96J3/hGyMnQvMj3Ur?=
 =?us-ascii?Q?4VpVQFvY+ehF+PWD1LTOdf0x4bcKBg5KwuNhlZl7zPsnrubvxSrMUvGUxRyU?=
 =?us-ascii?Q?NBjv9gI1KwppXsxnnfrysz+QcYwBOJM5da1L5XC+EVuCpWf9qN+hWRzWHVpM?=
 =?us-ascii?Q?uTNH/7Hdz4CoFTDh05sc6gbJbTpdjUlzq49UcpeWaDwYmllJc1Ocd2mUW/jI?=
 =?us-ascii?Q?PrH7UulXfwVv3i1KlJDgJADM4JcYlINt36+Bv64nXmgpYXsSzOl8s2sCINha?=
 =?us-ascii?Q?FMHWphvUh9lPXEcjkxaPnyyUSe12m4Si/0EPeGEffRwE06sD2OZS7mItXOqR?=
 =?us-ascii?Q?CxW/Ct2ZCjXBXUCcJ3EW0t5DlTMp7rMLgTizPrQo8bvHXetWJVaj/NYODAh7?=
 =?us-ascii?Q?/plRnXXq7FJ4X5tAQ6fbexFHhcNQPZJYyF0WgaHs4gtw3hXZQ5Mt7WIe7Zk2?=
 =?us-ascii?Q?ygyyngCE9skHjy8ftuuzWpOR8kreIMluR5tLUFTWrmkEnMkCnTLWS4pYn7tX?=
 =?us-ascii?Q?UyCUMeQPP489hoRCISPeRV5zcdv0Vz8BE1Z0QBisams/TqzAc2f0IFpTw7S9?=
 =?us-ascii?Q?z3Y36XRjCllpx5ziGESFWaFbHZNZUzSXMGXAlBHdjVBDhAJFtwpbuaZK1yAL?=
 =?us-ascii?Q?Pn6+IFV/Jb/RUDE30cSEK7ahq1LIT+A9Dh2vD2wY32ISYXaSI43PRDad6mpD?=
 =?us-ascii?Q?Rei4DzlN8MdJSziktMv21YlZaNL7KmH2nQuvyMoEBa7VWnW+731xj9GSDmf7?=
 =?us-ascii?Q?WxRfC/xx2zKeoHw0P0IWHvQeqiyJYZTF29kHfY8Y0e9G/aVZ247Nm6DXofkP?=
 =?us-ascii?Q?HFPrpJNcEBP9uBf7i/PaVughsZguoNTrkX/qfAz2?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9e68d14-1ead-436a-4d56-08dbb50b99b1
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 10:16:03.4176
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qFN964syRFFDdHk57HgnH+hRgYCuWt/IxzUUCh1o6qngjdEEbET/HeTfCOblhxp5crFwNbcERRXcOeCrreAqAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7337

Usually, the ddr pmu node will be a subnode of DDR controller, then using
devm_platform_ioremap_resource will report conflict with DDR controller
resource. So update the driver to use devm_ioremap to avoid such
resource check.

Signed-off-by: Ye Li <ye.li@nxp.com>
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 drivers/perf/fsl_imx9_ddr_perf.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/fsl_imx9_ddr_perf.c b/drivers/perf/fsl_imx9_ddr_perf.c
index 5cf770a1bc31..885024665968 100644
--- a/drivers/perf/fsl_imx9_ddr_perf.c
+++ b/drivers/perf/fsl_imx9_ddr_perf.c
@@ -602,8 +602,15 @@ static int ddr_perf_probe(struct platform_device *pdev)
 	void __iomem *base;
 	int ret, irq;
 	char *name;
+	struct resource *r;
 
-	base = devm_platform_ioremap_resource(pdev, 0);
+	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!r) {
+		dev_err(&pdev->dev, "platform_get_resource() failed\n");
+		return -ENOMEM;
+	}
+
+	base = devm_ioremap(&pdev->dev, r->start, resource_size(r));
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.34.1


