Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AAF43CC139
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 06:57:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231881AbhGQFAF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jul 2021 01:00:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231311AbhGQE7x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jul 2021 00:59:53 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE132C061762
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 21:56:56 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id c1so6784366pfc.13
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 21:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CW8+X4ven8LE6a628SvByr7Eb90cm9U9YeyKIDh8Q0I=;
        b=vxfNy/AVZ2+QtClGwq8aphvCDom0KQ6+D54xbcCEyp10nVFZuz4ofBkxLr2Xx+GH9T
         QterhwEbaVV7GJtHyyLELiZuvkXDkmmrLVCUTZ+vPddBKWzz5C7DDT0FLkNmJJLxpLnM
         EhS1rQ/fqr6rmqWzb/71ghhzoe1U9S1ZyVCls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CW8+X4ven8LE6a628SvByr7Eb90cm9U9YeyKIDh8Q0I=;
        b=Z0MgsR9+NCBrn7GpZyT2ArwrxYcnqYO7Xb4n04qsFepuqU34KmA6AletqVQvSIcgVX
         vXSHfjiNT+ofEr9XTnLRKX0ltYtn7kAeZ5UK7bnc6VfE+GSHsrMydk1AOIsvqB8xd6BP
         rdU26DTWr/+R6XljCet3tGAmr1XR8PaziCVd/rxPWWkmcnyHLKLFR4j7VFFWMxsSTc28
         42vsgx7bEjqZjVrh9cu6V3ye+goZJSTliZFP2oD55ueK7krKC3XLHryJjX8xAZ4/q7Lg
         DAIqYlcMyKQtmzIE+6fEtVl6KwWJLx590gMMtOGOwpunSo/0rbUAT/tjTvGm4Ey9L0Pn
         58jA==
X-Gm-Message-State: AOAM530JJAZ0jCckPlNYmEqYUk2bhEF9e3Jh0sRl7JQT6SS0R0dQ0qB6
        8T/URf73xtQJbSOZP884ME64elOf//GPyQ==
X-Google-Smtp-Source: ABdhPJzgkcSKDtEoe0QjGr6QO+9bk6MMOGNJF814v3oQIO5dHPK0v+De5Ul7P+A78cES5+y0x51sIA==
X-Received: by 2002:a63:471b:: with SMTP id u27mr13626075pga.301.1626497816200;
        Fri, 16 Jul 2021 21:56:56 -0700 (PDT)
Received: from shiro.work (p866038-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.60.38])
        by smtp.googlemail.com with ESMTPSA id w2sm12522885pjf.2.2021.07.16.21.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 21:56:55 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 06/10] ARM: dts: mstar: unitv2: Wire up LEDs
Date:   Sat, 17 Jul 2021 13:56:23 +0900
Message-Id: <20210717045627.1739959-7-daniel@0x0f.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210717045627.1739959-1-daniel@0x0f.com>
References: <20210717045627.1739959-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the red and white leds present on the unitv2.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../boot/dts/mstar-infinity2m-ssd202d-unitv2.dts   | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
index a81684002e45..eb35ce00ae50 100644
--- a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
@@ -7,6 +7,8 @@
 /dts-v1/;
 #include "mstar-infinity2m-ssd202d.dtsi"
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	model = "UnitV2";
 	compatible = "m5stack,unitv2", "mstar,infinity2m";
@@ -18,6 +20,18 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	leds {
+		compatible = "gpio-leds";
+		white {
+			gpios = <&gpio SSD20XD_GPIO_GPIO0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "activity";
+		};
+		red {
+			gpios = <&gpio SSD20XD_GPIO_GPIO1 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
 };
 
 &pm_uart {
-- 
2.32.0

