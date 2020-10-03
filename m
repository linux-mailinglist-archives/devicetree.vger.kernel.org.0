Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A678D282406
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 14:07:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725782AbgJCMHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 08:07:09 -0400
Received: from mail-eopbgr00077.outbound.protection.outlook.com ([40.107.0.77]:47079
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725777AbgJCMHI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 3 Oct 2020 08:07:08 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h4ErogMEs9iAuBz/hjnun9xIMoRvjzdHNVZZUp4wBdXU5Yq0++3YPacqVNtiO7IjkPJ9ANVUHUfT2pxTT2j8JecIlIsKL5Td0odPbR9+63WkMzN8qx9i1/ghNPSvCyzct3xsOnLK2tjekwR8GzDye91sD7eT6K14kdSk5PIlgZewhTXBnjr0wP2AvOWuivfGYtc5aCJwWwoPUBaC3sCq81QP4AOtkk26cLuWPppHpHK0uOeZ7N5CVkTVLhzKcssfRdTn3uRhuPUlgqB/HIg2pGGKjypY0E2olcWffitBp+y+Ko+WJVvNgMMroqSLhpiVmSysRPnRGPpODq3GtRQqqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Py5KZUCBRwBSTsLQVFjylZ7+FFqsm3an6nHryoArNyg=;
 b=dynsviYfZFbfEVDw2Wm9cGS0tKIzQnW16+sSKfF5Yj8BxvrPUOuU/IujI9eHI+Opio3GS2qJCk++ZofsGVTetHnkQ6GKqIqwRGDYD5JutrXjV/BTzad9QxjDB15X09T8+pbV4aBgi/sE638c/j5Vh0xPy9/Al4xWaJMpDoZdFLJziA46ldZE0APHhfirWVvYwaCGoIJjelbVwxr2+t5Opna9XLKnzHAJJEjUD/xuUe+OmghyXALrn62WJi2PFB8eGiWsZLLev7DKcAQ+XMn1pNMc9kOpLV9I49VZTyLHvD3GezurUl/uHwQQPBbyuNXIHUyoGcADmJJ8l0gcgRIALA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Py5KZUCBRwBSTsLQVFjylZ7+FFqsm3an6nHryoArNyg=;
 b=HmgEiV+YdlzIOWNdDP8c/9EqZCt08VDPes8OHPl+PZKhBGgi9p5VWWAWfWzXNH/4Y1ClnKSPuz3RHSXflC7HFMImW4TkwPZEfJf6TepB4p5RLHf3F68oyfSdFPnJFlwDwXE0IAMHHRJaOcvgMDgmmuYEedq/XKjhvjxfAR2Pl0A=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VI1PR04MB4064.eurprd04.prod.outlook.com (2603:10a6:803:4c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Sat, 3 Oct
 2020 12:06:56 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7%4]) with mapi id 15.20.3433.039; Sat, 3 Oct 2020
 12:06:56 +0000
From:   Li Jun <jun.li@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, balbi@kernel.org
Cc:     krzk@kernel.org, gregkh@linuxfoundation.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, Anson.Huang@nxp.com, jun.li@nxp.com,
        aisheng.dong@nxp.com, peng.fan@nxp.com, fugang.duan@nxp.com,
        horia.geanta@nxp.com, qiangqing.zhang@nxp.com, peter.chen@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 3/4] arm64: dtsi: imx8mp: add usb nodes
Date:   Sat,  3 Oct 2020 20:02:06 +0800
Message-Id: <1601726527-23326-4-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
References: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28)
 To VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3433.35 via Frontend Transport; Sat, 3 Oct 2020 12:06:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: cc94ad67-3e1f-40e8-3dc4-08d86794d2b4
X-MS-TrafficTypeDiagnostic: VI1PR04MB4064:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB4064D5399BB2E627FDFA629B890E0@VI1PR04MB4064.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:849;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a+lf33xin+CKG4yHD3wRTU5iwmrGwVYBTPMhI8IDSFco6lwpcBf5In+3cSqFfyDuFbnauaHkelWVdFqbwPLh8852skeZ/cQVNEexYE+hyR3NjcundeT0esFLYBLrIvub5PUEfZaDyTrO/B6gDOyh3QDJ5DUL860Qr5z2tTr4sCKqPzYndIqrOerSO3lilQD3tLYAKaq0vaG+CqYCHRqxjVAKqNQ6Q0USmHKogu+Wv9heUkg/a5UiqKVYtkG0OT6RkkMDX5FRDw6djjP7TmWK9Llhou4hIGEbcf0pyY2GxcR64WeMzGcAMI7eXCyfm/1Cf/y5CDsTz7CyOSVJzBpmLBbFOXa3tNcRyM2mkAqJAAg1B98J6bgsunQhsA5IA2aosuyckudBVzd4mvDoy85ffep1bQF0TEz1RV49UPzAtlc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6528.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(2906002)(8936002)(16526019)(66946007)(66556008)(66476007)(186003)(6512007)(6486002)(8676002)(7416002)(69590400008)(83380400001)(36756003)(26005)(5660300002)(6666004)(52116002)(478600001)(316002)(86362001)(6506007)(956004)(4326008)(2616005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: B3GMVrBkUg4hCdV5l90mOK41I/TCPpzDTMOxb6RZFywB7qie5TG+FRCqaiOH1oCXhzfmDG3fq0dReYKWVza4P/6Y4mwUGoDESCQJcd4WepsmANZHyXrX1frX/zSViWm+ILobbXGoHySaO3PTHvRBsSbtr01kqhzQAXQPwkZkH22rhTzX8j5IEX/U+A4gbFay7dqyq8wQh9Bhf+fW9exanjRufG8UjkUwZdAZ5P8OIA4q61YCHYuxc6wU5On86UV3yKqHgzBx2rfsppOl3uVcbwb/mY3qdbTfK7bYPBmP2mk4vK33OAkq72cVaj674htoqlyRQhnQpVibhH6GodjhkRTfZnOZ7IvviEezr4hTfoMvTYlurpv1OWkdQMKWo3D3NgCzlZPdsns8OinZ4av3CJLgo5ne/cVxTgpe0PEKF2xckEPJbZw1S6ogEPDrLcKbVsSwzbzAYPxtL1jXWsadXsjixadsFV1gBqNOB7+fD41MI6vJNQ3EKK52uB+rvohpWOCHzcpuzuMa3UAQXLfzUENJk/DM5Iu1/x/58ep0XA3ij2ua6aOQP+kYwQ7ScTnVqXgWM6SZaFeMJFM6CUEI6Dm/8oiSYYA4COgpUKk70OIhPZJQyhvX6WPAwejYagUBe6f4wqNS/6+fet3620ArVw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc94ad67-3e1f-40e8-3dc4-08d86794d2b4
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6528.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2020 12:06:56.3751
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k60WrcR2vaICS81yZQrzwjaymp0W2jV/FhnSYRiGIkaaGjAXWFS1XzLvFDDi1mp4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4064
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

imx8mp integrates 2 identical dwc3 based USB3 controllers and
Synopsys phys, each instance has additional wakeup logic to
support low power mode, so the glue layer need a node with dwc3
core sub node.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 82 +++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9de2aa1..2d2efc9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -750,5 +750,87 @@
 			reg = <0x3d800000 0x400000>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		usb3_phy0: usb-phy@381f0040 {
+			compatible = "fsl,imx8mp-usb-phy";
+			reg = <0x381f0040 0x40>;
+			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
+			clock-names = "phy";
+			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
+			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		usb3_0: usb@32f10100 {
+			compatible = "fsl,imx8mp-dwc3";
+			reg = <0x32f10100 0x8>;
+			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+				 <&clk IMX8MP_CLK_USB_ROOT>;
+			clock-names = "hsio", "suspend";
+			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
+			ranges;
+			status = "disabled";
+
+			usb_dwc3_0: dwc3@38100000 {
+				compatible = "snps,dwc3";
+				reg = <0x38100000 0x10000>;
+				clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+					 <&clk IMX8MP_CLK_USB_CORE_REF>,
+					 <&clk IMX8MP_CLK_USB_ROOT>;
+				clock-names = "bus_early", "ref", "suspend";
+				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
+				assigned-clock-rates = <500000000>;
+				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb3_phy0>, <&usb3_phy0>;
+				phy-names = "usb2-phy", "usb3-phy";
+				snps,dis-u2-freeclk-exists-quirk;
+			};
+
+		};
+
+		usb3_phy1: usb-phy@382f0040 {
+			compatible = "fsl,imx8mp-usb-phy";
+			reg = <0x382f0040 0x40>;
+			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
+			clock-names = "phy";
+			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
+			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+			#phy-cells = <0>;
+		};
+
+		usb3_1: usb@32f10108 {
+			compatible = "fsl,imx8mp-dwc3";
+			reg = <0x32f10108 0x8>;
+			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+				 <&clk IMX8MP_CLK_USB_ROOT>;
+			clock-names = "hsio", "suspend";
+			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
+			ranges;
+			status = "disabled";
+
+			usb_dwc3_1: dwc3@38200000 {
+				compatible = "snps,dwc3";
+				reg = <0x38200000 0x10000>;
+				clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+					 <&clk IMX8MP_CLK_USB_CORE_REF>,
+					 <&clk IMX8MP_CLK_USB_ROOT>;
+				clock-names = "bus_early", "ref", "suspend";
+				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
+				assigned-clock-rates = <500000000>;
+				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb3_phy1>, <&usb3_phy1>;
+				phy-names = "usb2-phy", "usb3-phy";
+				snps,dis-u2-freeclk-exists-quirk;
+			};
+		};
 	};
 };
-- 
2.7.4

