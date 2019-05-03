Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E525112D0E
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 13:59:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727550AbfECL7s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 07:59:48 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41946 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727231AbfECL7s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 07:59:48 -0400
Received: by mail-pf1-f193.google.com with SMTP id 188so2791568pfd.8
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 04:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vJmfFw0q35lTjOMKi7JKfHPrHE1C5yCWa/soMCMhwUs=;
        b=I7fOhnOZJa+A0py26DsoUKzEdhCQ1Na8LcD3krdUX08liXV16VPm+vpVVvESTUGXqb
         raRABPxt/2QfdgUMAnAmMAZLdEoKSABgxP23+lYRierkNQgvlukHAOs1btvDIbNaZgzy
         dqWrouzbFseyrMB0cLM1C1o38DY6+iQEYa98Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vJmfFw0q35lTjOMKi7JKfHPrHE1C5yCWa/soMCMhwUs=;
        b=NYHexw2bIMkpQwvdkLagDrVY1ATx7eXGSHt2r2jF/K446Dr3KixohagaFs44t9OSaq
         6gRi/JZ9zMxGKEvNvbONxAfSY5B5+ytKGS0XwcimM4fw+RItKjJTKGhwtLK/2qS1IEik
         JBy7HWmRoQLqlhi/qVnAZp72XRWLNjUcfpwCMNa4YoYdkIdhLw1XeDIIiM8Ea1XTEZ9p
         LI/StQ8z1Mi+Sa6Bo8+f9X8UNMutD/csxL8S7h8sMmeE5QqzZoZ+WMkH3JRj80GM5mlG
         JYyJE/GkhJMLCL8RPDrYU71xam3gLzrbbrvukOIQwKztxD+nCIfvwE+UCiVv7uRwnSuW
         nU+w==
X-Gm-Message-State: APjAAAXIKaA5Oeh4gU2OGaM/I6ti5T4Fw++cIPmqje2QBQOak4GG979D
        t142VK9Hh/HW8ZmV814XNZTwtQ==
X-Google-Smtp-Source: APXvYqw45KysPDN37fptBttFYc0YSEKsnoAUh7GJerGfOPX/+DYNbUqT6l2ZfOY6T9cbIlI5Yeeltg==
X-Received: by 2002:a63:1604:: with SMTP id w4mr9850811pgl.148.1556884787760;
        Fri, 03 May 2019 04:59:47 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.165])
        by smtp.gmail.com with ESMTPSA id f5sm2235940pgo.75.2019.05.03.04.59.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 May 2019 04:59:47 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
        linux-sunxi@googlegroups.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2] arm64: allwinner: h6: orangepi-one-plus: Add Ethernet support
Date:   Fri,  3 May 2019 17:29:28 +0530
Message-Id: <20190503115928.27662-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Ethernet support for orangepi-one-plus board,

- Ethernet port connected via RTL8211E PHY
- PHY suppiled with
  GMAC-2V5, fixed regulator with GMAC_EN pin via PD6
  GMAC-3V, which is supplied by VCC3V3-MAC via aldo2
- RGMII-RESET pin connected via PD14

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- emac changes on top of https://patchwork.kernel.org/cover/10899529/
  series

 .../allwinner/sun50i-h6-orangepi-one-plus.dts |  8 ++++
 .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 42 +++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
index 12e17567ab56..9e8ed1053715 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
@@ -9,4 +9,12 @@
 / {
 	model = "OrangePi One Plus";
 	compatible = "xunlong,orangepi-one-plus", "allwinner,sun50i-h6";
+
+	aliases {
+		ethernet0 = &emac;
+	};
+};
+
+&emac {
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
index 62e27948a3fa..c48e24acaf8a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
@@ -45,6 +45,48 @@
 		regulator-max-microvolt = <5000000>;
 		regulator-always-on;
 	};
+
+	/*
+	 * The board uses 2.5V RGMII signalling. Power sequence to enable
+	 * the phy is to enable GMAC-2V5 and GMAC-3V (aldo2) power rails
+	 * at the same time and to wait 100ms.
+	 */
+	reg_gmac_2v5: gmac-2v5 {
+		compatible = "regulator-fixed";
+		regulator-name = "gmac-2v5";
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+		startup-delay-us = <100000>;
+		enable-active-high;
+		gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* GMAC_EN: PD6 */
+
+		/* The real parent of gmac-2v5 is reg_vcc5v, but we need to
+		 * enable two regulators to power the phy. This is one way
+		 * to achieve that.
+		 */
+		vin-supply = <&reg_aldo2>; /* VCC3V3-MAC: GMAC-3V */
+	};
+};
+
+&emac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&ext_rgmii_pins>;
+	phy-mode = "rgmii";
+	phy-handle = <&ext_rgmii_phy>;
+	phy-supply = <&reg_gmac_2v5>;
+	allwinner,rx-delay-ps = <1500>;
+	allwinner,tx-delay-ps = <700>;
+};
+
+&mdio {
+	ext_rgmii_phy: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+
+		reset-gpios = <&pio 3 14 GPIO_ACTIVE_LOW>; /* RGMII-RESET: PD14 */
+		reset-assert-us = <15000>;
+		reset-deassert-us = <40000>;
+	};
 };
 
 &ehci0 {
-- 
2.18.0.321.gffc6fa0e3

