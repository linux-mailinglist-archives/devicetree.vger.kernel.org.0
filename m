Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5BFFD1C788
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 13:15:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726447AbfENLPV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 07:15:21 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:34224 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726075AbfENLPU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 07:15:20 -0400
Received: by mail-wm1-f67.google.com with SMTP id j187so2106633wma.1
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 04:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KH/9jGUTYqNchbklGeod/jCiLtawhcosDapSAft/y/g=;
        b=YoxYoVPOitJltIYLqd6dVcVS8kBc0olC0nqpmZOXI1okxviKNcCGelSEGL3srl9FuR
         8teYFRzjPqEKQKvo45cx1QF6GxMcOazu+vkGdD6bhVzvFL2+BBmtFwB04qYdijZ5bfZz
         0QHCQZybDoT5YyNXgZepeTbECSU6pyMyrVciLByz5PWOqrGtfgLwWpUEUySccnOMdSqj
         vt6kaB5r/q12Zys9C/bGNLiErKd3vmSuizSacJ3/X988PKeHdvj4OkLv7WIg7Uhe8MsI
         ZoDmSRsm0zzeUoaO9ZwBWkOR3eZTIut2jHmpvhkxuv2peJK1dwY3R/tG0ArjJIA+C2PC
         VCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KH/9jGUTYqNchbklGeod/jCiLtawhcosDapSAft/y/g=;
        b=WzXOJRg0OwiD1Nrvkg940xWAuI9zj+JB8WrrSwRwYDBrAPtsGhi7XkidZwBibKIDRR
         jZX7BYG9dyiWCku5EmLMWISufiM84AxNt20Ln9EboBjSUEykEDW3bC8QnL7qDYOXzjxf
         Y42HXCo3U/7u7hnwnjZjFyNTHeNI3uCne5Svno9nRMqDKsOKwE61WZxfICnJknzmOPqS
         M5GBQP68x5LVOcNGE+T7erI0KmQCGkHxhGmZBm9WeKVJB2URo/YIo5cUV6OgIDc0RsGW
         ThNRwcP62Z1IanAb+yqV9E25+gzY9l08fJY+11PJ5c7UIPviZs24+3jzoZELyG2roTtz
         bTtg==
X-Gm-Message-State: APjAAAXjOc9j6tPNX+UbdU5Xlde9nk96bry3UVQlUp8YV5nP6sERkDfS
        8NdLvklv9aZxRW6NLMEpuZhkWA==
X-Google-Smtp-Source: APXvYqyFXBhASQ7s2Rzi8oOTabzfkeNhlmXxwFIUALwnaLudgCnEC7/4EHYWhhjH2bC1IexA/KblNw==
X-Received: by 2002:a1c:eb12:: with SMTP id j18mr530763wmh.48.1557832518385;
        Tue, 14 May 2019 04:15:18 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id c130sm7289922wmf.47.2019.05.14.04.15.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 04:15:17 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/8] arm64: dts: meson: g12a: add audio clock controller
Date:   Tue, 14 May 2019 13:15:03 +0200
Message-Id: <20190514111510.23299-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514111510.23299-1-jbrunet@baylibre.com>
References: <20190514111510.23299-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the g12a clock controller dedicated to audio.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 36 +++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index e6c0c19b3223..09aa024d9f0e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -673,6 +673,42 @@
 				};
 			};
 
+			audio: bus@42000 {
+				compatible = "simple-bus";
+				reg = <0x0 0x42000 0x0 0x2000>;
+				#address-cells = <2>;
+				#size-cells = <2>;
+				ranges = <0x0 0x0 0x0 0x42000 0x0 0x2000>;
+
+				clkc_audio: clock-controller@0 {
+					status = "disabled";
+					compatible = "amlogic,g12a-audio-clkc";
+					reg = <0x0 0x0 0x0 0xb4>;
+					#clock-cells = <1>;
+
+					clocks = <&clkc CLKID_AUDIO>,
+						 <&clkc CLKID_MPLL0>,
+						 <&clkc CLKID_MPLL1>,
+						 <&clkc CLKID_MPLL2>,
+						 <&clkc CLKID_MPLL3>,
+						 <&clkc CLKID_HIFI_PLL>,
+						 <&clkc CLKID_FCLK_DIV3>,
+						 <&clkc CLKID_FCLK_DIV4>,
+						 <&clkc CLKID_GP0_PLL>;
+					clock-names = "pclk",
+						      "mst_in0",
+						      "mst_in1",
+						      "mst_in2",
+						      "mst_in3",
+						      "mst_in4",
+						      "mst_in5",
+						      "mst_in6",
+						      "mst_in7";
+
+					resets = <&reset RESET_AUDIO>;
+				};
+			};
+
 			usb3_pcie_phy: phy@46000 {
 				compatible = "amlogic,g12a-usb3-pcie-phy";
 				reg = <0x0 0x46000 0x0 0x2000>;
-- 
2.20.1

