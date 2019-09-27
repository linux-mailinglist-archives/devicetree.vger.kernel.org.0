Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EFBFC0596
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 14:48:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727756AbfI0Mr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 08:47:58 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:39146 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727607AbfI0Mr5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 08:47:57 -0400
Received: by mail-wm1-f68.google.com with SMTP id v17so6026667wml.4
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 05:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uFRkuroOBs+uKwTPCimySu+UhJ9t5OAbbzvyFqNj3Aw=;
        b=IbvIMhs+m82DKjlxmxk0KpabMZlkRk9aSH5y7m0WMKNaE/mPbNTvN1MMJn2rZWSpFm
         osUpuPBHwajyNIgPo7qTrV/0yrPwPLFjQbI0jVRZsSKArdli/vih9wM64MEHcNxpqHdk
         WO+VDoQkUsVjM6VKgCFC0vpUUUFdc0AAJ6baqTRGuGXwmt8WrhPNDhC6vt9qYU70TPFP
         6cqZ6jXeg6FgaROINu2jYzBNrOjPzi/wIYCNwEvTN3ak39a9n87GVYe1dtV+Qh2u21vk
         YKgYN+feGNtlbmmosfTegWr1Zt2SwCV24NMYw4CsQUG+CCcJO2qgT7IQn+HXeTe2Z/cG
         7k6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uFRkuroOBs+uKwTPCimySu+UhJ9t5OAbbzvyFqNj3Aw=;
        b=resdr/8/2IlUZ6D/VPr+pzUO/jaruB3/IFRGD/aTGxqn7Pl2tbbJiqcDEc29UAJMxU
         +0QCyOebHwWM6tjhHU8acPvLtY0sURF+iDt26L/LhIWmI0UVeHBtB8NDQM+7j5hahdde
         O/JslTXBCwCQBp7As35bmzZbYVTIkC0s0qO5VJLnogcz+sedu6SpEbmBPvSZVX2kA4SX
         45rJVqoix5XntLaM0P8DMvIa35tx2M2Xgb7YGySc/cgzQy8BecVoeuRh7jRKQ5YWXpnO
         MhqLXhIBaysBnrjzQ7oVp9Gu+UwPEm/PF1pXjq9hNuO7WTIkgGUKUBPwOFs+GR45TmDV
         agsQ==
X-Gm-Message-State: APjAAAVITQ7Z+gxBVFIerMreBvtxa99AwnW3vm3MYr7cBBwj0gkGNfz1
        gesxD+k5rNn8I0EPfsFyNSP7QQ==
X-Google-Smtp-Source: APXvYqzkhXyxkYDZ2LWI+X/CiVCmdmGFOljhWnQ2h3Igjxu8Dl9JkvFJINOwIZjIcCRWLVHGYGy5iw==
X-Received: by 2002:a05:600c:1009:: with SMTP id c9mr6777747wmc.64.1569588475224;
        Fri, 27 Sep 2019 05:47:55 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h9sm2985564wrv.30.2019.09.27.05.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 05:47:54 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v5 3/7] arm64: dts: amlogic: g12: add temperature sensor
Date:   Fri, 27 Sep 2019 14:47:44 +0200
Message-Id: <20190927124750.12467-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927124750.12467-1-glaroque@baylibre.com>
References: <20190927124750.12467-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add cpu and ddr temperature sensors for G12 Socs

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 38d70ce1cfc7..0660d9ef6a86 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1353,6 +1353,26 @@
 				};
 			};
 
+			cpu_temp: temperature-sensor@34800 {
+				compatible = "amlogic,g12a-cpu-thermal",
+					     "amlogic,g12a-thermal";
+				reg = <0x0 0x34800 0x0 0x50>;
+				interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
+			ddr_temp: temperature-sensor@34c00 {
+				compatible = "amlogic,g12a-ddr-thermal",
+					     "amlogic,g12a-thermal";
+				reg = <0x0 0x34c00 0x0 0x50>;
+				interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
 			usb2_phy0: phy@36000 {
 				compatible = "amlogic,g12a-usb2-phy";
 				reg = <0x0 0x36000 0x0 0x2000>;
-- 
2.17.1

