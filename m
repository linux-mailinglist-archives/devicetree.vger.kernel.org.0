Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2EBC7237D8
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 15:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387455AbfETNON (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 09:14:13 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:37734 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732294AbfETNON (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 09:14:13 -0400
Received: by mail-wr1-f66.google.com with SMTP id e15so14571781wrs.4
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 06:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wgSfjE2+FzU8XOfZWkTKXLvL3btwWWjzue0NBLqBVBw=;
        b=0k1cQKVIN8lOwrP/3OcUY298DXpl9fwzT6sNib2znDy2o8BLBZWIJEeVNDlBqp4Q8f
         qaieuLng9y8+Xvb9U28TJcD5UR11v32GcLRL70osxLMuRn/4/rUQ4CuD5m7qp8qx0Wsw
         J4QxZQDIX6BGBznbQYmWFkpwU2GlwmbLRUoXSO+05Xi6PTFgEM1e6lBFq9YGcDK9VCH1
         wO1Ug/e200kXgPpuNwPGn1ku8+84BG7WA9mjTtmQ1vFiMixsUmbo3ITiZTxjXb/x4kCf
         kDJ/vjnOYWgv01gTK3STSiYPoGmEi2Rltc/ZdBMhSpWxx18tp1wcj6UmQ7XHh99KJzw+
         u92w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wgSfjE2+FzU8XOfZWkTKXLvL3btwWWjzue0NBLqBVBw=;
        b=WMF+mZtgRWucGMRdvp3M9ShfvxasIL0Z+s5/Sy8FfN9aKD2evpKoh/3hpcFv2hzvI0
         7sxIQ3EA516+tZbN0uOVSarh0GWCeJ6ZWIzB1dezVVBP/Ea1NB7OJGfLfglEuMd9UAld
         P/ZxiJHnbmEX1vNMLGS6jncuIfvcW018o5aK4TqWZa+PE619z6vGHWgr7o2KgwRwg+nD
         TvFesuW4KC+GvFC7rBTe56r5FWzKzfkAwKJA7VXWRC14h327dPv8fpuO9A58CzowtdUL
         qeIbQIWXS+JLyqxh/fJpgRiD5ZoGh+jcybLWtmOXj+0mO3rTiCNdm5n7kqTLkhOAUefj
         JZ2Q==
X-Gm-Message-State: APjAAAUBuWOy3vTbuJJ/WCAB0MT3PV+HpchbJFeerMmopVEPeO03qkyV
        1adzjUdg+XaS9uyYJDM4d0Ixsw==
X-Google-Smtp-Source: APXvYqxApb5a5AL31sl0uIO+RsAxe3WbEZ8MsyWsdxEq9oVrR6tsUj6oGh6g+Sww30uX1081oQa2oQ==
X-Received: by 2002:a5d:6b50:: with SMTP id x16mr813119wrw.220.1558358051478;
        Mon, 20 May 2019 06:14:11 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z8sm18054284wrh.48.2019.05.20.06.14.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 06:14:10 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] arm64: dts: meson: g12a: add mdio multiplexer
Date:   Mon, 20 May 2019 15:13:59 +0200
Message-Id: <20190520131401.11804-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520131401.11804-1-jbrunet@baylibre.com>
References: <20190520131401.11804-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the g12a mdio multiplexer which allows to connect to either
an external phy through the SoC pins or the internal 10/100 phy

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 32 +++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index def02ebf6501..90da7cc81681 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -1698,6 +1698,38 @@
 				assigned-clock-rates = <100000000>;
 				#phy-cells = <1>;
 			};
+
+			eth_phy: mdio-multiplexer@4c000 {
+				compatible = "amlogic,g12a-mdio-mux";
+				reg = <0x0 0x4c000 0x0 0xa4>;
+				clocks = <&clkc CLKID_ETH_PHY>,
+					 <&xtal>,
+					 <&clkc CLKID_MPLL_50M>;
+				clock-names = "pclk", "clkin0", "clkin1";
+				mdio-parent-bus = <&mdio0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				ext_mdio: mdio@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+
+				int_mdio: mdio@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					internal_ephy: ethernet_phy@8 {
+						compatible = "ethernet-phy-id0180.3301",
+							     "ethernet-phy-ieee802.3-c22";
+						interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+						reg = <8>;
+						max-speed = <100>;
+					};
+				};
+			};
 		};
 
 		aobus: bus@ff800000 {
-- 
2.20.1

