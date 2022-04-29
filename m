Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F705514387
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 09:57:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355306AbiD2H6j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 03:58:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355302AbiD2H6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 03:58:37 -0400
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-eopbgr150054.outbound.protection.outlook.com [40.107.15.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CA1C366B7
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 00:55:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/2MnxJHDzKgSzuJbjKRJ0HpXWRg8WmVS6hSwC4Buwe4BkUs/GE0CzUrDg0KlFAUzH7rmez9eBQpFHNcgnBmwns1YWIkb1v5W08txnRckZlhTJmKfm31ktytmFMjUC+QqRhjA9smBW60pqfCv7uux/2JX0tRPKVKO04XLzNdOLyn9lvL0FNDN4RCnHQbiKJ3sYW3qFhF9sbaKmh7RBocXiskQs3I5G8F9HUukp5DD/Q8/TcMjzFQAvJyGQQ+Wnf/qshU9Aj2PI0iQ2kincYwsOZxuGFVbRVXxcz2/Be98oQTG+p8uElpFlLVfdoPOI+6dPF2zlYHtCoq+EjJm1TFBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+5fVXPgqcNerYGSVWnh8neO11qq9CcNAXFfpnZwou3c=;
 b=Alq+lpVSPiZmHQMrgkmtBg9Vuw2zW6ZZTWx33hzPJRrkK9rCNQE0ivDQVez8q4ZzfVMAuRqhn1xN5osmKvNY6ceXeY4g35tpk+dipqb2Ag5At0XrY5jFBGccgLq85jma0gEcFx62h2gUvnrxZjH1j/myN6c1PT0ulhnVJhHM92sSMIYxCKjIdVHdhBCbe6mbFHSiJ7mV+EqubDMcNNTEJmGuRZf329TALawr5izy65EuTA8QcdEd67tIsDW2mHAsRWsNmYUkMeW34Mxeh09R6rAsCT+WJ+VDnB7e6CXDQJqu7iSX+w04i2uc8Qy3+yvYDPoznNjzOp7iII4pVXR9ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+5fVXPgqcNerYGSVWnh8neO11qq9CcNAXFfpnZwou3c=;
 b=WQMIHMz3Skg0r7aGWREENBO7iU47s+pNhNJj6ZNELTsnpDnXEz7IHqT/wdzvQsTWGPareK1uSjx6hpPpiIXOHrOod9GjS8Al1v9q7dZI5q17D3lAD+f2Px5dzHX0U8SUynNTmrOvS/bUPrcoBzNLr7LLlL/telxxvfWkcoegHZo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM6PR04MB5112.eurprd04.prod.outlook.com (2603:10a6:20b:10::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.21; Fri, 29 Apr
 2022 07:55:12 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::597b:6d36:1222:b37a]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::597b:6d36:1222:b37a%7]) with mapi id 15.20.5186.021; Fri, 29 Apr 2022
 07:55:12 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, l.stach@pengutronix.de, aford173@gmail.com,
        tharvey@gateworks.com, frieder.schrempf@kontron.de, jun.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        ping.bai@nxp.com
Subject: [PATCH] arm64: dts: imx8m: correct usb power domain
Date:   Fri, 29 Apr 2022 15:43:04 +0800
Message-Id: <1651218184-22066-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0029.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::16) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8267dc7e-f993-4d41-da24-08da29b5969e
X-MS-TrafficTypeDiagnostic: AM6PR04MB5112:EE_
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-Microsoft-Antispam-PRVS: <AM6PR04MB5112A9543BA5ED44D2EE749F89FC9@AM6PR04MB5112.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tf4GvFkjWdcfgAFnQJut0Fat7F+EOPZZ3il09rhGvY9tnAhS6Teu9XgP02yzGfCqqoCWkqyUR+NGvRb3oWPFFvosiJvebXcqstK2r9cgSCauK9kn8VzxNN/4vxORRBOc9XnIg6Ss8lG6RXfdJ8+OOLcRQBwWx+MBkP4YL+8GSNYhmLuG+726N4Tq0B5+m7+3/m/oNp+KHPh8xQH9/q6INi49N2JhayhUgZd+rU8F5UypZCy//grerH2hZMrM2hHsG+n6Uqz9fCh+LEynLvWeM8VQ+JDmzBE3o36pBRnAscaDkZONhNrzwDMBocurJ+cb4YlQMSygeLK1Sq+VtYYFmntaykiYaxTWHL4ETU3o+RyxoO6CQwN1XvxB1laQnnyAbeHuoJlFrq97TA7mKf3ui7eA+pxSMN+OHPGU8xf4eaNS6alogRMeDmZjr8RLMICRCnPQFT1puVIY8gYRHgonYvIv8+QQbkcflU2oWSrZemdVyza0j1IHZnQFFOqAL0SwANltC3Y7/UnJIcAO9i9FjDmClq34yaOQCx0tuEQ9uT/c/uw8HI8rnpjKJHxCo81tcE20mMb8f9Qj9+iFRJpNpr8lD/e8kk1GeZ7DXEFx59tm7joOiHHycmsGGO1+M4hO+kaPt2BRTJfOuF9GA/NSC0OG8GnVBIOAbuNexFcI11hEk+uTnUYOxaKw9iteEVh9EXRWEGNBG9MRUkH1kXAM13FhzQhkY2klPHOsCAmv0Qs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6666004)(83380400001)(6506007)(6512007)(26005)(86362001)(2616005)(186003)(7416002)(8936002)(66556008)(4326008)(66476007)(8676002)(5660300002)(38100700002)(38350700002)(52116002)(2906002)(66946007)(36756003)(6486002)(508600001)(6916009)(316002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4zKO2/c6tyE2Zp853fUv3nucUqMhHCcvTRq5heHnnCwX8+flMXeTcL1invvz?=
 =?us-ascii?Q?qzniN4qhfzF3iu1KpzqFhdhFlKfhiRCqpE4LMUitEB1mlvwP0+q8hn3XtsfB?=
 =?us-ascii?Q?iZiLZcyKA/rOv5olfoWsl6LI+25WykEadFa5cJHdvDHZmW8KuLs56IBC6aEM?=
 =?us-ascii?Q?PpyZx6Z+82HmDOBWEQsvPabzhslk953oP/PIFYRfwm98RGHNVRs4e5BRIKKO?=
 =?us-ascii?Q?RUhJEI4SOp3zvurwv0cW3rxeJusF3thZutJZVYuNOzRF8Lg8AKUIuz7K9C2v?=
 =?us-ascii?Q?0ZDI7KHlc7saEBWmQyZpEHGvVir252B3kNYsqZt6VwQ/yToJG2onIyMIsInt?=
 =?us-ascii?Q?t/mUCXZn9P7VsPyjpqsTebMfaYtv0jXhteBgXTOUn3xLvGiw9SfYfqoxqqQN?=
 =?us-ascii?Q?g/whgObqz1G3QQR8Qli3JTn+Lxm3kIL/xM/lh8WMFoUNsVZAZapOMmjXGLkl?=
 =?us-ascii?Q?amvWrAgAHAnne7FmTAS7KwbNxfgJXcEjeK7DsxyWOufg4hSQTL07somUBDW9?=
 =?us-ascii?Q?kQ30F/oDuY8wWpnkbpaXtE5oDq8AqCF+1XdzhCJPyblwFHKfxSHHAyl5wZEc?=
 =?us-ascii?Q?WNbeIQz7aAKdutAo8EwjPUq9MGpHHPcU+N5w2D798xwUaz1EtWiPQmlsCcVJ?=
 =?us-ascii?Q?UTuyS6g4KzB72z43Rg+DXlDB73QBTtLVKWXWxjlbiMBc6RlH9yiwVt5481a/?=
 =?us-ascii?Q?WB540hoPLenCR3apjuWF6zvxDVQXlgIn5Gx5Fim4AcQT7D0hm/vPr2l1UVgR?=
 =?us-ascii?Q?Gh4Ad2thjgEITTa8YEm+CRL0iJ22SE79osET8yRYySDsLxZafnGniE/bVfiL?=
 =?us-ascii?Q?fdFj9TBmfYSR6TgDngTtYWyQsiT2DjGyl1/BMIAqMy2F12m8/DwrLvurE+08?=
 =?us-ascii?Q?sULH+5X0DevvF3QHAHw1JUSny42NAkr5iPon1P8s1jJkyhCrm22NlyxwrFq9?=
 =?us-ascii?Q?3Vo7VSHBvt1RlnpAid57oFHyHSSJAgzO2TNPMx3dj8F4D6SU5oFrM0RV0UR1?=
 =?us-ascii?Q?00TNS5NedFwi/ygZ7ThnHnmVGxMhx5MXMD1/nIIwfxcVgvBKdaluYgwd+kOw?=
 =?us-ascii?Q?l13TpJjUf9IFetPVEmh0y62+nbFuZo5cqbzF0hePhi71sJnSLNKPTO9l/9g9?=
 =?us-ascii?Q?B4zXYZ6zB4kMoYlTUYy06qxrkQtE8OOxdUOy0UCgnsitEvE3Rrtj5JkLjxRv?=
 =?us-ascii?Q?mWLMggg4zBzH7R6q3dkHMXht5hg4WcrtaBzlF4vfo15XhlwXhlfzXkkmWWta?=
 =?us-ascii?Q?MW0LucdTxCz32R7ufapLZbuUt1EgngitpOMHIHuWchX7hamhrXI8VKdVMfxt?=
 =?us-ascii?Q?WQ5WQB7iWglhAFGMAmdiDjOtAdcZLt+iJIxJsvQbnGMSH2K194ODwZWd0Slu?=
 =?us-ascii?Q?ioyQ6sRpF7ZRQDyPbP0I8JRgfwUfS/7gJyTes/J/xeHv01fs9ccGUZ88YbGx?=
 =?us-ascii?Q?dzgQTEGm7YoJdsaPg214FEb/YvUHIyb5Rb4vHfz2nmM56stPS8pXKh16aW/O?=
 =?us-ascii?Q?eE21cTTbqfJNEzhjABw6JZLGUwhd7DVDJCXOO/X0LaHR5UNMevmJP3ju32Qc?=
 =?us-ascii?Q?ru16CaMgumUEcO/BcxP2XiIC5+lmYjri/ubf17G4xyjYnoWoMimYyo7yaEQK?=
 =?us-ascii?Q?pkwc6o3XE1HbpaA1+pjQhMFVguO/eVFw8+zW+Xs/Cxa2NzXYMEBKPLacjT60?=
 =?us-ascii?Q?2+IoRj/U2btsLH1CYL4tcy0YS/iBekSuqBQTXb2lZLfvA+o5iNbDtIcZ5fKt?=
 =?us-ascii?Q?t0aYbOw7rQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8267dc7e-f993-4d41-da24-08da29b5969e
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2022 07:55:12.3391
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ojTsxzi6Difuva7HoKOZ+Angz2N+M2O9Gw1cwU0Z+oqWH2q4ebH4uWWy0Z2u3Dl7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5112
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pgc_otg1/2 is for each usb phy and pgc_hsiomix is shared
by 2 usb controllers, so assign those power domains to
correct controller and phy node, decouple the pgc_otg1/2
from pgc_hsiomix since there is no hardware dependency.

Suggested-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1ee05677c2dd..3ff71ca122e4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -275,6 +275,7 @@ usbphynop1: usbphynop1 {
 		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
 		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
 		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
+		power-domains = <&pgc_otg1>;
 		clock-names = "main_clk";
 	};
 
@@ -284,6 +285,7 @@ usbphynop2: usbphynop2 {
 		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
 		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
 		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
+		power-domains = <&pgc_otg2>;
 		clock-names = "main_clk";
 	};
 
@@ -669,13 +671,11 @@ pgc_pcie: power-domain@1 {
 					pgc_otg1: power-domain@2 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MM_POWER_DOMAIN_OTG1>;
-						power-domains = <&pgc_hsiomix>;
 					};
 
 					pgc_otg2: power-domain@3 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MM_POWER_DOMAIN_OTG2>;
-						power-domains = <&pgc_hsiomix>;
 					};
 
 					pgc_gpumix: power-domain@4 {
@@ -1180,7 +1180,7 @@ usbotg1: usb@32e40000 {
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				phys = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
-				power-domains = <&pgc_otg1>;
+				power-domains = <&pgc_hsiomix>;
 				status = "disabled";
 			};
 
@@ -1200,7 +1200,7 @@ usbotg2: usb@32e50000 {
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				phys = <&usbphynop2>;
 				fsl,usbmisc = <&usbmisc2 0>;
-				power-domains = <&pgc_otg2>;
+				power-domains = <&pgc_hsiomix>;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 8def5d679e7e..5482180236ae 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -662,7 +662,6 @@ pgc_hsiomix: power-domain@0 {
 					pgc_otg1: power-domain@1 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MN_POWER_DOMAIN_OTG1>;
-						power-domains = <&pgc_hsiomix>;
 					};
 
 					pgc_gpumix: power-domain@2 {
@@ -1076,7 +1075,7 @@ usbotg1: usb@32e40000 {
 				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_500M>;
 				phys = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
-				power-domains = <&pgc_otg1>;
+				power-domains = <&pgc_hsiomix>;
 				status = "disabled";
 			};
 
@@ -1174,6 +1173,7 @@ usbphynop1: usbphynop1 {
 		clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
 		assigned-clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
 		assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_100M>;
+		power-domains = <&pgc_otg1>;
 		clock-names = "main_clk";
 	};
 };
-- 
2.25.1

