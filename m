Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92C18128E33
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2019 14:30:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726834AbfLVN34 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Dec 2019 08:29:56 -0500
Received: from mail-pg1-f193.google.com ([209.85.215.193]:35938 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726828AbfLVN3z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Dec 2019 08:29:55 -0500
Received: by mail-pg1-f193.google.com with SMTP id k3so7440774pgc.3
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2019 05:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xq2qov66+ZKQzbRfM2Ia41hD0OqHDHdZrt8IUGMciys=;
        b=aN/z+SvOEIOG7pKfL3EAs/o2YJxa4fGDyhDurxf9BFee4oUQOYmh5YDzvcR0++/wgO
         /UTCY/yccmcyFCUrb3G+F+ufbTU4HXVCd7avRL5pQXSUmTfQVhcoU3sY2/gnEzWFBgd2
         V4V2g8nvEvUnNSKNJoHUWTG97hocXPGtyNhps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xq2qov66+ZKQzbRfM2Ia41hD0OqHDHdZrt8IUGMciys=;
        b=RsoL5V8rkDtabubsWbbH6sp1YMFJ1Uiq5xnu/0aABIjMO5JSxfGzOFSAtQ1MtcsOzK
         gvEfIdg+UN4Uw2YL4Fsr65bgY6ehLe2xIwwvvTi57JV1qM26c0e146kDF0WUqscT22Kv
         g2VkCKcuZoqMMty37hhJ3gH4jjCdFNr1o48jaSw7uTxdzBzcL+n7KxiOOCkSkdFp6NWP
         genIpbHEYF6oNsqLcEObBRHaVTb/PwkqzqAyn3w/ilFNcz9c/cOaca9Sd/ug6EqCL/WL
         SjciBf0Eh5BTdV5dlsSzfhlYqP+sjE/aM1XczJ0fnVk3lQdNoiMACo8zeRnVkZxmk0xA
         W3KQ==
X-Gm-Message-State: APjAAAUCjj5S27slbsKcC7np5LtoO/bfZ0ec4p20P8QLEMvUu8mWpE0t
        lnOlh5YxDPhjUVXPiLTD6eq/uw==
X-Google-Smtp-Source: APXvYqxHOIWV1QpzQpqIk+oG3B9jfIK2/Lz4J3qY5Xg5MsBrwBHFlLSPubYChCJEMqxNWmsb1jEwpA==
X-Received: by 2002:a63:e911:: with SMTP id i17mr26186191pgh.42.1577021395126;
        Sun, 22 Dec 2019 05:29:55 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.16])
        by smtp.gmail.com with ESMTPSA id o2sm12073058pjo.26.2019.12.22.05.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2019 05:29:54 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     michael@amarulasolutions.com, Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v14 6/7] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
Date:   Sun, 22 Dec 2019 18:52:28 +0530
Message-Id: <20191222132229.30276-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191222132229.30276-1-jagan@amarulasolutions.com>
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MIPI DSI pipeline for Allwinner A64.

- dsi node, with A64 compatible since it doesn't support
  DSI_SCLK gating unlike A33
- dphy node, with A64 compatible with A33 fallback since
  DPHY on A64 and A33 is similar
- finally, attach the dsi_in to tcon0 for complete MIPI DSI

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
Changes for v14:
- none

 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 27e48234f1c2..1db8378f59a4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -382,6 +382,12 @@
 					#address-cells = <1>;
 					#size-cells = <0>;
 					reg = <1>;
+
+					tcon0_out_dsi: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&dsi_in_tcon0>;
+						allwinner,tcon-channel = <1>;
+					};
 				};
 			};
 		};
@@ -1014,6 +1020,37 @@
 			status = "disabled";
 		};
 
+		dsi: dsi@1ca0000 {
+			compatible = "allwinner,sun50i-a64-mipi-dsi";
+			reg = <0x01ca0000 0x1000>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_MIPI_DSI>;
+			resets = <&ccu RST_BUS_MIPI_DSI>;
+			phys = <&dphy>;
+			phy-names = "dphy";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port {
+				dsi_in_tcon0: endpoint {
+					remote-endpoint = <&tcon0_out_dsi>;
+				};
+			};
+		};
+
+		dphy: d-phy@1ca1000 {
+			compatible = "allwinner,sun50i-a64-mipi-dphy",
+				     "allwinner,sun6i-a31-mipi-dphy";
+			reg = <0x01ca1000 0x1000>;
+			clocks = <&ccu CLK_BUS_MIPI_DSI>,
+				 <&ccu CLK_DSI_DPHY>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_MIPI_DSI>;
+			status = "disabled";
+			#phy-cells = <0>;
+		};
+
 		hdmi: hdmi@1ee0000 {
 			compatible = "allwinner,sun50i-a64-dw-hdmi",
 				     "allwinner,sun8i-a83t-dw-hdmi";
-- 
2.18.0.321.gffc6fa0e3

