Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 124BEC0583
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 14:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727809AbfI0MsD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 08:48:03 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:39152 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727836AbfI0MsD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 08:48:03 -0400
Received: by mail-wm1-f66.google.com with SMTP id v17so6026950wml.4
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 05:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9YGH/6YIzv9K3Mh8Ek1+NGOAz5VU0/WuYChxnvTMt8w=;
        b=hDxy/YRBspG0UsSQWGlFqgvS2mZSISRc0P+ym8WjN83WN3p6w5of5YxEmAQzevScLO
         8IDs68ixRtxeAGWv7HYDzCm/wtJDyTOXBsWhowLWClhZTaQ31cT2Jn2WmkFDHCN58fCy
         lgQhI/+0Jb4llEQUf8ueqYRquLjEFP9fQk9SxnEZwDTzP/xLSgq9iVy/7C4BDHz6Oetf
         LDpbqM3FTEAMXqLLcZjaXDXUT5Y+HYx/XOnDKSUmtNrjhNkgeVHHXk9MVecBmVmDmH1Z
         FWsyNWIPIqf3gUUUmvrtXYjaE77OQR1k5Gry9Hk9wt+LK0AdVWJVHDKdWEQQF78eVLC1
         H5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9YGH/6YIzv9K3Mh8Ek1+NGOAz5VU0/WuYChxnvTMt8w=;
        b=fT/A2vckOwCXTUTZurS00yMZCTzt+buvEQKoOYj64obCzZthpjKCVKWC6i9X8C1Pzn
         GdsR1iBlheeWbKeEcK8gVsSBscJSniUIZAadIWeAZEYqbRqpLHvL1HulJVMvHemDOsWh
         rkRfJ+vfHwgQpFAaLmRrC968xayEmzEB7XRHxeUayD8UVTEsZLAGhFqe/jRc8XNUteiu
         eBhdIPbaDlVL41m6+A1l1EXzkc7vCWQwBrLokULpfqRj6L7+aym+NTAdr6hngMARquNf
         n/fOqTMJvLUK0Ag58pCAK7ymEEsyvfVqfzWJrfXIztdEwwjRTzAx6PdNu/zi+Jl1FPin
         P1YQ==
X-Gm-Message-State: APjAAAWKbsuDdh4MHCSUqwcTW329MW/GqGCU1Bt8EVER3wBZ6WOW2eZw
        QVfVVQ+KYGLHqCshqk39bjJCVA==
X-Google-Smtp-Source: APXvYqyY3lKAG/G3yQXF4Lie9vPhJPBWwgvXUx43AW6KRlI8rPISvgVud1MhXeVCFgb48yCZHCwW8w==
X-Received: by 2002:a05:600c:2:: with SMTP id g2mr7054051wmc.111.1569588480357;
        Fri, 27 Sep 2019 05:48:00 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h9sm2985564wrv.30.2019.09.27.05.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 05:47:59 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v5 6/7] arm64: dts: amlogic: g12b: add missing cooling info
Date:   Fri, 27 Sep 2019 14:47:49 +0200
Message-Id: <20190927124750.12467-9-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927124750.12467-1-glaroque@baylibre.com>
References: <20190927124750.12467-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing #colling-cells field for G12B SoC
Add cooling-map for passive and hot trip point

Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 29 +++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index 98ae8a7c8b41..4bb89bce758f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -49,6 +49,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -57,6 +58,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu100: cpu@100 {
@@ -65,6 +67,7 @@
 			reg = <0x0 0x100>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu101: cpu@101 {
@@ -73,6 +76,7 @@
 			reg = <0x0 0x101>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu102: cpu@102 {
@@ -81,6 +85,7 @@
 			reg = <0x0 0x102>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu103: cpu@103 {
@@ -89,6 +94,7 @@
 			reg = <0x0 0x103>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		l2: l2-cache0 {
@@ -219,3 +225,26 @@
 &sd_emmc_a {
 	amlogic,dram-access-quirk;
 };
+
+&cpu_thermal {
+	cooling-maps {
+		map0 {
+			trip = <&cpu_passive>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+		map1 {
+			trip = <&cpu_hot>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
-- 
2.17.1

