Return-Path: <devicetree+bounces-182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3535C7A0167
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D40361C20D90
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CAF520B09;
	Thu, 14 Sep 2023 10:16:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B78F1D530
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 10:16:11 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2052.outbound.protection.outlook.com [40.107.21.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1B6B1BE5
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:16:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f5+USOl9Wgvk3DUfaF3HEvOOwhY0/O9rC6MZgfJ4bbvy9s4r9pXbP9mWtqqFJIBqClWNbjzIVP6xS2Ibu1rXXNF5xcs+W3jnNnSdOaA+SU3+NvO3+PJE47W76YLinx/hMv4X9+l+jLSnbKykth4VEaIDsRODVJ3Lyje4kms/5pVRLksU7bXl1UCyqNWoHdr6ZOlKcS/u8nQ7i1KvLMtvtPDzGKRrXyOrpSRoOCgjtIs6n5T0qLJGUQV6/uKD8sgo1JpQCLciKRniXIdL4phPnorINJwH/Hfd95JY8xEOiDfcyp9NA5Az5++jVgf/kS1BzZ0RP5BoC54ruZGjmjAXXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zirBXX8DzpLhKulGt4KVTJ7YWL53IEfZj0t9xYXPHIg=;
 b=egNGKhTZOmDanVDN8+M9zAczf4L3W/3hVqxeE/gt1QodAf18fxAYg8V8nZOKy22i3+vN9xS9z1TYPLOPzNFxEbQEWkXjVL859ebdiuzMgrrAIVvAw8CQ9or+M/y+V42fdA7KkSvT/rqPRJkw2f28cqX0qbP9vNVK6k/FtmO2IpgnIT0zmikh7oP/CLLzbBcRn1ACoF1sXCnUH575b1q03OOjS0pZ6ju9Q9mTt5dneaaUj+FHWD4i1YbS8sAUES6kVLoakBxX4vvZNWajdfNw6OF8QK+ltYC895qqo6NLRvhdSx7x/bslY/jM7aFlDP4ayKeXAkvUkuc7ZbdQf6/t5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zirBXX8DzpLhKulGt4KVTJ7YWL53IEfZj0t9xYXPHIg=;
 b=mn+EfhkmFXmUhlrXQTb2CjGBbRqIV0q37RTMmhXAsA6lxFrcImHUvYuvaxqMnm16BRWAtqECz5T3PYQtfWLerFQ8l0g3BGheyubVVgg9CkGXYwkpta9sp7H5kGf2Cu1WxpohJ6G5ZU9LXfdv1JeYwKI+OtyMhbAmxlANba9EXgw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 PR3PR04MB7337.eurprd04.prod.outlook.com (2603:10a6:102:81::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.20; Thu, 14 Sep 2023 10:16:07 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923%7]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 10:16:07 +0000
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
Subject: [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Date: Thu, 14 Sep 2023 18:20:38 +0800
Message-Id: <20230914102038.2944844-2-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230914102038.2944844-1-xu.yang_2@nxp.com>
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: 1dd89190-358e-4eed-4e24-08dbb50b9c05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	VLHz0SrMfuVILq65q/JuhtiI1jOjTHO5te25IpwwR6SLmkRv4rFRDl9gmI+2hFDimq83Bj2ICPSRYEboJ9Hkb/x8Wqs8g5l13wERN+DYdEKEfFQbntXm5lrNLjyhZ+5N9dALM0WWmtofAlludSnda40CbKwP40AnJgbNvhPIEXgV9rCmOfuzILJ9R8wCoNSJnCYTp2xmNtN5JglBaq7oYuH+J6sCC7kci57TvUtxJVG34qd+oDvPK2xxbp+Y3auYC1dFtuv+lynvmonEYH/FEqIXuwsAnbz3tqYLcUnJvBCP/xVudEk5QNx62qdGk1lqE1FMgpODcp2T0YFdva8nyDPljjNv14zmJ5/RKTuJ3huSfigLEuxEsOJPcE/816BF+p6osHJ5gHkXfoCg2BLk5eUDySiP2zKQQVr8T8PAvSvYfG4TQmqTsXKHw0ojQ1pJwCk3E9bDEHrvI6a0BAsGlwMgsT5yO1QRos6asLjhHJ1n2+kfeniXypaed3XZ92DoTpNyTLQbukZtndDbNzwSEFZsv9krWx9M5KIwdA2+0N0OzJaUF//2UzDX/d/8c98NdthNmr8cmlzI+FCkG/5ZkfHpbQ5K74yBefLSodCjedtWK8uAIWvPi4VJ9Dy2NahM
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(396003)(376002)(366004)(39860400002)(186009)(451199024)(1800799009)(5660300002)(83380400001)(8676002)(4326008)(8936002)(2616005)(26005)(1076003)(36756003)(6666004)(6512007)(86362001)(41300700001)(316002)(52116002)(6506007)(6486002)(66946007)(66556008)(66476007)(478600001)(2906002)(38350700002)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?8k0Xz81swWtQEGJIsp2zAusDqz7DQ2du4yofp8Df38eT1hWJKOjQcDCc7uoD?=
 =?us-ascii?Q?ymNlB2rbELO7AkPAVnIpkdQMffz1o9yRlLuYKfJuxpABBKFgEH6ED5vEeO4G?=
 =?us-ascii?Q?fEBR2qkpoEcHG+ZLzTBtKqD0WTJIzRIIHMrinLaRzucNt5sDeHahUcKu/KOA?=
 =?us-ascii?Q?70woaqMmxAvpUurhV8Na2clY4QJaAtjrvAb5VAvbWPw/6Qc1WPCpZWuV9XBF?=
 =?us-ascii?Q?KOazanReOU+s4e7dee3r6BBCL6+RFJ+qq3NxLgw4fsq5R/3S9vIt8mYQArl+?=
 =?us-ascii?Q?e2AGy2KtxPYHR5PFMPboeSWjHlqDU8kf2hiZHcXs1Corg5HahAMEnCPikWuc?=
 =?us-ascii?Q?tj30eKVieOAJNve/f4qrH5MFK5DpYEl+B2qJRkhcCMLweX/FrTC+Qwju3PIC?=
 =?us-ascii?Q?KpqkAPOWNfbeTBGd7ikgrmQTpvQl4EDWi9i9u3u24kQaqAuyWf0seG09AiDp?=
 =?us-ascii?Q?tN5Z7wIpQzy+Xk9cna+FY3tFRBScpgIV4ApcozDtq2Cn5QwbXoSLRkgrJ5FN?=
 =?us-ascii?Q?88/E4jWWsA9WwJGso5vlm4m+qLbS2bChR6n9Cvt8jW/ccgGte63q7o+BcbXp?=
 =?us-ascii?Q?IQpZYsKQFSorBk3lx/GdWanVxrC4rpoiC3cAmAwokfxg27j1hNBev+iowbYD?=
 =?us-ascii?Q?klDAwJtGBab4LpxCe/C/9kNKsDydcOaFqNX9SUZQWwOrhiHBMme639xUGf/d?=
 =?us-ascii?Q?dZQ06CV4uNyJuuF5m/SlydhjMWbAUPxKkhhOtRn8NI5x5DdSnv/bR+7YTurF?=
 =?us-ascii?Q?sAKs5dc3GsIBOu0p/zSdA9owwXZNWtKmIdfEDPSLavncu5jPyOBFO0cwi34J?=
 =?us-ascii?Q?Mx1mgDVtxmEQQOorqbAgILKbCIy/Fy/GRU9aKMc25hHKWH/gRUyNnCOIKYfT?=
 =?us-ascii?Q?qJSnpAbGYJrbrGmavkU3ENdndUnQ5m8vsyqNhWziRWm3bEOIugi0/hE0ykkA?=
 =?us-ascii?Q?MjBYzkECinggqIKQfeILOsx4y0OrW+H4u30j3QL3F1QGC+2C2Td7588UMcNR?=
 =?us-ascii?Q?+SSZZ5XUiNtBOhPJtGXKgSccRVEYwk8NPL6W11bu5bsXGRPSyUlgj38qLwwN?=
 =?us-ascii?Q?rmfv0XAw3SsR6VxGCJhobaBQZ7+h2vZf0jwkkR1EO5+acE+xiQyDmc+Py5Of?=
 =?us-ascii?Q?/pSoRqdrwS3asCTgd+u6xy6/Eo3Sx768eI+PexbwqsBQc054h208wkRUkI4v?=
 =?us-ascii?Q?0fcNO0yA0FaPBynbPmkVXT9FInUQmDwZUiwukk+NywllvCrniADVDIxDxJbD?=
 =?us-ascii?Q?98gra+He9MqpHhkSH5h8PX6MLz3rMKWuoFjAfMGVx5TNzGzBv6MAFjr+9mu5?=
 =?us-ascii?Q?TR6/56wBl20UTq05VJwkECjMQWpXG8LrajEJG1X7ou/VFnqX9Sqn2GB9hkZU?=
 =?us-ascii?Q?8/ar29XgQNl7kkkbraD2krAQkT+oV6gIULE1QDhXwd1qWtcEGBHKCfXU3TeI?=
 =?us-ascii?Q?amdFmjhMrt3p7i+nSQMOCrKHkDOFlD0icKlRqsQqk0hcynpkuGK3wqNU1hXZ?=
 =?us-ascii?Q?r725b+HfuecOD4Wu6eTMUXDPWX7gCzOvjQ+TCRmLKfpoxNi/zebrpiD58O3O?=
 =?us-ascii?Q?bRMx8UkIAiR/+MXyqOLyFotRIgSr+vLgJ/60+E9W?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dd89190-358e-4eed-4e24-08dbb50b9c05
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 10:16:07.3408
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1yBBj0CwhM3Hm9/1L1ge31i0qVlYZ5V/M3WiItKEpKAk4Ce51GhiHU/5AbemkK90+2VqH2DngXTUVxqlwgvaqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7337

Add DDR controller node which will be used by EDAC driver later, also
move the DDR PMU node as the subnode of the DDR controller.

Signed-off-by: Ye Li <ye.li@nxp.com>
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 6f85a05ee7e1..992bdeef70cd 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -917,10 +917,20 @@ media_blk_ctrl: system-controller@4ac10000 {
 			status = "disabled";
 		};
 
-		ddr-pmu@4e300dc0 {
-			compatible = "fsl,imx93-ddr-pmu";
-			reg = <0x4e300dc0 0x200>;
-			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+		ddr: memory-controller@4e300000 {
+			compatible = "simple-mfd";
+			reg = <0x4e300000 0x2000>;
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+			little-endian;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			ddr-pmu@4e300dc0 {
+				compatible = "fsl,imx93-ddr-pmu";
+				reg = <0x4e300dc0 0x200>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+			};
 		};
 	};
 };
-- 
2.34.1


