Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA6A45BC297
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 07:45:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbiISFpc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 01:45:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbiISFpb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 01:45:31 -0400
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2050.outbound.protection.outlook.com [40.107.105.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75DE913D7A
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 22:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mJUoQxgHqemUOy/niVamHZoy0x2fl/xSz/0I5f+BXMQi25oQIM+I6oJP7vwXLIBucwCcag36w+TtdPXCrS6ZJu4Tgo/8Jn04bxDIyRE8QcM9e1qJqAYFjDj13V/AmedbYVfmCpKWVNwO1AHFx0UISK3w4oeODIwalD5fITQESz7WBUB7Ce1t+rRZBparAxq/lM7UCue1mw+/07H4VIffyBv2wpOI2OhqCrHWi95Sp3BItShODNNqLLKivBFruo36iBvLbeFPFWLDXiU+QBlIUdMIEnsun4b3pT4Lu3NUvtWQRbfX5VOua73hyG1ACvhLJLpwKWoUGR0AMxiOQo5PeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CWhSpPkaR82tk29/PIO6mSmc3o3zLeAxSAiIYp2nglo=;
 b=OtDzUh1zcc7ySKvuH3XoPV7xpa+PZGJKVkDO/nlZFEnlrrMwKMeTc8NKlJp3FcPrHqXADQ4lWHeTSvzjj6yZPPAIl6jzhaH2oxaWtX5e4n78BaJbOMX3JudxvXmXqGtA3NkQkLltiv7lXRJpgeJSbiwfpGX3+0dZdJ72EYGpv2splnPj1GUhQVh0ZjLTGUzO9wzpHayjrpcZtSyq38iCoOgB8AlRzUrzVlUaEY5XY5Fl60vechxgSr9TalmMtXwVES+mRP1Xz9EJVfuxlHa9Yu2K6LKjS9vPAz4kMIelWf8cxpUPbNaPpxaHJ6mobEaFggTqWrGgnrkbjYL9SVl4GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CWhSpPkaR82tk29/PIO6mSmc3o3zLeAxSAiIYp2nglo=;
 b=A4f6Bxf1VXNxWzq1vVNVQOF44+AAL949uovOLQHVF0XMlkUazgmyRRtnT3T4xHeOfvsZiaCz+L1su3zQu86Q5w/NiJpJtNXl2ndqCrg2rAH3e9B12/lPRuhfPWUwdfdKEm7bTeJJ5appvhJyWZaEr/H560BemeboGHaMOzZoZxs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM9PR04MB7569.eurprd04.prod.outlook.com (2603:10a6:20b:2d8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Mon, 19 Sep
 2022 05:45:25 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea%6]) with mapi id 15.20.5632.018; Mon, 19 Sep 2022
 05:45:25 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com
Cc:     linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        l.stach@pengutronix.de, marex@denx.de, peng.fan@nxp.com,
        paul.elder@ideasonboard.com, jun.li@nxp.com,
        Markus.Niebel@ew.tq-group.com, aford173@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] arm64: dts: imx8mp: correct usb clocks
Date:   Mon, 19 Sep 2022 13:26:37 +0800
Message-Id: <1663565197-3961-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0017.apcprd04.prod.outlook.com
 (2603:1096:4:197::15) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9640:EE_|AM9PR04MB7569:EE_
X-MS-Office365-Filtering-Correlation-Id: f634938a-f8b3-4a9a-d916-08da9a022658
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dm5rbqHi8BAkUrDTFcLI+aI2W3ediyhe/R33ZBVGYl2o8hP6p3owkqYHLyf1gpbO7nOtyRGDAy0R+SWbSwBTc0KG2596A2P4+m9Ed7KiyWzE/6XykHLItQ7hANkbshq5NTfYMhAv3ggsHW23UJrszGoaLdYFf+S2RrGyKFl0GOaWH07HnbvZEqhkGRH1DYa6sbBa0nxRz7v5hP30mgU6ECVuH9pmCFsHEeSVmILlil6diyp6fbrVY+FNgiBb3aEu9gQEvzWe3KuUpMx0/TSKEv4f9XnW2FZuHYIAkTrwaiC4P59sTiY8CC0A6bU+JHc9hMhLBbvOy+eLtZvKg1+S6sFOwQan5G+1Q8hITk1I9IMC8I2XZ09hiGZLthduwDKYpfWs6pCz/GO2ZsqISDwUsr3s2TeiM3T2Pg85DWZ3+3MevOj/vrakVMzJTPYvh4e3E1x17lmxYsrs66nGS/YHtj+9JrFhQFvg4Hbp53DTylvjEvqB6M8CwTC7/q+VZhk9VEbmsvkDOEsC7poJQLOgfvhWip0VYedDRsnUXDfp4EVhOe30JOB29IlgVYkR/W7sLe28Of0xIl+WNrqUoufQ8DgCn6i86xjmry9vsKgTHxElumpUaYB5qRZg6CLC1Pi9Okx1fSijOyeGgSA5RlQK8mS9xcR5fbsJUll+UmDWKh7F4n+3C3EgjgcPE3QRXZRg+QF1ZORv79eRaoKio9sIKFwwSbcvYUDZWQzqvFps+GsuQxjoKrvdfyzlXmEyQb+xJSA9JU8+UimnIc8EshVC+SwN9DDjKiEssWmGikeoHpY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(346002)(39860400002)(396003)(376002)(366004)(451199015)(36756003)(5660300002)(7416002)(6666004)(86362001)(316002)(38100700002)(38350700002)(2906002)(83380400001)(6486002)(186003)(8936002)(2616005)(6506007)(4326008)(52116002)(6512007)(26005)(41300700001)(478600001)(8676002)(66556008)(66946007)(66476007)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NPx+0dPOSPoNaFtLToOE5tUKCSkWsnUTgCS+yjROT+bzOPY8M8IU7ZhV2qkq?=
 =?us-ascii?Q?dtg+r9Rru6tlCDJmbxn98bgg7zHA4NGC3QVgRWSAfD7zTbjrEakkKQATUmGa?=
 =?us-ascii?Q?I0LD/7/kG7bbmCs04YgpYlLV9dhraQV0M4PT4pMM6pWW964Jo7r4YKMvamhR?=
 =?us-ascii?Q?xvMBmhV8YqZhW4jOt9C46ORC2uYxJK0sHcIl/Su+eQ8LuoU6F/y86TwYn5Pi?=
 =?us-ascii?Q?j8E4gJaOD7p9z4UAMs1XFb2xdGOctJkK9Z4oK/xNPqOxTqzxqq1TeRFbve2Z?=
 =?us-ascii?Q?NxhzjYmHDqOQOA+1eS5RvGdxKNZnhuoQ2xSwJKRnfP28VuNKuhiOIDNotq58?=
 =?us-ascii?Q?41s6gasiG/O0A5yhW0M+SMXeiDQm7nhmNY6NQyGxkmKekBWjhdl/J9z4wK3f?=
 =?us-ascii?Q?XYJbW+qvNXlwl2P5y6YSSHC/Ml/UB3tG2Q25LOuKr6kQB6G7lMqkxXYio4om?=
 =?us-ascii?Q?zqNZcr4zB3ko9jJLw7r5vpAGenJweGOtuellXa4cJaapg6SFD6KVZe+Twgcd?=
 =?us-ascii?Q?8/zdi5LKu1cMkPuGUZTZ7gXfbubSk5mDj7OOp18+dRtrNijH39+bQqfPk4sO?=
 =?us-ascii?Q?apiwpfkrfTyCEE1RT1MQF8B8KDooTURK8WX7hxLpyZN7XRJ28YD1eHWgHSdP?=
 =?us-ascii?Q?Z8HVYzogKqzPi+vltBCWLHzG9Jry8wneWWyFSq4htMWmPCeeFtaIRHuUfJT5?=
 =?us-ascii?Q?1rWZMEM80bHoIVQt4vzZOTIk/X7J0l+f9nKBteBkOL6NP285ww8ZgzxGGMdb?=
 =?us-ascii?Q?tdJRgmR1X94JEMPs74uDPYT0uCyFts82KLDEk/h7+Lco6eHdKEjWlHKqk6tm?=
 =?us-ascii?Q?X9MtVgi+04QOM2GuCklqT+JAEH/+9+aGdGscn/0ankHz6w1haw28fsroNR9Q?=
 =?us-ascii?Q?vvtd9GtLpuHofxLd7ykE52Hk2rVAgZAykQnT6BOOmoFhE6yfjPHjKggUeP2E?=
 =?us-ascii?Q?9EIT/uRPWs69vE3/Y7qDeuuQf5lyPji7aeO2dFYlecpcAnxpG19mBRFq5/hG?=
 =?us-ascii?Q?w3oTg9VbjmpO+iTXDscARvs8DG8Ep0q/FvxE96Q/aSn5rhYfiQv7ZfFOMmz0?=
 =?us-ascii?Q?BAWODPyxWn7Y9eURHPTpuYrs5/eC/XeyA8ZC4/q/H2QJzTotJWfwhMgZRA6Y?=
 =?us-ascii?Q?pkFbhqoPwwCeILGNA2zOhSbSm2/4a37mnv50XNkbcKlUvxd7mQcAaBjWELkS?=
 =?us-ascii?Q?VERhzaktnwwuhY9wanvyYcStL+UYGY/fHqoZcZWuRdheHkCXvFLcdMXHB8nZ?=
 =?us-ascii?Q?qB1J0T06pCGQh+C4ZbP1OJGfg3JKV6JYbfVEM6eHIZckxIyU4mg20wjv8FFe?=
 =?us-ascii?Q?+GEa77L/9ISjYzKWz9vo1uInPpX7gmrQh4VV7hVguShLbFxa88JJf+f831GX?=
 =?us-ascii?Q?+96QYMQpbrEZ+sN3ZhOSzBdxe8OuDKCEUre+CDT7bMHTEdARLkoV7DaV8V/B?=
 =?us-ascii?Q?rUdRGWkz4UDOSeptRXJ1sqYVq1vWLzBytV96kRv9hvMZ6UtqKwFKizxHQeja?=
 =?us-ascii?Q?1mgM/YysaQ8HbaXqElgDEnlm71s4EI11d4bKOZy+KErexslOOcX5L91XmLaJ?=
 =?us-ascii?Q?ZWyJe6+qWQICWxIuS9Y=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f634938a-f8b3-4a9a-d916-08da9a022658
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 05:45:25.2346
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d3ZENm6jKOr5rFfYmVVCIoZx2KT8tsuaHEcQS0pwcaZ3r8atl8MP5Pd/B4P2Y44V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7569
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
usb_root_clk is no longer for suspend clock so update dts accordingly
to use right bus clock and suspend clock.

Fixes: fb8587a2c165 ("arm64: dtsi: imx8mp: add usb nodes")
Cc: stable@vger.kernel.org # v5.19+
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Signed-off-by: Li Jun <jun.li@nxp.com>
---
change for v3:
-  Add fixes tag, Alexander's T-b and Peng's R-b tages.

change for v2:
- Add stable tag to apply v5.19+

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

