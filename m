Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 309A243A58E
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 23:10:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbhJYVNI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 17:13:08 -0400
Received: from mail.kernel.org ([198.145.29.99]:42422 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234604AbhJYVNH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 17:13:07 -0400
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6C4D26109D;
        Mon, 25 Oct 2021 21:10:44 +0000 (UTC)
Received: from sofa.misterjones.org ([185.219.108.64] helo=wait-a-minute.lan)
        by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <maz@kernel.org>)
        id 1mf7Ew-001WA3-Je; Mon, 25 Oct 2021 22:10:42 +0100
From:   Marc Zyngier <maz@kernel.org>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Sven Peter <sven@svenpeter.dev>,
        Hector Martin <marcan@marcan.st>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        kernel-team@android.com
Subject: [PATCH 2/5] arm64: apple: Add PCIe node
Date:   Mon, 25 Oct 2021 22:10:15 +0100
Message-Id: <20211025211018.744363-3-maz@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211025211018.744363-1-maz@kernel.org>
References: <20211025211018.744363-1-maz@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kettenis@openbsd.org, sven@svenpeter.dev, marcan@marcan.st, alyssa@rosenzweig.io, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Mark Kettenis <kettenis@openbsd.org>

Add node corresponding to the apcie,t8103 node in the
Apple device tree for the Mac mini (M1, 2020).

Power domain references and DART (IOMMU) references are left out
at the moment and will be added once the appropriate bindings have
been settled upon.

Acked-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Mark Kettenis <kettenis@openbsd.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20210921183420.436-5-kettenis@openbsd.org
---
 arch/arm64/boot/dts/apple/t8103.dtsi | 63 ++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8103.dtsi b/arch/arm64/boot/dts/apple/t8103.dtsi
index 7af1ffbc970d..ed562e1103a9 100644
--- a/arch/arm64/boot/dts/apple/t8103.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103.dtsi
@@ -218,5 +218,68 @@ pinctrl_smc: pinctrl@23e820000 {
 				     <AIC_IRQ 396 IRQ_TYPE_LEVEL_HIGH>,
 				     <AIC_IRQ 397 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		pcie0: pcie@690000000 {
+			compatible = "apple,t8103-pcie", "apple,pcie";
+			device_type = "pci";
+
+			reg = <0x6 0x90000000 0x0 0x1000000>,
+			      <0x6 0x80000000 0x0 0x100000>,
+			      <0x6 0x81000000 0x0 0x4000>,
+			      <0x6 0x82000000 0x0 0x4000>,
+			      <0x6 0x83000000 0x0 0x4000>;
+			reg-names = "config", "rc", "port0", "port1", "port2";
+
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 695 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 698 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 701 IRQ_TYPE_LEVEL_HIGH>;
+
+			msi-controller;
+			msi-parent = <&pcie0>;
+			msi-ranges = <&aic AIC_IRQ 704 IRQ_TYPE_EDGE_RISING 32>;
+
+			bus-range = <0 3>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x43000000 0x6 0xa0000000 0x6 0xa0000000 0x0 0x20000000>,
+				 <0x02000000 0x0 0xc0000000 0x6 0xc0000000 0x0 0x40000000>;
+
+			pinctrl-0 = <&pcie_pins>;
+			pinctrl-names = "default";
+
+			pci@0,0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				reset-gpios = <&pinctrl_ap 152 0>;
+				max-link-speed = <2>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+
+			pci@1,0 {
+				device_type = "pci";
+				reg = <0x800 0x0 0x0 0x0 0x0>;
+				reset-gpios = <&pinctrl_ap 153 0>;
+				max-link-speed = <2>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+
+			pci@2,0 {
+				device_type = "pci";
+				reg = <0x1000 0x0 0x0 0x0 0x0>;
+				reset-gpios = <&pinctrl_ap 33 0>;
+				max-link-speed = <1>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
 	};
 };
-- 
2.30.2

