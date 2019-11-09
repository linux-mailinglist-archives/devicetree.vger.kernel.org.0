Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88612F6042
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2019 17:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726381AbfKIQUu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Nov 2019 11:20:50 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:40922 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726537AbfKIQUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Nov 2019 11:20:50 -0500
Received: by mail-wm1-f66.google.com with SMTP id f3so9169682wmc.5
        for <devicetree@vger.kernel.org>; Sat, 09 Nov 2019 08:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rOI6QUOBK9QSogmnbQtU7q55r9yQbW3Ua9QOoR9QkrY=;
        b=Wwy+QwH+P9UqoP8oujilPKtig1715dkzgWKvceZrPvhHTJlIXIZccGusWFTVJ03w0K
         qpCLCDsPwYahI6hQnmMk0PmpnS4cSuliDSh0zimgWFA9MYqqgOJRbSNoFpyVBu8JbXgA
         2pUgUVP0tV2C3Il/VGI4Fw631Rp5dYEJqWy7eDdEZhKPt0sZcygq3ZUlxd5UqU6PSW+W
         Gnu95MAF3BmQ2IFG7eQy5OSrRpQAY/8A3Dzskm308+G4XB3al5xNPmHo/sND2rnzEmWY
         0Qz+OaBc0octysH9Hq+Z5V4Q4spiNyk63WGC7W8zfrIrDcj12WcVLN7tH6gVB8RlXl+Q
         TA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rOI6QUOBK9QSogmnbQtU7q55r9yQbW3Ua9QOoR9QkrY=;
        b=l+nDGOHrBciK42kDTVbC3lQZuSjj/E71v3ZbGpfTPCGcaiY9OsLJwKB0hFyI3ouUMn
         DK/4gvvIfYIX3aWgRwPZiifE4tr/69Jj+9pMR5vAQ90M8lB22ntOUqfk0rLAcjtnz7iw
         cOeFJz7TK8GR6LoSYWYBijaMUNmBov5bFi5MjcIV8fm/jwAAtmPrb/3H62uoVBtuBcvh
         kwmjmyqY5m+QoiQJrDkoXTr4Ugrlz4J3rJ7setXFKTxfbT7Ap7L3LLfR5G844+wtjMGU
         fD1gmhlFqEGdJjLTA9LarjkEmkKRtIOFAGRqo+6xuTjRv3YTawFgH6fhJJe5RfJYnB1E
         VamA==
X-Gm-Message-State: APjAAAXkvfAg3sQUR+8TssulVkoobxhhlsgJ8WaxIdr2x0PDZj2S5KvW
        oxyaVKd0rSnW8VEmTIlwpV8m4g==
X-Google-Smtp-Source: APXvYqw4Bxj4tYYWUbk4jo5BvOUd32pF74MDX477Ax1+OvNU4Gn2ClWcfzN9u9Pt+5aq5JWKGp3OpQ==
X-Received: by 2002:a7b:c747:: with SMTP id w7mr14087795wmk.62.1573316447064;
        Sat, 09 Nov 2019 08:20:47 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id v8sm14534975wra.79.2019.11.09.08.20.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Nov 2019 08:20:46 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
        wens@csie.org, jernej.skrabec@siol.net
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 2/2] ARM64: dts: allwinner: add pineh64 model B
Date:   Sat,  9 Nov 2019 16:20:33 +0000
Message-Id: <1573316433-40669-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
References: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds the model B of the PineH64.
The model B is smaller than the pine64 model A and has no PCIE slot.

The only devicetree difference with the pineH64 model A, is the PHY
regulator and the HDMI connector node.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../devicetree/bindings/arm/sunxi.yaml        |  5 +++++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-modelB.dts   | 21 +++++++++++++++++++
 3 files changed, 27 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index b8ec616c2538..227217bf28df 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -604,6 +604,11 @@ properties:
           - const: pine64,pine-h64-modelA
           - const: allwinner,sun50i-h6
 
+      - description: Pine64 PineH64 model B
+        items:
+          - const: pine64,pine-h64-modelB
+          - const: allwinner,sun50i-h6
+
       - description: Pine64 LTS
         items:
           - const: pine64,pine64-lts
diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index d2418021768b..bda89b9ccb4a 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelB.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
new file mode 100644
index 000000000000..063a85223faa
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+/*
+ * Copyright (C) 2019 Corentin LABBE <clabbe@baylibre.com>
+ */
+
+#include "sun50i-h6-pine-h64.dts"
+
+/ {
+	model = "Pine H64 model B";
+	compatible = "pine64,pine-h64-modelB", "allwinner,sun50i-h6";
+
+	/delete-node/ reg_gmac_3v3;
+};
+
+&hdmi_connector {
+	/delete-property/ ddc-en-gpios;
+};
+
+&emac {
+	phy-supply = <&reg_aldo2>;
+};
-- 
2.23.0

