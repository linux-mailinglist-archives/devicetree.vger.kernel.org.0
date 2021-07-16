Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A4AA3CB5A9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 12:03:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236495AbhGPKGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 06:06:50 -0400
Received: from mail-eopbgr60080.outbound.protection.outlook.com ([40.107.6.80]:14266
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S236342AbhGPKGt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 16 Jul 2021 06:06:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k6RnJfKbth/VkSckoyp+KvHO12f9wKq9udvDrVlyttdO9n59WAJE2HAED/M169TIYM+sNSQ5g1XwpNbYGPf/zZSuqmUioRXW5TyqJ4PJR0ljG/N8aOOmPLXF9qxgScONcotW2oHCv1kM5t68nZyg90GcMvJ2haMKKlpsLkjld3N9ktowYgImI96/EWShPEI5cXYItLMZ6Nd7x+YAPGWt6Ig0FeC12Z7+JIcuIZkDVIZK50duj077WUIwq9jx031h5JJ8vdOVYB6o139pMt/PHjnfl7DXvPeFB+4p1uRY4Gsq/wT/zfvPqaRzU2Dq0936lY8Sdn4HylbklgHgyPi5tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=arkoSoQUQxCCKyEsvWJn5+cBK0qyPJ8Z7M9Nu5WvFZw=;
 b=WLWz682DpIpunhw19mq/jbKLLfSTpOsfCm8nWl4BS2k87LWECV+wtDm7RG7YTsc1TAkkIVZR/N15nLiaY2P0l2cXC83k3R0v5h9ZRQtAIxSe2x0vD0YAsXVupoMtJgs/LuxjgDtVuGUFcTp5rmshnNL61SW8Wnu399dkzwhGjLKoW5ubCl+Eo1gj1bQknZeIpph5exnc+2/jeg/5spfK/Y/Nec7hwVECprikEprQ8e4SH1+SzWwQ1h/PSLVzcLmbwLkt9SDlJLVsF9piZsDwft4R1vxFY85ZaW5o8NZp00pLfEkhEZyUTohcaGv3DG4k+zdovsZ8mQvJ2UG40WDfQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=arkoSoQUQxCCKyEsvWJn5+cBK0qyPJ8Z7M9Nu5WvFZw=;
 b=XP7pGyiO0+nsqL6rKKi++b88K2SGRE6wAfoLT9tTwlxo7Ds52Gx2fpGZV1a+HcuPQWBMyMT3S87BpZ7TPdi2tz+RsJxE+sGug7z1aeQu1oCNChEUvTSLwfohAmyWCTolraq0Y48QWPUtN4T6cO24/Xm/7fAqVFghVkyZOgD+qhc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB7PR04MB3962.eurprd04.prod.outlook.com (2603:10a6:5:1a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.26; Fri, 16 Jul
 2021 10:03:53 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802%9]) with mapi id 15.20.4331.021; Fri, 16 Jul 2021
 10:03:53 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        mkl@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, aisheng.dong@nxp.com
Subject: [PATCH V2] arm64: dts: imx8mp: remove fallback compatible string for FlexCAN
Date:   Fri, 16 Jul 2021 18:04:14 +0800
Message-Id: <20210716100414.12840-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: SG2PR01CA0162.apcprd01.prod.exchangelabs.com
 (2603:1096:4:28::18) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR01CA0162.apcprd01.prod.exchangelabs.com (2603:1096:4:28::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend Transport; Fri, 16 Jul 2021 10:03:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0d5f2c94-8d37-4823-c7fe-08d948410471
X-MS-TrafficTypeDiagnostic: DB7PR04MB3962:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB3962C75D194F6E9CD9AE0A6BE6119@DB7PR04MB3962.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uglEuMncOX8HuK/pbnTJvZ7uenEWiVQpgJeUCEz/00yrfcRSyieM5EzgbjVjMtOHs+DDU+MiNGZdZMeLBY9IA7Bjk41j7Kym5sayQhVxEqY3bmmxClletmrAZYMSdW30UUaf8wYNMRTtF6B5+DYh26C0RQhBXfTTP37bmUbxy5/NcgnnCvwVrtuUuO2ucu1JUwoicv9azvYHJSC91kXV2W8H6zj62jZzXVlwnPOQB7ZQvuWIbIcUiaUiJ59V4XISaSM808qG2pxM/X0R6zlpywaFKpwyuaIQzAthtr+brxRtsiYAiR+L9htRsF2KuVMxZeEBgFm2wt/DBDe/WWGxbAuYGqw0S/OMj52z+mWMUr6LuFJmS9OHDRGnboL+8ylwDzcgFKKcOCJLqXm/alsU7WtfQJSZ0oSDz5Xu5oojWHc5Flc4nzlJr0CGzuFOlHiq+D0rdRb7y1ST9Ke6gWVIx147SnomfXBUQKX53H+11BgwQX9Sm1wyK6y2+/fzI3iyjQSPOLsRCOcsr5lncgSSk7kglYOpeD/ZVYwovyy7QHaU5WmVcxvb55YgR8/kS1Ci3y87aj/V9lZJbdpOwVyrMogxyRLO2L472HrhTV9X/UZ9/KLY6fYTqT34MLCPdXQpp6iyjt/c19h0pQ3Yprxcxz/qgIpNKLl/16LB9NtZpIfq/xYIhf0E6I2U182N1BAIaZb3ifKILZKK4d9FPwyj0VkbA4gJAQWyk8iWTye+ngA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(186003)(26005)(86362001)(6506007)(316002)(4326008)(6486002)(2906002)(5660300002)(36756003)(8676002)(8936002)(83380400001)(66556008)(66946007)(66476007)(52116002)(6666004)(6512007)(1076003)(38350700002)(956004)(38100700002)(478600001)(2616005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zUWKa5ydI9bKptzDsKRe2XGla8wTEtELI7X9in6zcQtYUDS4ayCG2EP3K8rN?=
 =?us-ascii?Q?z7FaM8BtnWSFD2OyyCs8fCXfsKFk5Z1ukYmFhrQiJTY575hWc+Q4bWK9LTjD?=
 =?us-ascii?Q?UWlxkbz4vBjFSxdYbmOUaCyJtMIkdelIixqF0kZrrLzFAuxJXmWSRORTZ1sM?=
 =?us-ascii?Q?pAaBLJTLNFjgdE0k+dMIh8ew1zD9o/ote48zUwBGJWjQZXrcT9OtMasaHVF+?=
 =?us-ascii?Q?ov8auHYmRxpUO067c+A5QjJcWIVH/1dGu+MVvrZAkLf/ERFs1iVF/iC4+U/2?=
 =?us-ascii?Q?H4E2T0VSYxsyou2X0+mE7EWs0xua5JWjGCtfLjaYpb7BDbq/JDIXKjeIHnXh?=
 =?us-ascii?Q?eKXN5R0D7JjdoMccR4A6OFWm5f7DqA4bqvBPO1GTzt+DX1/V3+CP4LFCvvmL?=
 =?us-ascii?Q?0w3MRe2xZGLg/TxccqIkd48NFQn3X6Ym/C8dyhXCZ+JonYvyjHHRtoM8LU37?=
 =?us-ascii?Q?y5eGfE1UFiF7YWusFONjciHEpTynAbcIm3RfhqACM2JU93M8HUEXg87xRQJ5?=
 =?us-ascii?Q?YkrraHPumSD7ALeHpzlnkzJk7L2UZnpwhiv/poT0n7K7Ef2LdbSh7RmvXegT?=
 =?us-ascii?Q?lSoCYOa8nyqPSlDvc3ggGJzUZy2IJ1Snm3i2zTbFm8HeozNkvNfZLv4cU73j?=
 =?us-ascii?Q?DUEzgRzb+u+qWFluhPhtUQMBfG81TBg0KyUQuLfQhM4apy6mOC6SgNwfrVpf?=
 =?us-ascii?Q?msS9fN4pIlpV2GLnSlVYJNhwkbk/fpe3rmSxfQXZ3okVvYAKvhMNLJavMRoF?=
 =?us-ascii?Q?OZquWNkLz0SQQHL3tw8OKmkXJgbOCSy0geT3/2d2q/0+b+PEbVKoGlZTusLA?=
 =?us-ascii?Q?rnGQfT4uNxk/T1YhbnNIqLaTE7Y3Q6NfbHDMF1DlLqbUd62xDelR3nqkWAIl?=
 =?us-ascii?Q?ziHAGM5V7OkNyF2hQZ3UKI5BPNIafjvyOR4eJmkjFrFC00WrxBhIRy0bzVOT?=
 =?us-ascii?Q?dEgkxCVXfcZHGF0RW9seqT+dkjUR90ZTt0nuBDdhESZHraY8WjK0k81/mDQX?=
 =?us-ascii?Q?zh37ob5TQlkLC1XyQ2hWt5Zso8N+1oTtW9gZaUU0JW6DHaeTgHCwKhNwWTaG?=
 =?us-ascii?Q?aKplvWOQKdprgkQHsFfiogV2DRemgcFf2pfbtaelmxVTZwSrqk5UIbdXJhaN?=
 =?us-ascii?Q?hnDWIniv2Mz8BoJLKNJepaaijS27mUxQaOUqu1+y3cySGy8oDaN577V544Mt?=
 =?us-ascii?Q?kboignj7rHfJg8wkPMCpNqyL2dX6LdXcE9mKlZpdb5iSbgm1E0Xam31aADlU?=
 =?us-ascii?Q?hXKU+BC37NzP4vvAHOfztdtZFIKhAqd+Gusn4pTkyciNY9vFPIFtFSwCAWVz?=
 =?us-ascii?Q?Uxh1EJM3svl2+y+ySNPzG16Y?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d5f2c94-8d37-4823-c7fe-08d948410471
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2021 10:03:53.7252
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PqpejfaF16rtD7WuMegjOnxUPVkXPELtUmiMM2jyYwEPBc1mAUMDgtK2eL9ocKq+3JlLFpi37PUE8x/CdiFm5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB3962
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

FlexCAN on i.MX8MP is not derived from i.MX6Q, instead resues from
i.MX8QM with extra ECC added and default is enabled, so that the FlexCAN
would be put into freeze mode without FLEXCAN_QUIRK_DISABLE_MECR quirk.

This patch removes "fsl,imx6q-flexcan" fallback compatible string since
it's not compatible with the i.MX6Q.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
ChangeLogs:
V1->V2:
	* improve commit message a bit.
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9f7c7f587d38..1bfb359dba4a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -579,7 +579,7 @@
 			};
 
 			flexcan1: can@308c0000 {
-				compatible = "fsl,imx8mp-flexcan", "fsl,imx6q-flexcan";
+				compatible = "fsl,imx8mp-flexcan";
 				reg = <0x308c0000 0x10000>;
 				interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MP_CLK_IPG_ROOT>,
@@ -594,7 +594,7 @@
 			};
 
 			flexcan2: can@308d0000 {
-				compatible = "fsl,imx8mp-flexcan", "fsl,imx6q-flexcan";
+				compatible = "fsl,imx8mp-flexcan";
 				reg = <0x308d0000 0x10000>;
 				interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MP_CLK_IPG_ROOT>,
-- 
2.17.1

