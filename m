Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70DCA2F4488
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 07:29:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725878AbhAMG3b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 01:29:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725865AbhAMG3a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 01:29:30 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94AACC061794
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 22:28:50 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id w2so593897pfc.13
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 22:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5GY//1hDCz7r9elwCmehdlk7M4LaaS49VMP1WfyWSi4=;
        b=i/ZJVUE2ai4H5lglCfIZWNqtd43+4jXJz0bXKXEwQmSj5Dy0fa7t2D2OctOEbmE5BZ
         9Lkl3+55Xp6UZqW3otHA4RmgQfN3czkM7WlQalhpBC7xxqr2eVc15Pxa+mx0NElWQPxM
         e87u/elxF+Izecb1IMrNvdc7qjN+2K6ce0IgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5GY//1hDCz7r9elwCmehdlk7M4LaaS49VMP1WfyWSi4=;
        b=BL4cBvdIMSuk5KgCbC2Guu7sXiHVQ7jOwMTmypSf0JKoU6CLqM3P+eZnU3ei1GnfkO
         aczjHahug7lSt2aM7NfFqq04qkLSonOKcjtiFPipXbQWjNMPMc3tQM1H1fGZ7haRwrx6
         BfaJ/lxPR9nQN0P+FwGXZisFEJosBOrIVkRxNYnndSRohopWBD2rCfnOvv1i1uQ4IzIE
         7hzVwnXiAPRvrht3nZaZcF7hMOX6M4K3NyfY0ZIrq0UjNia1QnG7bkvsYjHJ3XR2AjHx
         URBCbW5vSbO+CmBYbGF3TAu2X6UflixptFwYaEZXIJ7t2TBnoFYc8UlnrYO2hqyYatVr
         xOuw==
X-Gm-Message-State: AOAM533kRgKrmLqRto3GpTKGbaHzd3bJxDuq5hm4UAqmKW8LBKed66YA
        ZevSNYzUocDIT1VnDJUvFlU1rQ==
X-Google-Smtp-Source: ABdhPJzGhEqt1+rgAie+Q6xs3+GhDzSV6X2vnnUPrZS5qqFx2HiZfydvtgygku2RZ9FaVGhvy9ccYg==
X-Received: by 2002:aa7:979d:0:b029:1a4:3b76:a559 with SMTP id o29-20020aa7979d0000b02901a43b76a559mr707751pfp.49.1610519330100;
        Tue, 12 Jan 2021 22:28:50 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id d36sm1117473pgm.77.2021.01.12.22.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 22:28:49 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: mt8183: Add krane-sku0 board.
Date:   Wed, 13 Jan 2021 14:28:35 +0800
Message-Id: <20210113062834.4043956-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
In-Reply-To: <20210113062834.4043956-1-hsinyi@chromium.org>
References: <20210113062834.4043956-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Similar to krane-sku176 but using a different panel source.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change:
v3: fix yaml
---
 .../devicetree/bindings/arm/mediatek.yaml     |  4 +++-
 arch/arm64/boot/dts/mediatek/Makefile         |  1 +
 .../dts/mediatek/mt8183-kukui-krane-sku0.dts  | 23 +++++++++++++++++++
 3 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 53f0d4e3ea982..93b3bdf6eaeb7 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -120,7 +120,9 @@ properties:
           - const: mediatek,mt8183
       - description: Google Krane (Lenovo IdeaPad Duet, 10e,...)
         items:
-          - const: google,krane-sku176
+          - enum:
+              - google,krane-sku0
+              - google,krane-sku176
           - const: google,krane
           - const: mediatek,mt8183
 
diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 18f7b46c4095b..deba27ab76574 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -13,6 +13,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku176.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8192-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts
new file mode 100644
index 0000000000000..fb5ee91b6fe0e
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2019 Google LLC
+ *
+ * Device-tree for Krane sku0.
+ *
+ * SKU is a 8-bit value (0x00 == 0):
+ *  - Bits 7..4: Panel ID: 0x0 (AUO)
+ *  - Bits 3..0: SKU ID:   0x0 (default)
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-krane.dtsi"
+
+/ {
+	model = "MediaTek krane sku0 board";
+	compatible = "google,krane-sku0", "google,krane", "mediatek,mt8183";
+};
+
+&panel {
+	status = "okay";
+	compatible = "auo,kd101n80-45na";
+};
-- 
2.30.0.284.gd98b1dd5eaa7-goog

