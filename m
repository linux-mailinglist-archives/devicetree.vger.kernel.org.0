Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 892F41CA54
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 16:27:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726279AbfENO07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 10:26:59 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:53244 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725980AbfENO06 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 10:26:58 -0400
Received: by mail-wm1-f66.google.com with SMTP id y3so3126107wmm.2
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 07:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KH/9jGUTYqNchbklGeod/jCiLtawhcosDapSAft/y/g=;
        b=wkOdjC3PU+m4vMRNuxaV9tMM7OAiptxtSi7DTbZiAxVF+9ux1XzAMwFFmVvERR7Rq7
         bt9y8cyUqzNTV6GkkB1tCoKiKSeiJfGs9YzGhF1tIIRZg7ccslM6YN9+tb01CG3srn0b
         YZpm6/l2qoV2MNjqlzTNOGWbjByT8B64XBmVPI//QM/574T5w8IrXmfvWmBnPZEQe3Vk
         xCqXpmQNKf2k4aAqfVSoqQ6V9VnZjFe+zY5+PB2Aa+nt/Oq4+jLjXwdQLOxVfzIpSdab
         XEWo8v60lEwmwxPjxqFQ1NubMbI/RyrHCVeII8LNpEX9XnfLwLnyJoBxp8kLkpqG7ukK
         bLpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KH/9jGUTYqNchbklGeod/jCiLtawhcosDapSAft/y/g=;
        b=DmKXuf2wpU55jeOriRfrk2AeMBms2MI1g/XtGhuiGgpd1Rdbd4fgOcQ6VbQZPk9iiO
         3Gd0utmIL+SHPFlzma/iRa5HkA0W0vZABpTIJOPfianioJdlAJz2gxvQaGKQRHsdfX/7
         4zDFRrxkG4LNB0EXeuzXy0k9HTjTyTQ8vkVJNmY3Xg66CSvtRG6wxXDLIaOQ5yb1GPYC
         SEqkEz8SgpUtT+iBlvDnfDQLvwNGtXKih4W8HeH8S2JqG4hgUKPc460uhL8TbBJM8+sr
         XkcKm2VCWcXsuaZFZrAgB0Iq+DkkjWDBUX2ZAKSV4wZjswM0crwhqCm3S5Z5D8FWeFuQ
         c+6w==
X-Gm-Message-State: APjAAAU9l5n68+0PsHkRVeuJXjoCwaYiKzE108K/TT6CtAQz9+mymteu
        wg74eC1mO+ZmazF/XijIpifJUYAcbLE=
X-Google-Smtp-Source: APXvYqxK2UhF4PI66FD0zC96shlHSfEZOFlJbdtlZnfhsSFIV83NzKSf2mcthfJJcwaSS5XULg5Fuw==
X-Received: by 2002:a1c:2803:: with SMTP id o3mr20372013wmo.93.1557844016377;
        Tue, 14 May 2019 07:26:56 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id h15sm12343642wru.52.2019.05.14.07.26.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 07:26:55 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/8] arm64: dts: meson: g12a: add audio clock controller
Date:   Tue, 14 May 2019 16:26:42 +0200
Message-Id: <20190514142649.1127-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514142649.1127-1-jbrunet@baylibre.com>
References: <20190514142649.1127-1-jbrunet@baylibre.com>
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

