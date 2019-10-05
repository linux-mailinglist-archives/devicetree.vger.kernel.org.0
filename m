Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 17FB7CCA60
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 16:19:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728778AbfJEOTq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 10:19:46 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:44526 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728690AbfJEOTp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 10:19:45 -0400
Received: by mail-pf1-f193.google.com with SMTP id q21so5639629pfn.11
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2019 07:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5sUB0RooONzqGELXbytY+LCL6wUVKNVeZUfz3wJVzw4=;
        b=h43kBO4gkvkkFs9AcbIQ2JN0yVcInn0HaBvXKvfGyM9qcSJgl/vsmd1u+bgYJOE0cx
         3qeTR/2h78QA02/D/R+EcsDBWI1dkXb4qutu8bWvyVpXe4iCghv3OV5MdTu357cqf9d3
         1jAGQ/5oRtDxAiYN9K3zXBPrxycQVfbLe414o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5sUB0RooONzqGELXbytY+LCL6wUVKNVeZUfz3wJVzw4=;
        b=Xn/O0Qz9rtX1t0Au3TAaStiPUUMgRK7hkNyTexdHMVntoaJZcdmGpp/dMDw8DjmcDG
         i4Gu2+U2oh7iEGHeVliibcqAresz7rEFTt2ca+2BtOgDwBDSqp2o/sVOmxgwhBvfxOpY
         8TFfla+0SaLGqOWQcAQenyLz69+Y5t2mNT2UUnzqGXf7FVd84tojxC/DTiiVUCnVHgpI
         E+sCA4yOhy5b6u/PR8jrP4/KKUOyCcgjg/5yLXo8a4z8d0tiaO2cWvjKVk4X3ouyLckz
         ARhOJNGYi57m3aWMG1+L9AKinIvAyMBIsbNUYK+qExY7MfxfnwWiGK6QeUIQJCQ+Ts0x
         w32Q==
X-Gm-Message-State: APjAAAVPrDuTmQZJ1AZ4ulgrkgGlIp1uLQoel9izbyRypi/P/Gr7ms6/
        aFLfLyhDsWO/uqh4oUz0OJBmNA==
X-Google-Smtp-Source: APXvYqx10j7PRU3fLEOZ4azx/txsZuy2oIBSXEvFfbkS6wRKhiOEl3gRVIzJmlphFdU23Kz8OymjUg==
X-Received: by 2002:a63:d34c:: with SMTP id u12mr1238630pgi.88.1570285184885;
        Sat, 05 Oct 2019 07:19:44 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
        by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Oct 2019 07:19:44 -0700 (PDT)
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
        devicetree@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
Date:   Sat,  5 Oct 2019 19:49:12 +0530
Message-Id: <20191005141913.22020-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
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
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 69128a6dfc46..ad4170b8aee0 100644
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
@@ -1003,6 +1009,38 @@
 			status = "disabled";
 		};
 
+		dsi: dsi@1ca0000 {
+			compatible = "allwinner,sun50i-a64-mipi-dsi";
+			reg = <0x01ca0000 0x1000>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_MIPI_DSI>;
+			clock-names = "bus";
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

