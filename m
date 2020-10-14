Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12F7528E455
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 18:24:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731939AbgJNQYd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 12:24:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731938AbgJNQYc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 12:24:32 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2AB7C061755
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 09:24:30 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e23so150307wme.2
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 09:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BaFCO6gd2Q1mLQwHFnqU3U26NuiKVA9TtHwt6ApIueE=;
        b=z4uKG0TaAnEUK/LOW7FQKsbgAlqV3bAVForRdnQloJOHZPjG1nEzA/5v4H7w5vHGM7
         vUN6Q5fMr+ZnHXhOI9GANlsYcH/LdlwtxI4NZjL1U6RixIjOmYo436hRk4FwmVLXaDu8
         s+qfQJ5m9tXNH8KirkktpfDxWYa587OdSB1JGHzmLwYUG7I+AllUPQ+iGNfig7lSLj6O
         S0I/ziaRhEMGq/hQ4Pp6jTbev5zGlQ0hYOZmgOVmpkU/o0j8Wlaj+q71ETFCUTyD604F
         S8OcPWoHOXiiirWszhsWBi3P/EivygmiJi51n1EXgQM6IDCEFa8ihKz6JzLewBd4xZPE
         Z+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BaFCO6gd2Q1mLQwHFnqU3U26NuiKVA9TtHwt6ApIueE=;
        b=inYDvh9o1pUvwFW8xBwqgekUmIDpfMy4YJSvyNKuacfS5r0n8aT/wgxOx56zI7IUqE
         Jv47++xpePSv3pDek4tevSFwkBk+qM1ilvzKBbH2s5mI/gsVmJqUlqzrlpLXY1UsjG/D
         MdIf29Km0Ydl7F7/HRI2elYS2QKR3DsA4TN0vRZKTXo6GXkRrDNFOvCxiTCj3wWYnJYO
         hIR9BC7/v2rY3zf0Z3VQgChjnEInjldPl/1n93UDtiL1cfh8DMyP/Ky5vH+4S1ftmAXu
         aco0VSi9KrV0Lmf4jKe1Pe2vVrXY6RxvlFRaLWwR/Ft7UgePJgrP3txuK9mqr6DeroYX
         IZ6Q==
X-Gm-Message-State: AOAM530JQkkhXy2xtzm4NGP7K1upAJ7dkvDIyID3/jwstSkQPvcp54+i
        RriXM9RpTjLai3lCMKLPs5F/mZwWK7xA7w==
X-Google-Smtp-Source: ABdhPJwQ+LmzARi1BWPfpNnEKf7mU0uno7dJMOjw1+8Rr/HNszFYvXvwi3TJxZuz3zGrR/DcFxhT5A==
X-Received: by 2002:a05:600c:2217:: with SMTP id z23mr209839wml.133.1602692667896;
        Wed, 14 Oct 2020 09:24:27 -0700 (PDT)
Received: from localhost.localdomain (138.165.185.81.rev.sfr.net. [81.185.165.138])
        by smtp.gmail.com with ESMTPSA id x21sm206227wmi.3.2020.10.14.09.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 09:24:26 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8516: add usb1 node
Date:   Wed, 14 Oct 2020 18:24:04 +0200
Message-Id: <20201014162404.1312544-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014162404.1312544-1-fparent@baylibre.com>
References: <20201014162404.1312544-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MT8516 has 2 USB instances. Add support for the second USB instance.
usb1 can only work in host mode.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 50049b6c1ba7..eca7969e15ab 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -455,6 +455,20 @@ usb0: usb@11100000 {
 			status = "disabled";
 		};
 
+		usb1: usb@11190000 {
+			compatible = "mediatek,mtk-musb";
+			reg = <0 0x11190000 0 0x1000>;
+			interrupts = <GIC_SPI 210 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-names = "mc";
+			phys = <&usb1_port PHY_TYPE_USB2>;
+			clocks = <&topckgen CLK_TOP_USB>,
+				 <&topckgen CLK_TOP_USBIF>,
+				 <&topckgen CLK_TOP_USB_1P>;
+			clock-names = "main","mcu","univpll";
+			dr_mode = "host";
+			status = "disabled";
+		};
+
 		usb_phy: usb@11110000 {
 			compatible = "mediatek,generic-tphy-v1";
 			reg = <0 0x11110000 0 0x800>;
@@ -469,6 +483,13 @@ usb0_port: usb-phy@11110800 {
 				clock-names = "ref";
 				#phy-cells = <1>;
 			};
+
+			usb1_port: usb-phy@11110900 {
+				reg = <0 0x11110900 0 0x100>;
+				clocks = <&topckgen CLK_TOP_USB_PHY48M>;
+				clock-names = "ref";
+				#phy-cells = <1>;
+			};
 		};
 
 		auxadc: adc@11003000 {
-- 
2.28.0

