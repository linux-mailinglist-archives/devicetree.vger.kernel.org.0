Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 649079A827
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733029AbfHWHDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:54 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:50277 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391477AbfHWHC4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:02:56 -0400
Received: by mail-wm1-f65.google.com with SMTP id v15so7873607wml.0
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4JpKiIcryaS7qbY7qa/oNrG1CK0cYdfbOwJCPaVett0=;
        b=stVltNRFP7OJXsRRAuGZYrCCdP9n14avsmxT2x+0eHkiweKNph306aaQfr1ozKr0AV
         7232LRCskc0G0qtv1OuJihwcdAChitLEYitRZwRZiXTmXl3NfMv59Q590VLLVLaoRojL
         IdFETBYqwvT7Vgig/DxnSj85AHOcPg5zd8phisXYYO2NLMDh2rAkOULr+40yirrgygww
         U8Z5OsJyrIFVGy60d8KwKqjlDK5m84bpRfoSxzWReGMWWpTdnzHyuPzGjQVROREbNJO4
         PyJcmHbb3ZgPgifuB0SBB4tpFB5AkSsBp2JdWlg9M3tRFGNxjpsL2pLBWVdt78KWnm4S
         4ZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4JpKiIcryaS7qbY7qa/oNrG1CK0cYdfbOwJCPaVett0=;
        b=aE2T0tagWAcJekVuTfSHIoVktpZMOFDjQogrH0bAyLW92T1fRDn9G/6UjwrkAmiXoh
         +7LOWKB3Ft2b6BAJn84JCuf83kNfXZM7kp10bgL18IO+Co1rJA8pLnMbNZTqU0AUahTJ
         Sgrtr3HNAVPEYq1o5dgGq0OBuBAeGogsycrImOA6qHHowJ5PewZymgb42YqSK0J+EtNI
         taB5vQN+E64dlPrilXo6r7qD0AjkTPcuKzqsLlArBYJW5QfmRECQ6bhoVGeC1jHMAgSd
         S+deIQPdoQ51fhO0NOpT+aPOx+0Zby+zeSbpCqSof3I5urMGHjVRwQKBq7c3+YsGBa4i
         O3sQ==
X-Gm-Message-State: APjAAAVe+k4qdECe7EOBJrOqMWIJvdIHqTmCtZTbq53Fd2COHv54KF0R
        uMUAbSG46Hv3RnNX9PXQYHYAxE3QF7Iskw==
X-Google-Smtp-Source: APXvYqwplsGZ/7laOgUCpSaS26qUJUrZe68OrbiPfJxjCJGcpUfPnYrackNYh+4NglnMLCOlFNdteA==
X-Received: by 2002:a7b:c758:: with SMTP id w24mr3298462wmk.143.1566543775013;
        Fri, 23 Aug 2019 00:02:55 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:02:54 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 01/14] arm64: dts: meson: fix ethernet mac reg format
Date:   Fri, 23 Aug 2019 09:02:35 +0200
Message-Id: <20190823070248.25832-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-axg-s400.dt.yaml: soc: ethernet@ff3f0000:reg:0: [0, 4282318848, 0, 65536, 0, 4284695872, 0, 8] is too long
meson-axg-s400.dt.yaml: ethernet@ff3f0000: reg: [[0, 4282318848, 0, 65536, 0, 4284695872, 0, 8]] is too short
meson-g12a-u200.dt.yaml: soc: ethernet@ff3f0000:reg:0: [0, 4282318848, 0, 65536, 0, 4284695872, 0, 8] is too long
meson-g12a-u200.dt.yaml: ethernet@ff3f0000: reg: [[0, 4282318848, 0, 65536, 0, 4284695872, 0, 8]] is too short
meson-gxbb-nanopi-k2.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too long
meson-gxl-s805x-libretech-ac.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too lon

while here, also drop the redundant reg property from meson-gxl.dtsi
because it had the same value as meson-gx.dtsi from which it inherits.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi        | 3 ---
 4 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 12bf959c17a7..acc2feb8fd89 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -174,8 +174,8 @@
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xff3f0000 0x0 0x10000
-			       0x0 0xff634540 0x0 0x8>;
+			reg = <0x0 0xff3f0000 0x0 0x10000>,
+			      <0x0 0xff634540 0x0 0x8>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			clocks = <&clkc CLKID_ETH>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index c643411aabff..1a5efa2e16c5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -98,8 +98,8 @@
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xff3f0000 0x0 0x10000
-			       0x0 0xff634540 0x0 0x8>;
+			reg = <0x0 0xff3f0000 0x0 0x10000>,
+			      <0x0 0xff634540 0x0 0x8>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			clocks = <&clkc CLKID_ETH>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index ca4b834c65d8..f3ae5a3685f9 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -503,8 +503,8 @@
 			compatible = "amlogic,meson-gxbb-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xc9410000 0x0 0x10000
-			       0x0 0xc8834540 0x0 0x4>;
+			reg = <0x0 0xc9410000 0x0 0x10000>,
+			      <0x0 0xc8834540 0x0 0x4>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			rx-fifo-depth = <4096>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index a09c53aaa0e8..7a3b674db11f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -80,9 +80,6 @@
 };
 
 &ethmac {
-	reg = <0x0 0xc9410000 0x0 0x10000
-	       0x0 0xc8834540 0x0 0x4>;
-
 	clocks = <&clkc CLKID_ETH>,
 		 <&clkc CLKID_FCLK_DIV2>,
 		 <&clkc CLKID_MPLL2>;
-- 
2.22.0

