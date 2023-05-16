Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E9EF7049A8
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 11:48:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231907AbjEPJsy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 05:48:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231422AbjEPJsx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 05:48:53 -0400
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3DAF2D55
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 02:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:From:Reply-To:To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=BJm5LPgKRep+P4ajkokBOa3xwg3UuUxrhzXpnK5oIc8=; b=MzIuHuesxXzdxKZWzK0Te6xJqT
        R96xAVOPuGzsYpzdeVRRjTbShbSACl/xijS8cdFBFKXzWmf6g5hB68+8UyrY784MY8Qt1Q6q4zmCQ
        B4e7gG/tB+jyOMLJj11AtpsYkRy4wNjSPLY9wR/LpdsAXI6/Une1K1m1XzI6c93CAqg/5L+c4PEEQ
        kWoCbJubCtJjINu4V/DM5csyHU8DPfmn0hrOeZfZO6FRrvSF8+jn9+MsIrgQElz+IqqsV6g9+vxt3
        lYhvdyvVeAJa2RHjHOCSm2/1kaINRhQreRa8GK5GPaemhR/otr1x94Z1phstbY2bS2TrafiwIhkGo
        cjZyj7iQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:50074 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1pyrIH-0005V5-Jb; Tue, 16 May 2023 10:48:33 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.94.2)
        (envelope-from <rmk@rmk-PC.armlinux.org.uk>)
        id 1pyrIG-005B4H-VG; Tue, 16 May 2023 10:48:33 +0100
From:   "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Stefan Agner <stefan@agner.ch>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm: dts: update arm sfp bindings to use -gpios
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1pyrIG-005B4H-VG@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Tue, 16 May 2023 10:48:32 +0100
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,MISSING_HEADERS,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It was decided that SFP should use the -gpios suffix rather than -gpio.
Update various boards to follow this.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi | 6 +++---
 arch/arm/boot/dts/armada-388-clearfog.dtsi     | 8 ++++----
 arch/arm/boot/dts/vf610-zii-cfu1.dts           | 4 ++--
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi b/arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi
index d1452a04e904..dc625adb2979 100644
--- a/arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi
+++ b/arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi
@@ -246,9 +246,9 @@ pcie@3,0 {
 	sfp0: sfp {
 		compatible = "sff,sfp";
 		i2c-bus = <&i2c1>;
-		los-gpio = <&gpio1 22 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&gpio0 25 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&gpio1 14 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&gpio1 22 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&gpio0 25 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/armada-388-clearfog.dtsi b/arch/arm/boot/dts/armada-388-clearfog.dtsi
index 3c1771903191..093b7646d42e 100644
--- a/arch/arm/boot/dts/armada-388-clearfog.dtsi
+++ b/arch/arm/boot/dts/armada-388-clearfog.dtsi
@@ -80,10 +80,10 @@ pcie@2,0 {
 	sfp: sfp {
 		compatible = "sff,sfp";
 		i2c-bus = <&i2c1>;
-		los-gpio = <&expander0 12 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&expander0 15 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&expander0 14 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&expander0 13 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&expander0 12 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&expander0 15 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&expander0 14 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&expander0 13 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <2000>;
 	};
 };
diff --git a/arch/arm/boot/dts/vf610-zii-cfu1.dts b/arch/arm/boot/dts/vf610-zii-cfu1.dts
index 96495d965163..67f1f35a5e40 100644
--- a/arch/arm/boot/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/boot/dts/vf610-zii-cfu1.dts
@@ -68,8 +68,8 @@ sff: sfp {
 		pinctrl-0 = <&pinctrl_optical>;
 		pinctrl-names = "default";
 		i2c-bus = <&i2c0>;
-		los-gpio = <&gpio4 4 GPIO_ACTIVE_HIGH>;
-		tx-disable-gpio = <&gpio3 22 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
+		tx-disable-gpios = <&gpio3 22 GPIO_ACTIVE_HIGH>;
 	};
 
 	supply-voltage-monitor {
-- 
2.30.2

