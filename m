Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D1466FCA34
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2019 16:47:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726985AbfKNPro (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Nov 2019 10:47:44 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:51759 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726894AbfKNPrn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Nov 2019 10:47:43 -0500
Received: by mail-wm1-f67.google.com with SMTP id q70so6181143wme.1
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2019 07:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4wo8zGUvhFjwqDku4wCv5Ttt+MaXXuVDd4WBIo+uQ0g=;
        b=vTb5m9+WaTOE3iBR11VUP1HOuDyLJJ4anFAIcbYrl9gsMDJmtO5LsTgjIcmmzCVOX3
         mmJFbxltKy6H5678MrC572cNRSmTUuoE5sN6ELk7jEEUgCq4IdwLHnUt5eg7M8NofQZ/
         lOE3yR9QAVgaLeeCzW5R08UjHNuvSFEGDuQGB7KT3VnSHuVqBRfrn3sjk2yxwaALzwoY
         Z6MJEszjxjgAod3LNNRN0dZ5W7kaxRJXvI4nfRM+aYkXvPBG287T2ZMZawmx0kFv+X3G
         7EfYFK3UpierUlO6tcUrjUQ7dvK/sDO7lu3Hp96o6FKJi0DZl4zMkFm0pCuFRC01UCPA
         /BcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4wo8zGUvhFjwqDku4wCv5Ttt+MaXXuVDd4WBIo+uQ0g=;
        b=gWD2ZmyoKh8WVuJcflC5s31BHF0xnr3v4tOrCihcZKGYjrPr7tehGWldAqNrdmrgDy
         edz2Z19kaF9BhvdPbJgs5Cf1VsnWAknh67IWUnoPcBgL40gM6D3RyosI3eYcJGYp/rme
         gWy1g64gxp7YG5+9L2DrfHr66iMcmlnmlOqB59G7/Tr4+I9wrWRf9TWz7Ptom/hTSkE6
         pqKvvkMhGR8x9e+qP1UaWua6KNVz5dzSWJUr1UqAluJj92+/cORyt1rr77zeGnBXNNtE
         2i4H7DQPXBnTc9ey2tLuuZPnviYvMykMxe2nrNYEGfjadkjwHBXLObwKme8xwoHr71fB
         jqeQ==
X-Gm-Message-State: APjAAAVMGHFnu6VenuIg+645ohgtvhHidG8LTF/1GFAs5vhrQiuJpPaP
        eyNVyJtLEETX0zvzbrYGOLiZl6EWBIQ=
X-Google-Smtp-Source: APXvYqzJh07JEnxYOEI4mYx1Z1ivxmp/MoUyRRmyw3wJuJusYUN5a6zAe5JPqYIKsp/B7oBTJMaLDg==
X-Received: by 2002:a05:600c:506:: with SMTP id i6mr8873908wmc.153.1573746461977;
        Thu, 14 Nov 2019 07:47:41 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id l4sm6428629wml.33.2019.11.14.07.47.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Nov 2019 07:47:41 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
        wens@csie.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 2/2] ARM64: dts: allwinner: add pineh64 model B
Date:   Thu, 14 Nov 2019 15:47:33 +0000
Message-Id: <1573746453-5123-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
References: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
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
 .../allwinner/sun50i-h6-pine-h64-model-b.dts  | 21 +++++++++++++++++++
 3 files changed, 27 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index a02baa374adc..3e3e74cfa3c3 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -604,6 +604,11 @@ properties:
           - const: pine64,pine-h64
           - const: allwinner,sun50i-h6
 
+      - description: Pine64 PineH64 model B
+        items:
+          - const: pine64,pine-h64-model-b
+          - const: allwinner,sun50i-h6
+
       - description: Pine64 LTS
         items:
           - const: pine64,pine64-lts
diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index d2418021768b..62bc43f187bf 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-model-b.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
new file mode 100644
index 000000000000..f4c8966a6497
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
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
+	compatible = "pine64,pine-h64-model-b", "allwinner,sun50i-h6";
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

