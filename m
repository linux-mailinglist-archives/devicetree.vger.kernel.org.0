Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6625D3413DD
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 04:53:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232935AbhCSDxL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 23:53:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233620AbhCSDw5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 23:52:57 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8312C06174A
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 20:52:57 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id f2-20020a17090a4a82b02900c67bf8dc69so6066655pjh.1
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 20:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0c6ue7k7W+aM2C/ru0d4xrULEj/JDjoLwyUHXQYoMxI=;
        b=nv1Nx7xsndUI6U29g+m86RII2Symog9Ppe+sR30OmWZ/YOOcqph1L5Jd+xN/HdcFoI
         vNlvlU4PBDG5QqNvjgjv95u0C5jUqB5wp/yPJQk5dZWi62DaM7wcWqD9KaGUAaKtyix8
         TZGSwWcexyzZOPo82x+EhmCLcjZyMOoWlrv4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0c6ue7k7W+aM2C/ru0d4xrULEj/JDjoLwyUHXQYoMxI=;
        b=sCfX0T99fe/bJlW+GJHgWKwism7OfmnBX+LEPBF+1HT1yPSPSexhFojBllHfXOSUf3
         emQjj/AVdCq8z2RqPBa56az8pahzSztrKUly6oygmOreLkrWaxopVKmOmWTWpX9Imazu
         qF/at26a6HLZSD1C/DykrixZuUfxAU95kmNBz6B2LPF6/Huwbk4YbYTBIav+88imPpHp
         9alVV9w5+2ePgmNK7M2O9rSj53kioepGDvahJ3pLYllgR9ramwGw76AIGy5ESfHV/8az
         MpLKyfB9/9OpWg39Uq3NBJOfb+1qZ6ehvnzHzqrb1iYGZvCU5MFJrqEX6nUV7d1oBLmo
         B3Bw==
X-Gm-Message-State: AOAM532FDKkfEOJURURy+PpyNnNQ738z9K77fJRf85ViMZg8F5ZZcpj2
        FZFUdMKBE+8hWSpvEeQtiD3YOA==
X-Google-Smtp-Source: ABdhPJzAsFK+Zh3E/btZHCY105Qrc22+B+j7F68MDjbBqt+1bIvVfKn8q8ZxeM7+VANXIB/a25HmGg==
X-Received: by 2002:a17:90a:c588:: with SMTP id l8mr7574989pjt.120.1616125977224;
        Thu, 18 Mar 2021 20:52:57 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e12f:5c36:14f:bbf5])
        by smtp.gmail.com with ESMTPSA id u66sm3442180pfu.186.2021.03.18.20.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 20:52:56 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, Ben Ho <Ben.Ho@mediatek.com>
Subject: [PATCH v4 4/4] arm64: dts: mt8183: Add kukui-jacuzzi-juniper board
Date:   Fri, 19 Mar 2021 11:52:45 +0800
Message-Id: <20210319035245.2751911-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210319035245.2751911-1-hsinyi@chromium.org>
References: <20210319035245.2751911-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Juniper is known as Acer Chromebook Spin 311 (CP311-3H).

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile         |  1 +
 .../mt8183-kukui-jacuzzi-juniper-sku16.dts    | 13 +++++++++
 .../mt8183-kukui-jacuzzi-juniper.dtsi         | 27 +++++++++++++++++++
 3 files changed, 41 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 554105d2c389..db4753d82a4b 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -14,6 +14,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-damu.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-juniper-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku176.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8192-evb.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dts
new file mode 100644
index 000000000000..36d2c3b3cadf
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-juniper.dtsi"
+
+/ {
+	model = "Google juniper sku16 board";
+	compatible = "google,juniper-sku16", "google,juniper", "mediatek,mt8183";
+};
+
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi
new file mode 100644
index 000000000000..078bc765646f
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi.dtsi"
+
+&i2c2 {
+	trackpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pins>;
+
+		interrupts-extended = <&pio 7 IRQ_TYPE_LEVEL_LOW>;
+
+		wakeup-source;
+	};
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_JUNIPER";
+};
+
-- 
2.31.0.rc2.261.g7f71774620-goog

