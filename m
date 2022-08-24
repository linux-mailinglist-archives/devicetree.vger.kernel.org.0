Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0880D59F539
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 10:27:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232883AbiHXI1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 04:27:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235739AbiHXI1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 04:27:45 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2063.outbound.protection.outlook.com [40.107.21.63])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79E179353D
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 01:27:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iZb4kqBwIEofzy7bIYw/fQ+EVYunu5zLJWV4NjzTC2neJFsGTNpbe+whjWPxlbJBTuiotIfQj/FkEmvZ6oNE3FyrpR8rs0xBIjZByIH+OOs1cyV9EREOdttKG5BesqYpVXFriyAcGOfxAH6ONr+qz7Y5lvka5g1IyO+S7r92bCsuGs4O/TuI2GmKlJ0a8VR6LZsIa9WLfEOvBn049ScA21DZIi8THxd3549IQd2y4LFZFoHaoasmF1N2Q30FM9Vl/e5vnhQ2NPxZafpnOVMP89BGRM9MEmy2ZrC7t2a1aUvTOv06QFAKIkhEiHL4UI9bt8Nquo6sw1IH3JdyD6Ffhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vcnGrfO2KpNMBs5GBhGSgn/jvl5M9TB4Ea3WoBVGNiM=;
 b=OUz3azeIIYQ6f1Qn6gxMr/u09c/jOBrFQbDxffzpLkaCSipcpsXvsGsbhy3j8YqP/LXsbkHGFNd9V1lS9WNDP/MdK4YgK+4AHvfthXELvDnLoMS8mO1u0wO5SBOpHqf0uJTlIUVg8Cx7/Pd9wKL81zgq0MjXepHBMiIDOXxC9l77i7OuTg3E4xBfNIjq0tcJB3t9yuseW2hNJlq9rLxJ+FRZYNMhVWyHexY7elRndfatRqx82ZSX0K8WOx3odzuhrBIsPSskEWKdHQ3wbTfK8QH1+3yKeQCo076sml9Ieyg49WR3+9EiAVjjy+drmifRMBEBYDs+RxxYhNI39JuJkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vcnGrfO2KpNMBs5GBhGSgn/jvl5M9TB4Ea3WoBVGNiM=;
 b=QAMkzlC5Mc4f79JBN7Y3rVoP23ZpYpxc8qigvZc/H8lvLIzofwfgDnQB3SHny0MezVrS5M5At83n0kvfKNdQpmhk0UuHhae6vUASmQprgrKeLTpfHrwwuhWUl8qwX7IL/h3w9dyKV2qX8EshEsG1knpBtG/fQDhl9JDeubp/Sfw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM6PR04MB6279.eurprd04.prod.outlook.com (2603:10a6:20b:b7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.24; Wed, 24 Aug
 2022 08:27:41 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::1c65:f6a7:bc4:eb15]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::1c65:f6a7:bc4:eb15%6]) with mapi id 15.20.5546.022; Wed, 24 Aug 2022
 08:27:41 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com
Cc:     linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        l.stach@pengutronix.de, marex@denx.de, peng.fan@nxp.com,
        paul.elder@ideasonboard.com, jun.li@nxp.com,
        Markus.Niebel@ew.tq-group.com, aford173@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8mp: correct usb clocks
Date:   Wed, 24 Aug 2022 16:10:12 +0800
Message-Id: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0230.apcprd06.prod.outlook.com
 (2603:1096:4:ac::14) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c923e627-f871-4b5a-f31b-08da85aa8281
X-MS-TrafficTypeDiagnostic: AM6PR04MB6279:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Iotmj0CG2kGjIp/AYUnsx8eQuloOhwnIAx1I9aG4llHeS8S93EuKHwBZJ5Wb7O8mWwTF32Pada0QWndcdpJCMSWGa8bOYILNRQzlUiBrPFoKEz635E+U768lOtMjfE1Xpg4KX/1U7AfLNBlCxP+wtjoVnVI8q06ZFYga5zroXwk276ucX4zVE+OP3UHac5nt/L9R4kzbKrfYgNZTXASZlFVaTm2JwA+tAgrM+mzZ5KPRlsWBb/DXEZcuztcmrgpG0Qlf5kbqjRHBzS6Qz/1xuD6LP+biYa6O7gh7onUb//ZIqOFZXGGbAiDKAE/f/lDoWau8laQzSXaAIDMVYZE8hN056+D8DQ/eP8HcuzWQix8RGTBFxRLQGJk93c4DWakjXgXz5Av6Gd1RxjH09Kr+jku9OeSM8B9uv6hCEVLbDg+42Qc8+CoTo3GKHTukKTX397c4LZVKl8Rl/3r8k/x2AB75/7NDFkbwKspIpnPOjPd0q+mvpszb9Q99sm1JvrwvdOepwRy3us/bXS9VhCf7AwKwxkkey1k6A3Y591hl5hE4lE1IUPK3Xd8rlWEPPQkbwBFd6k4tJ4LLf44YSKEYOmYTJMfz4TjYs62znl22ex7hjWDHDJSwVyIJRbLRckH3O9mgb44hrBOaeG5oSxemSwus1acaFWqebtU//+9usMd3Dy8W0CnFkFvj1rrFs0BN3zr8CtIisWKHsozufdkJzV3C9fft2n7xKsz6DfRwrp6wQVqKITYFRd5Uam8FzmpN42+wJdImLqOUHKhYxrcj0arw9UNw3lDVf8KDR8O2YLY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(39860400002)(136003)(376002)(366004)(478600001)(8676002)(5660300002)(6666004)(4326008)(6512007)(66476007)(66556008)(2906002)(66946007)(38100700002)(38350700002)(26005)(6506007)(7416002)(86362001)(316002)(36756003)(8936002)(83380400001)(6486002)(52116002)(186003)(41300700001)(2616005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xanGjDG3YZmrXuXXXZTGYzUKDlXMWFZFOHQgJbtAPLoar8129sDdx4Df1Oc+?=
 =?us-ascii?Q?abIo9ruokz1R2nvSsoND/uKjNtteV0nZf0zDRu0SgKZK2eUU47bXjLc5n4Ii?=
 =?us-ascii?Q?AC3MzBAF86GFBdLypJGa5kDwkBpXPYKbtAmQygECehmjIyukzLY+xP3r2A0w?=
 =?us-ascii?Q?LjHo7xyNnS2WotvWTrmlUMlXYFvfewWyWYf6J4VT/CfanDZ1KwAxPCEXQtMa?=
 =?us-ascii?Q?WHomD/LP+15W9cJ6ZvcxBe8lV520Jwp3CEsIoH1a+FepvG/DBga7GbNmXUp4?=
 =?us-ascii?Q?tz0+lWCi1Sa8/8mb2eWNHfjCEHThoGTyiNGoplTN+2eoeKGeA2bdualj6wOi?=
 =?us-ascii?Q?usXUMbxtdn4aBzd5GsRr6fo3DVNwb4i95X7h85I06GgnYWcgcwIWyXD82RD6?=
 =?us-ascii?Q?Rl4PdQ48uiQgX7WfrsNF1EVVtUvMtrZ46L1Jul9/pBbBrpsuaiAVYGAoKrqw?=
 =?us-ascii?Q?eQmH/RhLP5mSA641rfXz85qhOtvz35xoYBwLaxeIMhDSdaxHWCJvCzEluBTw?=
 =?us-ascii?Q?vM7F2iS69NQnNSbIzF8OBu1jb6ZM44+anhBR0afE0bQQyByBwd3DpcGcoEKu?=
 =?us-ascii?Q?TROxpH475w/aF5si5fkK5Ti1oDxdSqjyEnAehIjgNuse0vwSz0RVQ/Sx7af5?=
 =?us-ascii?Q?rGLYiJ1VWp60BCkPfp48l4jPQ+lDhROiCTjpCraE3eGDGxBcZDWYx2vkyydq?=
 =?us-ascii?Q?qmEiusDtehr8YzcLxfiqa1oOVK+OVfHxaZ1QvkDSqt7vDinig3hAgzqfIvuV?=
 =?us-ascii?Q?vsgk/3E88y/q0z7UeaGpm1NYbpK7i9STcg9QWW12TJi4jKz5aEAo1maTJB6F?=
 =?us-ascii?Q?k1ii7IO2enK7zS6S7/DJyQMClnfulbSPBLrM9ObbbJBwbWwebD13fMrEQrdj?=
 =?us-ascii?Q?HYs58MCIcsYE4oVsBxELUxoD+Eca6TQsoKRAEI9i4tgHsODRbTuNHD2cUTIK?=
 =?us-ascii?Q?J4tBfSFMno5+zQA4/8XDmBJN+F/rSduhGon3V7O76YnVMtbDAp/2E0K1g+HP?=
 =?us-ascii?Q?oD9uXteKf+qK6GclFCCP/+auEdbdTVGC6Jvnn1dOCa+u7etmZH0tqkVJVFzF?=
 =?us-ascii?Q?d4VtcZygQqdoEXI1FhSzC4iYSPoPd+TuRkk8ACc7+GyAL5wphmUx41s0kdNs?=
 =?us-ascii?Q?mcknesrvYbigVOh7y2XPgQzzANacb0bXf5+RFjvGVILk/dZnkkPpLHv1Rs8s?=
 =?us-ascii?Q?saUq2se3A4Zj3oru0/XZWG1X4HvlBHfM0GnBp+dmwLUBkV1+l5kfmR8agFOP?=
 =?us-ascii?Q?TZwARB1K9PZE4p/fVaDQHGckQ25xebiN9rYpvcm5KoKE9Kb6qQ2HnEyaptFE?=
 =?us-ascii?Q?g0KM7hl4mEweJsAA5IgmVWvOia9lqXwb5SrjBq5t+ZQajRgKndfiyUkSEHC0?=
 =?us-ascii?Q?0ujs7JjJnncUhQITIqh59LfI4IyipGjs1EcniPPAt/5NOPOPHrWns/HPlPBy?=
 =?us-ascii?Q?cARuNhSGe/agjxOBDr+A1wcA5wePjrzX8OqlrYfdX3PY3doa/fU7O5lNBwGk?=
 =?us-ascii?Q?cHh1/lxsWJPRE4msjNCPbEjA8laIfpTLq9X55bd+w1l2CmhR9Cywx6gqCS4v?=
 =?us-ascii?Q?Mvv72I6SHGCmoDWVsqc=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c923e627-f871-4b5a-f31b-08da85aa8281
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 08:27:40.9022
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QpT13nchFAWZ1Sha2wspMWVB1pwMC3tpsTBB55HgRizW8agufgjICvOuLnDjeHWv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6279
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
usb_root_clk is no longer for suspend clock so update dts accordingly
to use right bus clock and suspend clock.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index fe178b7d063c..2f18778a057f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1169,7 +1169,7 @@ usb3_0: usb@32f10100 {
 			reg = <0x32f10100 0x8>,
 			      <0x381f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
-				 <&clk IMX8MP_CLK_USB_ROOT>;
+				 <&clk IMX8MP_CLK_USB_SUSP>;
 			clock-names = "hsio", "suspend";
 			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
@@ -1182,9 +1182,9 @@ usb3_0: usb@32f10100 {
 			usb_dwc3_0: usb@38100000 {
 				compatible = "snps,dwc3";
 				reg = <0x38100000 0x10000>;
-				clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+				clocks = <&clk IMX8MP_CLK_USB_ROOT>,
 					 <&clk IMX8MP_CLK_USB_CORE_REF>,
-					 <&clk IMX8MP_CLK_USB_ROOT>;
+					 <&clk IMX8MP_CLK_USB_SUSP>;
 				clock-names = "bus_early", "ref", "suspend";
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb3_phy0>, <&usb3_phy0>;
@@ -1211,7 +1211,7 @@ usb3_1: usb@32f10108 {
 			reg = <0x32f10108 0x8>,
 			      <0x382f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
-				 <&clk IMX8MP_CLK_USB_ROOT>;
+				 <&clk IMX8MP_CLK_USB_SUSP>;
 			clock-names = "hsio", "suspend";
 			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
@@ -1224,9 +1224,9 @@ usb3_1: usb@32f10108 {
 			usb_dwc3_1: usb@38200000 {
 				compatible = "snps,dwc3";
 				reg = <0x38200000 0x10000>;
-				clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+				clocks = <&clk IMX8MP_CLK_USB_ROOT>,
 					 <&clk IMX8MP_CLK_USB_CORE_REF>,
-					 <&clk IMX8MP_CLK_USB_ROOT>;
+					 <&clk IMX8MP_CLK_USB_SUSP>;
 				clock-names = "bus_early", "ref", "suspend";
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb3_phy1>, <&usb3_phy1>;
-- 
2.34.1

