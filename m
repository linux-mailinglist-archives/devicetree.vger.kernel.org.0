Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C5E2708FDC
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 08:24:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjESGYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 02:24:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjESGYr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 02:24:47 -0400
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2065.outbound.protection.outlook.com [40.107.249.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A56571AD
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 23:24:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cR7ihs1OLvb77+XGfsIzzqgQ5rlRcWn53lRS2A/8Yu3h7pfsSvWUIyU//pQJba7jxErbbnGT/WLShDARjEIV8B3Z6yRUf5R+R9LKVuFRQXQjilo+pumirDefn4cm0ume0sCs28BOwH+BnXhCP2vg1HkbcZ7d8bER0myJwFuHO2+SSNDNi0yUr2rzfP17G3c0F04yDpceHcJnapTW2cmcQQyDI//8t0bggpGPXoH6ai/fdjPHxld8xrqT9DL3406k+1euUoY/XUme+wROkmW0qGCS7mGdEjYinBkwj5VwroxIe8NWdkzW2r2Trr6HnUWjVKFXFKB13SV4TCUNuRtfjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JlOf2GoJ94q19yp/NI33svASy68v3gsshG13p7PnOYg=;
 b=i9M7Q9agvKmB32u4RwC9F1mGOe9rGvBtm6F8gD87uZ9DTEuYNmkBNHqqM4pQ+5ebwxXbWIzOQal6so9wX8jCPAupefZesxEpE9EY5o9mDVme4klX1gYmg+CIprT3tsS/HdZyMac6mrMq0UIp314m9p1WTA/RKK/LXBLVPKuB6PK5k7lCLvo3Y+JehVHrFuXlbFsGYWKDa+D2leWHq9k59Y7v8eaPYJUqbNu04JjP+ZaBqHfXY5mqMyHl0knZchBYhjXofSJvtVgBnC/V/yAYAE1qspNKvYJA/oyGQ7td/jjbJVY15Md8yS7aXKB/aOpycCd/FvCcjLcnxTuLMz+I5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JlOf2GoJ94q19yp/NI33svASy68v3gsshG13p7PnOYg=;
 b=s14TrZPDqWfsvKyna2xG1WaQLheAU6h3SNsg1NjCqOwb//KrxT27nd0bUhNVDBmtuQIWehTxIuhJpyw6tky01XXx1mwEGr7h7iEkcwb27ezp3HB1LEjXqaU5SWrz+KqDvn9k+BRFaf9nsNaAl20qijlhrNIf59ezI5FnBloR1eU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 VI1PR04MB7054.eurprd04.prod.outlook.com (2603:10a6:800:12d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 06:24:44 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::60f8:95d:fce9:16cc]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::60f8:95d:fce9:16cc%6]) with mapi id 15.20.6411.021; Fri, 19 May 2023
 06:24:44 +0000
From:   haibo.chen@nxp.com
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, haibo.chen@nxp.com
Subject: [PATCH v2 2/2] arm: dts: imx6sll-evk: avoid underscores in node name
Date:   Fri, 19 May 2023 14:27:31 +0800
Message-Id: <20230519062731.504082-2-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230519062731.504082-1-haibo.chen@nxp.com>
References: <20230519062731.504082-1-haibo.chen@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0038.apcprd02.prod.outlook.com
 (2603:1096:4:196::22) To DB7PR04MB4010.eurprd04.prod.outlook.com
 (2603:10a6:5:21::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:EE_|VI1PR04MB7054:EE_
X-MS-Office365-Filtering-Correlation-Id: eaca3fda-883f-4f56-d512-08db5831bc94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i9kJlWx8+mI7GWRnObEca6dDKppnYuP5Upjwl8OaZkGVrYD+Hnw4aUeEwHdGdxhh0nYYdLeoRi2GHlHj1VAxXwqR/NUbL+k9fHbN3mNGflSPIgNFdL/HTtdLg7CSBZY5HIjMg5TC6+YP5g3OZUK7OGOoTu++mVv+067PSifnHdKR1+33n3LagYb57L5ahaL0ra51Fkc98EaCHAlzDceTytgI53zleg3bCtOY4l7U2+KV1PnIgEeAAtO3bRIwG1hyPOJJ0cvtHV7rXPI3eqP4XaEOa5KwLnj+oWEKppoMXjEtlBe+hDux14+7pUGrt98qfxOac8MnkVgIoOWMI8ieEqXVCfHGQP6sx6wjIKLz2KIgKiZxfK0PhiadsgdRPnjXsk5RmdY7U+4ZPP2CslQv23Ykmb21jPUEnoHSttzbAKBFTgYq6LE/7GtgdY3sYsTRcO9S6uQUfni0VE7c2TmNm1TxTQCGzll/GEnY4YcjlqTKr3bVux4bhgCCOkBZCEwq1Uf5AWVUU8zNjp9ejIZRpujO3ttfyxtuCUlANhR+OCvUDDVKWFcdwGMSkcKdp4fMyZM3zNXhYMIukwdADXZXct5Zp4U1wM4xs4BeoUOCXnZoTYGwNSeNOnd5pNrui7jrCt3bmtPORDF0dicAD7S1yA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(396003)(376002)(346002)(366004)(136003)(451199021)(66946007)(66556008)(66476007)(478600001)(52116002)(4326008)(316002)(86362001)(36756003)(83380400001)(1076003)(26005)(9686003)(6506007)(6512007)(2616005)(186003)(41300700001)(5660300002)(8676002)(8936002)(2906002)(6486002)(6666004)(38350700002)(38100700002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T360kXzoqXpbnDbaGupSniNvU8pFeARaL1cJwD2UdsLhp5d7H+4ESqvamFgF?=
 =?us-ascii?Q?P6vreoS4GAGjvZu/KlxS0RpDjMPuiGad3w+79+50z8XzRRUP+NJm+S+Bs+K3?=
 =?us-ascii?Q?Ui0mYikmGVq34kDErMEHVNINSwUgsE8phAsAOMFDbcu9edHte9uH8bcdYRYj?=
 =?us-ascii?Q?eOX1E8r8j7CIw35LfIjFdwiP34rbLpi2hRLrEMz4bEiokyHJxX7vOOLtHsAR?=
 =?us-ascii?Q?HYh1J9CG4dNK+dDZBIruk/KjY1lGDZfabbpMJgpZ5SlSXHKoE5jHX7y8K/Jo?=
 =?us-ascii?Q?/UGpka8Y1zRxQiR1NuzDc99tQ2MRPTmesB24zHqxFH8EfMojjOgYnv/X2c9a?=
 =?us-ascii?Q?PbjO307Ja5lPMhpLOt2Ugfaqlou4g3OEILI8G0DPy/MrqkMx5BvuREaX8Orn?=
 =?us-ascii?Q?KdB6ppJu2L/DM+rcpH8JWaLocE2mmftt9Zd/1ef6f8fazIdTdj5sd9xGE5Yf?=
 =?us-ascii?Q?gREmVfT96ESmmy1nxa4Ws8x75fHwyET/kz4LR0X8d9v/WdAqm7DoUP7zqXhr?=
 =?us-ascii?Q?fr1MvxaXUiHaRX510JuAVEzzDWtpoAtPLR96FWfak09bcmaa1l+vVpkUDEpp?=
 =?us-ascii?Q?HwN9lfZhdoVnp1uUO1tuM2sFX5XqwnVNWS8kxFNhgTovZ0cQX9NmtIYEijvp?=
 =?us-ascii?Q?l3AenI7Bv3Ej38nNsGZQSJQQCt/CseckVfRDwioLo/6Mp7DypyvPvpAlwt1a?=
 =?us-ascii?Q?vyIE+U5XGQMVcNlYLS+0IIewA3AJTmC1YpCqsSnxI5ql2bpHsUUQRmu9Ya0A?=
 =?us-ascii?Q?kNEe7QTZrCJxO6LLov7rjeaagq3tSRgZS9ytKQFTZ1+SBNvRBB+4tJ2HwfYy?=
 =?us-ascii?Q?GLaRqT+DplysXU5MYOjl4eCIVEItfHKMpncvgn39+mOTMMU/+LWn38A6ALE+?=
 =?us-ascii?Q?FJj8KIoKz9fEbWhT67DUhMUIdpBogqDAgVmuAccTgJa0pB71Wn/UKkTO/TGY?=
 =?us-ascii?Q?E34bSdNCGmdYPpnpHOfeHSkwoNTT9eDSSTPVliX+fUKRR7CsELUrw56K7njm?=
 =?us-ascii?Q?Fw0/dNwhI40WXs5buzWf0r4veSSy5A37JuBSEtYYG0dGieafWr4LmwkpFggE?=
 =?us-ascii?Q?G9GB01UT/8WbOVa6BxZInljAm4TAvx+fHfHeNtoD60+ISDV251szkHp2XQyv?=
 =?us-ascii?Q?fb6xwisDgGlSqMmBhVkPTjXfGaZYJmyriEZmXkk8ntpbpc3OjYjMk8sURk8S?=
 =?us-ascii?Q?4TUyA7K4qvdJcOwVmDyWt0CjdRmbEecJpaznd9RUjzJUC4OaJBqdTNx/PxUJ?=
 =?us-ascii?Q?FutHhZDrVgB/Q2UyRvjnyRfhCPRzTwQyeCWvSCucb1wmvytyxxYSoyJamiUF?=
 =?us-ascii?Q?FpazPuttqnGpxihAZgF4S0sDpDJJNPjOnBcoSWDWRrm2nSiFyt1d0GLjdk2+?=
 =?us-ascii?Q?U/A4fB9s/OX4TiQU3WeVU7I69gsOCvjk01MQz5ugj9EdrKpMnoD8An9R8N+N?=
 =?us-ascii?Q?9NBsYvHE0uYgjWSxc8eLgsrHcNbKjNqHCfQp3prCbR2VvNaYEAOiKJ7/Rf7P?=
 =?us-ascii?Q?hCs52bT1fXSN2LwIuPTcTScyPHDi3oSoU9OHgxoAVDNzNouYlLq9apcd9ytk?=
 =?us-ascii?Q?4xUetoZQcuw5fmHNQjvC8qoYJhpyLupOrpgAJlmg?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaca3fda-883f-4f56-d512-08db5831bc94
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 06:24:44.6344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l1eJMtsHkwpxyh9jRvKNwHPHpUwapXlTAcK/T1LgdCiO8yYwP/r5Vf87iuTGb42AFAYBdO58fO+9B00kRqsN5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7054
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Haibo Chen <haibo.chen@nxp.com>

usdhc1 and usdhc3 node name contain underscores, so replace the
'_' by '-'.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm/boot/dts/imx6sll-evk.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sll-evk.dts b/arch/arm/boot/dts/imx6sll-evk.dts
index ad219a647d9c..e3e9b0ec4f73 100644
--- a/arch/arm/boot/dts/imx6sll-evk.dts
+++ b/arch/arm/boot/dts/imx6sll-evk.dts
@@ -463,7 +463,7 @@ MX6SLL_PAD_SD1_DATA3__SD1_DATA3	0x17059
 		>;
 	};
 
-	pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
+	pinctrl_usdhc1_100mhz: usdhc1grp-100mhz {
 		fsl,pins = <
 			MX6SLL_PAD_SD1_CMD__SD1_CMD	0x170b9
 			MX6SLL_PAD_SD1_CLK__SD1_CLK	0x130b9
@@ -474,7 +474,7 @@ MX6SLL_PAD_SD1_DATA3__SD1_DATA3	0x170b9
 		>;
 	};
 
-	pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
+	pinctrl_usdhc1_200mhz: usdhc1grp-200mhz {
 		fsl,pins = <
 			MX6SLL_PAD_SD1_CMD__SD1_CMD	0x170f9
 			MX6SLL_PAD_SD1_CLK__SD1_CLK	0x130f9
@@ -551,7 +551,7 @@ MX6SLL_PAD_REF_CLK_32K__GPIO3_IO22	0x17059
 		>;
 	};
 
-	pinctrl_usdhc3_100mhz: usdhc3grp_100mhz {
+	pinctrl_usdhc3_100mhz: usdhc3grp-100mhz {
 		fsl,pins = <
 			MX6SLL_PAD_SD3_CMD__SD3_CMD		0x170a1
 			MX6SLL_PAD_SD3_CLK__SD3_CLK		0x130a1
@@ -563,7 +563,7 @@ MX6SLL_PAD_REF_CLK_32K__GPIO3_IO22	0x17059
 		>;
 	};
 
-	pinctrl_usdhc3_200mhz: usdhc3grp_200mhz {
+	pinctrl_usdhc3_200mhz: usdhc3grp-200mhz {
 		fsl,pins = <
 			MX6SLL_PAD_SD3_CMD__SD3_CMD		0x170e9
 			MX6SLL_PAD_SD3_CLK__SD3_CLK		0x130f9
-- 
2.34.1

