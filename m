Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3000332C40
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 17:37:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230457AbhCIQhT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 11:37:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230421AbhCIQhF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 11:37:05 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 600BFC06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 08:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=jJO2Umg1aUFTqqrJb3xrIy7tfFXePCgnzEdDZpM7Vwk=; b=LGctF9x4PhuPz2jWDtWDHiGdMb
        6kiAIuosuMhzyFgkAWT8R1e86+Xjk264QFLM1IU3d/eT6Cy7Du/PmMQQwEdiidCU/0ckZM7zS3xgd
        XHYdSlL7iI5GjGH0i0V5q0DR4c4M1gWeN7tSqPmuxTUNwhMf9LmlG/+1LomRXNkZ4RVNI0t0x8z5S
        fTKRQTueBlXnqZuL9uPLS1NVhSRFzE7CP74HVNBDvpVHTW2Fq5akFZZzf6vCus3KCmEEJV3Odid0e
        Iyzg1gm6NeiSqWrzAq2RwQe6h1+VJ0x8F2J93GKiG2ksjmh00bm7AtNTXfdRHlb6A+y6PHhmr2dGX
        5Ck2idrw==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:47820 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1lJfLu-0003kT-UI; Tue, 09 Mar 2021 16:36:58 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1lJfLu-0000Q2-Nl; Tue, 09 Mar 2021 16:36:58 +0000
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jon Nettleton <jon@solid-run.com>
Subject: [PATCH] arm64: dts: lx2160a-clearfog-itx: add SFP support 
 [*experimental*]
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1lJfLu-0000Q2-Nl@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Tue, 09 Mar 2021 16:36:58 +0000
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add 2x2 SFP+ cage support for clearfog-itx boards.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../boot/dts/freescale/fsl-lx2160a-cex7.dtsi  | 24 +++++++
 .../freescale/fsl-lx2160a-clearfog-itx.dtsi   | 64 +++++++++++++++++++
 2 files changed, 88 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
index 459dccad8326..afb455210bd0 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
@@ -122,6 +122,30 @@
 				vcc-supply = <&sb_3v3>;
 			};
 		};
+
+		sfp0_i2c: i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+		};
+
+		sfp1_i2c: i2c@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+		};
+
+		sfp2_i2c: i2c@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <6>;
+		};
+
+		sfp3_i2c: i2c@7 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <7>;
+		};
 	};
 };
 
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
index 2b63235ca627..17f8e733972a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
@@ -30,6 +30,54 @@
 			gpios = <&gpio2 6 GPIO_ACTIVE_LOW>;
 		};
 	};
+
+	sfp0: sfp-0 {
+		compatible = "sff,sfp";
+		i2c-bus = <&sfp0_i2c>;
+		mod-def0-gpio = <&gpio2 0 GPIO_ACTIVE_LOW>;
+		maximum-power-milliwatt = <2000>;
+	};
+
+	sfp1: sfp-1 {
+		compatible = "sff,sfp";
+		i2c-bus = <&sfp1_i2c>;
+		mod-def0-gpio = <&gpio2 9 GPIO_ACTIVE_LOW>;
+		maximum-power-milliwatt = <2000>;
+	};
+
+	sfp2: sfp-2 {
+		compatible = "sff,sfp";
+		i2c-bus = <&sfp2_i2c>;
+		mod-def0-gpio = <&gpio2 10 GPIO_ACTIVE_LOW>;
+		maximum-power-milliwatt = <2000>;
+	};
+
+	sfp3: sfp-3 {
+		compatible = "sff,sfp";
+		i2c-bus = <&sfp3_i2c>;
+		mod-def0-gpio = <&gpio2 11 GPIO_ACTIVE_LOW>;
+		maximum-power-milliwatt = <2000>;
+	};
+};
+
+&dpmac7 {
+	sfp = <&sfp0>;
+	managed = "in-band-status";
+};
+
+&dpmac8 {
+	sfp = <&sfp1>;
+	managed = "in-band-status";
+};
+
+&dpmac9 {
+	sfp = <&sfp2>;
+	managed = "in-band-status";
+};
+
+&dpmac10 {
+	sfp = <&sfp3>;
+	managed = "in-band-status";
 };
 
 &emdio2 {
@@ -44,6 +92,22 @@
 	status = "okay";
 };
 
+&pcs_mdio7 {
+	status = "okay";
+};
+
+&pcs_mdio8 {
+	status = "okay";
+};
+
+&pcs_mdio9 {
+	status = "okay";
+};
+
+&pcs_mdio10 {
+	status = "okay";
+};
+
 &sata0 {
 	status = "okay";
 };
-- 
2.20.1

