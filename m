Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B793F5EA7B1
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 15:55:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233095AbiIZNzE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 09:55:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234223AbiIZNyU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 09:54:20 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on20607.outbound.protection.outlook.com [IPv6:2a01:111:f400:7e1b::607])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 329C4A4BA6
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:10:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P1F+y36rSInt8k0QdPy8kvi8Y1iVemiZKULvNjtekcdgy744MRF55Yfye02qD+wt4VcpMJ474Qu13yvaowrUjCuXKg5F4fZxOxyH59BtrlmuRQluQ1/XSlwbR1q+zxdPA6StepWPyZfXxh+VakgpXAICu06fUVDUdKHQUPiaoJL9IaUjVQSKlzlIKDX5MiWu45KlfMtDX3t74ipkNInOF//YrRgCa1KYoFctUGw0sm1zONWGD4X2WN8xPS7M42KEEEyav2SldrmXTcK3ZwopuzNCnOBDhuyLPR84sLZ+dVWR9O+xfDqOR802XQQ9DgF8ow+5LCOoXVCs1UsntlpXLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HviPUjPALip38KKW1Fci6sIFPhGWPHQj6QVEMYV87X0=;
 b=dmq8kVKSMgPrMXRzjFgS4XtrZmfFPXW9u0HTxuYDZegaK76qqYmUSjMDwTtxlENXMDHCGYA5B8JXflEIBCRVXweNPSQ+bid6fQyE+MhXWpQhI85qJEPzFj90DJQsEeP2O2MRwfvErslzYFFTVZZncS+xJJ5MaLJ6q5irutcb/pf0P7n6LUVZrT5WY0JBPZWglYvMhovmroPTOTL7Wi5rYNIKt0l3jh46bdXpyFC1ENTGa5QlW92OjgMEfG4S2SeWNQSpErd3ejzMgLte26oHGG/5iimEkz10QJ8uoWPEJG/8OUF9F7gGON1aAn8OZVFIQn4DsazmUT5Tskwf0zm7dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HviPUjPALip38KKW1Fci6sIFPhGWPHQj6QVEMYV87X0=;
 b=hFgROA5ZSDu4UKDBR6Zm9B0PJh87S4LrMSHTxA+GlfFmy5P1BsX2fpU570ReC4ZFnqNuL1AobrhEFDdHOeFcmVe0fNs8NWgWjilEmy8SOiD2qaNQldvCdVzRaQ8W737dIQvijTA1zccKHOFlahNYWCv790vVQJihot8SrnBi+SI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM9PR04MB8842.eurprd04.prod.outlook.com (2603:10a6:20b:409::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 12:05:41 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea%7]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 12:05:41 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     l.stach@pengutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aford173@gmail.com, tharvey@gateworks.com,
        frieder.schrempf@kontron.de, marex@denx.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        xu.yang_2@nxp.com, jun.li@nxp.com
Subject: [PATCH 2/4] arm64: dts: imx8mm: correct usb power domains
Date:   Mon, 26 Sep 2022 19:45:33 +0800
Message-Id: <1664192735-14313-3-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
References: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:4:195::16) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9640:EE_|AM9PR04MB8842:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f4ed972-864d-4a09-6b9e-08da9fb76e87
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iyYHN2NS5NqhtqnPxogp05znIXktPoxODx9S6Vsvgd+OixzrUJ9/3Ygg/ZiRV1ojEGpvUvvRWg2/u1D7DAjrXTi6Uudmuhub4Hvm74/A8x8fEa8o0mTG6MjDwnIvID7mZQ681Jq3jaLY2bpvXwFoJqcGsl8stBcA6KsQvyPRT/9VH2LJCr9jE2kpEeim2XUsnhjopL3rSDpZ6Y28DlNvX57KWAZ1EGQWPw2Ll7B1WNJeZsy9pFQ3/aAq7vQlV8HuWYOkpR5ytrhW1ZVxzvNScodf776Kh18fCOJP2iNTYc3HcRKxUY0F0bRFdG/Ke7+/qPoDP+J2CUpsAMGI/WbtNJRBnCE8kT+61+mH70ol5c2nN7j4ywY1pB44Rs7LHk5sG7boovm8RRXDK0KYK1A6piJWTdAU2CnZODCdoFccWCXEsnoNcuEuoOhgBWrLk+coTQryMlAzKWYhOaPyda660gJl64TrkGOL1e7AML9PUzaVHx4xRZpA8qRXY9cOmUEaG85ss9OZAamVM8jf+v8y78WbwomTCnr2chGa7ltpUtOr3YNXPOnfx/4Jk/XLSEMul4dVw+BoYSjCmsoVALxJk/x+w9YHWJKtQcD+8FklBQtrjZszuheKeBGa5Q+m/kzkKE3VjTEWGdF/QBXbkAJsDLH+nNz7mH8b9aFsYlCdUZW188FtZ0F+bjvcKPwj3RhQHAMotGpMm+EPpirGZvUcX8Oszj/SxQ9atxbqtoOKx5DajZqfd0ovb2c9DtLZVq+IyqVN+JFHDsmX67yl85S/1KrXmHoSaJWMT+mUDNW0b9g=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(451199015)(2616005)(186003)(86362001)(38350700002)(38100700002)(8936002)(83380400001)(66946007)(66556008)(4326008)(8676002)(66476007)(41300700001)(2906002)(26005)(6506007)(6512007)(7416002)(6666004)(52116002)(316002)(6916009)(478600001)(6486002)(36756003)(5660300002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W1PIssY6HGmOttczQipMFwscaoCIZfmKjAvx6Z1R0+nPAsMT5/+W6yzZUy+D?=
 =?us-ascii?Q?nODS0mjX78RSrIrDwr6yA8EylBQQh2cZJu6N4EkhnJ8eW5T13cM9aTd7zmcb?=
 =?us-ascii?Q?kalvFXpcLhe4AReXFphT9zCxdOrt/yxMQUEMyPSdcTSH+qDIjIohEmHRuun+?=
 =?us-ascii?Q?mKyTM1ed8Mjodc7yRr0kr1ylI09CKFeqk1MTrn0Zez6pveNNN+PkCiyoxm+O?=
 =?us-ascii?Q?42owH1CoaEe07UV8etGOeFZGuRy0Ev7vZKN8+gd4gpR/QlrEIBn6FC0zSFxs?=
 =?us-ascii?Q?yJpwhY3DKeW5Sj3v9zmDIV5CAmd3MZ0q0r5H0VEk808p0O3q6HeDXLe/xsP4?=
 =?us-ascii?Q?CxeENqrtJm6ZZBkAloo+19lnrOS9254UFb86eJ9Uq0qZT49hG+CY1jRtktEV?=
 =?us-ascii?Q?Mut5GEgniC7ZZssAkEsBu6Nhw7kUBqDAdbuq9+EaMJRQJZqoVSAXC/tLOokK?=
 =?us-ascii?Q?IWAl6dlCa2d4hoYY6Hq3QT+iXm/xEP/3KgMTZUdlS3ebJCc0gP6tFsq0AYWa?=
 =?us-ascii?Q?JDmC9KNZDdtHBE18le5V2eo21eyRByuDt34AbdAtbGVp8YUEasIKiRBJG7ZR?=
 =?us-ascii?Q?bJCIwb8cociC/hBUR1DsigfE/wJKdke6cufE2hvbAvYaUFvl/hncqMLY+mLS?=
 =?us-ascii?Q?WQdshHxg6oX/lEM+1xduHZynSdK0XGgVhIpDvae9xK3GzdtdVOhOi0wUbXZK?=
 =?us-ascii?Q?Txfs3yrGjHkndZzmaiWmpPOnqcxts6G62aH+4U7M4a2xgoWakpm9x5tXJvLo?=
 =?us-ascii?Q?Wuu4xUx+uTNVujekOnr1Cnv2WWmhw75cg6eyUMCiSjNHSTfkwgZIHDy1kkXc?=
 =?us-ascii?Q?gbmiaMQAIKTwn3K7IB6qXwxEnJgHde2t4PPS/HmLE+wXPTpEh+aO7wORyriS?=
 =?us-ascii?Q?4NEESh2GycmUSQupo6FFFv/XN+8Gb7mjHcDNS93zqiM3AnVxPyvqxItqjMXU?=
 =?us-ascii?Q?TDvnJ8ItENMJtveMUiwnYaEULeowyrBn9j4K3hR6KHXwICZXAz2fIEVG8mg3?=
 =?us-ascii?Q?QNBIs5Np7EZG1iKolVvLVgF8Qm2KiNq8A1tSVvIIQnJ4aq8lOPcf6sNWUCvD?=
 =?us-ascii?Q?XBZFvC19JTzL65y5pc9WAgXWRL25RPlzCxjCFMtwiM12RvGcBC5KFXYvDXz2?=
 =?us-ascii?Q?dSIKDRrGRKbFCTWiN44iuR8axQSSjSnFQvTq52st4kidLSsv9fKdDBVxImxG?=
 =?us-ascii?Q?DsMPIxSTDYTlqdXYryALQUOH6GW6akJa/nZY/4mcgfPFzOzEBx1F4TBFIY7Z?=
 =?us-ascii?Q?geTj4nPvmxdlEeOMY6vmaXQ4MV8vzOSyxxWXInUtWHRCEqOMJ8WuPkb+eJZe?=
 =?us-ascii?Q?mGvVHqsrHHOEMsXsZquZFYmtpCsqYEI40EWE2X4J1uieZXH2x02uR4vF9t+b?=
 =?us-ascii?Q?5EwcO3p63Np3mOft4iJFOzt1xHyW8Wjs1UIq0kJtBv5XOOQnRFCRmh4XiRTF?=
 =?us-ascii?Q?yg4P5qZxQ8NE9RamPL+APoUG/MmVdfYups6II4RFKdW/nCTs2IKJGHpMX2rg?=
 =?us-ascii?Q?4kWYg1+a1ByrasVWBxeZsJNF7xPnX+tnj3RthmF0CLuzmgK3I0XnJwLa8Qfp?=
 =?us-ascii?Q?OW/Vel47CtSW9fpx0iY=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f4ed972-864d-4a09-6b9e-08da9fb76e87
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 12:05:41.4339
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AcaekENgxnNXKWT9X15ZekczW4j+nS2myc7pO1Usa41CChzG3N5VZKWi3IOLwc45
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8842
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,T_SPF_PERMERROR autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pgc_otg1/2 is actual the power domain of usb PHY, usb controller
is in hsio power domain, and pgc_otg1/2 is required to be powered
up to detect usb remote wakeup, so move the pgc_otg1/2 power domain
to the usb phy node.

Fixes: 01df28d80859 ("arm64: dts: imx8mm: put USB controllers into power-domains")
Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 41204b871f4f..dabd94dc30c4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -276,6 +276,7 @@ usbphynop1: usbphynop1 {
 		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
 		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
 		clock-names = "main_clk";
+		power-domains = <&pgc_otg1>;
 	};
 
 	usbphynop2: usbphynop2 {
@@ -285,6 +286,7 @@ usbphynop2: usbphynop2 {
 		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
 		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
 		clock-names = "main_clk";
+		power-domains = <&pgc_otg2>;
 	};
 
 	soc: soc@0 {
@@ -1184,7 +1186,7 @@ usbotg1: usb@32e40000 {
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				phys = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
-				power-domains = <&pgc_otg1>;
+				power-domains = <&pgc_hsiomix>;
 				status = "disabled";
 			};
 
@@ -1204,7 +1206,7 @@ usbotg2: usb@32e50000 {
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				phys = <&usbphynop2>;
 				fsl,usbmisc = <&usbmisc2 0>;
-				power-domains = <&pgc_otg2>;
+				power-domains = <&pgc_hsiomix>;
 				status = "disabled";
 			};
 
-- 
2.34.1

