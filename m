Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 181742F5EE0
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 11:37:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbhANKhB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 05:37:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726055AbhANKhB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 05:37:01 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76109C061573
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 02:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=uLcY4hZ13rDiaqM8tgTddOcC746c7uajEtM1QV9jr7w=; b=M2VosPCkJNRyDFwFQSOsNeh2+7
        fMxa/RNxMjeW4EpSrVpSz1/YWJ622fEP/rIJZfaCpdOaE/JcI8DwI1tXHUPJ/XfSeg/DETe8BEsEV
        ANeSYuiAPm32KSkBnlvRLKoOuWSHHYsL01CaAQKHTLp88SKp/agx77o6Ud3O8PUciK4H7K7E3b2Z/
        oT5vPdvB/NQ/TVcQ8THMMejtUGjFuuff/HZWQayyP0CI3wxN1p44Suee+zqy/qjbIlGKoXAWOU2cY
        ibMEus+ORaKobC0U/pc//g3oGPAey8D6r6nXImL3QxjdorhIk/YqLuhTqWBiT8LUoQD6iZ4ZJzdby
        qB4pvfoA==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:55586 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1kzzzD-0002JN-4b; Thu, 14 Jan 2021 10:36:15 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1kzzzC-0004lA-UB; Thu, 14 Jan 2021 10:36:14 +0000
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6qdl-sr-som: fix some cubox-i platforms
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1kzzzC-0004lA-UB@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Thu, 14 Jan 2021 10:36:14 +0000
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PHY address bit 2 is configured by the LED pin. Attaching a LED
to this pin is not sufficient to guarantee this configuration pin is
correctly read. This leads to some platforms having their PHY at
address 0 and others at address 4.

If there is no phy-handle specified, the FEC driver will scan the PHY
bus for a PHY and use that. Consequently, adding the DT configuration
of the PHY and the phy properties to the FEC driver broke some boards.

Fix this by removing the phy-handle property, and listing two PHY
entries for both possible PHY addresses, so that the DT configuration
for the PHY can be found by the PHY driver.

Fixes: 86b08bd5b994 ("ARM: dts: imx6-sr-som: add ethernet PHY configuration")
Reported-by: Christoph Mattheis <christoph.mattheis@arcor.de>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
index b06577808ff4..bba21dfef103 100644
--- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
@@ -53,7 +53,6 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
-	phy-handle = <&phy>;
 	phy-mode = "rgmii-id";
 	phy-reset-duration = <2>;
 	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
@@ -63,7 +62,15 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		phy: ethernet-phy@0 {
+		/*
+		 * The PHY can appear at either address 0 or 4 due to the
+		 * configuration (LED) pin not being pulled sufficiently.
+		 */
+		ethernet-phy@0 {
+			reg = <0>;
+			qca,clk-out-frequency = <125000000>;
+		};
+		ethernet-phy@4 {
 			reg = <0>;
 			qca,clk-out-frequency = <125000000>;
 		};
-- 
2.20.1

