Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 069C8C058C
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 14:48:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727327AbfI0MsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 08:48:18 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36801 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727769AbfI0MsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 08:48:00 -0400
Received: by mail-wm1-f68.google.com with SMTP id m18so6047957wmc.1
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 05:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bn1Yyb+y0E2XtXZ6uMo4FglNk7nmGiqm3716bVhGUbI=;
        b=TBFVKH5YnYvKA9k1HqNOyb4I1T+oWcWdHhJRSBtV9wwOVZ5C3tmEprLSZTFy95dklG
         PK18glTyiG2OLppG25CnthxfwOgn1+eMOq06qOPBKqMv0EKzmkPGcL72VSN5nNYc+/QG
         1zpr+6ig4pOgDO2o9UnbytLFiSfRXIQMgtxhzb5PkrRyJiXpj1RRc1w4HhPkTVzQvSbD
         Ebafoo+4n3fBAbZkFCnnBFsQwzQbmtMydnWPqZrJGIHZdSOMF13dBfb0/Mc+ZJzmTka3
         DPNH0As/KnevUP5xyQzGCFuFExWjTaVghLVzUZ6Cg8Umaht3wSjys2umd7GB3CEeLe+P
         s3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=bn1Yyb+y0E2XtXZ6uMo4FglNk7nmGiqm3716bVhGUbI=;
        b=GDLO/9p5Un85MKkku/Fg/qiPLyksCZTue2bzB1v4+F4UiMPgEnye6Eo98NZMbafXxF
         Rxi45Xicm7JR/Uts3DBSsWgt2Rd6KkhUTZ+ANGykHvM4LwIyxSluA+YXKD4Nn0oJenKN
         ZoLavjpSM++iPD3opihubmmQMRSFfUYfE3eUzu1h7dyivPvoTPTTAiB4DIqoIFEYFwto
         p/CGz9mJk6pTOhhpf+zzE6wJQ4Ssu7Cr//Im7H3ZsKQzkSvcvLDUObJ0Z5AQJQejqWhx
         TYFewaq6nK0L4NuGhgbL9beEOwHpl48ZAahDp94wL7lOGUAzCljvBm24+FdNGPbrM46K
         4HWQ==
X-Gm-Message-State: APjAAAWoJZrBOXaysXWAEay2dSJ2Yz4/IUNUY03N2mMlZDGuTKrN0ht0
        +jF+ReAm1RyEn6agtmieLtR1OQ==
X-Google-Smtp-Source: APXvYqzONHqQTp17JYyHcHd/xTyac0p1PEyddhQfBKG1GprkNkRFMjyKJXvJEMfLSGAZ0KkaJxBoyw==
X-Received: by 2002:a1c:4b10:: with SMTP id y16mr6853354wma.54.1569588478368;
        Fri, 27 Sep 2019 05:47:58 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h9sm2985564wrv.30.2019.09.27.05.47.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 05:47:57 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v5 5/7] arm64: dts: amlogic: g12a: add missing cooling info
Date:   Fri, 27 Sep 2019 14:47:47 +0200
Message-Id: <20190927124750.12467-7-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927124750.12467-1-glaroque@baylibre.com>
References: <20190927124750.12467-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing #colling-cells field for G12A SoC
Add cooling-map for passive and hot trip point

Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 733a9d46fc4b..3ab6497548ca 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -18,6 +18,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -26,6 +27,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -34,6 +36,7 @@
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -42,6 +45,7 @@
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		l2: l2-cache0 {
@@ -113,3 +117,23 @@
 &sd_emmc_a {
 	amlogic,dram-access-quirk;
 };
+
+&cpu_thermal {
+	cooling-maps {
+		map0 {
+			trip = <&cpu_passive>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+
+		map1 {
+			trip = <&cpu_hot>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
-- 
2.17.1

