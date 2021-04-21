Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 315AD366794
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 11:06:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237954AbhDUJG7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 05:06:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237968AbhDUJG6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 05:06:58 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50A8CC06134A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:25 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id 31so13668863pgn.13
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sk0aghWAXiuY04TlYdrwhlUuLk1uH7qefHmT/IdZMDg=;
        b=X1z4+mbKLpRObRWvepNJAEU8M64wuBuiqxLX549X+Ho8iRE5kaQD90yRHfHCY+YJ6g
         FM8LaOVK1/LdWKWgkNWbU+n3nwqg8lp67hlUI1TOdQ2mcwKv2oZTuiocfajeExKfeUV7
         O/1pyQwQXhYeTpQv9ql/qWWY7D6cxwf+5pPlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sk0aghWAXiuY04TlYdrwhlUuLk1uH7qefHmT/IdZMDg=;
        b=RlnGudviU9EPb3JB+atBBEutTH0EWXQzE6Ipn06Ul+iRrPiRJ0UrEyl6eh4mM/s/Cn
         OhE0T/J7aECFmEjKBiB56//tBRfEV26U5y6TK4lEDMvHq69o2m2X57TmecQLeCHIPkiu
         uMMnhzkuql6dqka1LtYnfSopoPIWU2zk7h1RQU9JhUu5PQopjt/MPtRNHr/ZbqQNRar2
         53/GXJiZPVg/XAogpbfxjhRdNFcWEfopYFdxCwdZrdDJX6qlR+DSfnJxSJXGjP5j++og
         NkLMMe+ms/EzP/4WJvUtRsvOxSbKogfE3gM1C0hvZNjRoxvcas7jWVq4WCWAUORUcRF2
         UhAw==
X-Gm-Message-State: AOAM530hD7tlZPKwGVjk5MkQkObU7LuBiPzr7zZil2NUhnEMdKs7e8UR
        0sD4jp1U+OgVOQr6w9kq4aVBxA==
X-Google-Smtp-Source: ABdhPJwx8xPcPkWj8CVwq7V7TaSoTM3OM9ne0/1AqA3lNvcjnZl3HcAtiDGW8d97DRHzqFh/tgp/pQ==
X-Received: by 2002:a17:90a:1b42:: with SMTP id q60mr10308555pjq.230.1618995984831;
        Wed, 21 Apr 2021 02:06:24 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:60c1:887e:ac53:9b5c])
        by smtp.gmail.com with ESMTPSA id jx20sm1495889pjb.41.2021.04.21.02.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 02:06:24 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v3 10/10] arm64: dts: mt8183: Add kukui-jacuzzi-fennel board
Date:   Wed, 21 Apr 2021 17:06:01 +0800
Message-Id: <20210421090601.730744-11-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210421090601.730744-1-hsinyi@chromium.org>
References: <20210421090601.730744-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fennel is known as Lenovo IdeaPad Flex 3 Chromebook.
Fennel14 is known as Lenovo IdeaPad 3 Chromebook.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile         |  3 ++
 .../mt8183-kukui-jacuzzi-fennel-sku1.dts      | 44 +++++++++++++++++++
 .../mt8183-kukui-jacuzzi-fennel-sku6.dts      | 32 ++++++++++++++
 .../mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 27 ++++++++++++
 .../mt8183-kukui-jacuzzi-fennel14.dts         | 16 +++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    |  8 ++++
 6 files changed, 130 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 25770d83059d..4f68ebed2e31 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -15,6 +15,9 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-burnet.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-damu.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-fennel-sku1.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-fennel-sku6.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-fennel14.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-juniper-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kappa.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kenzo.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
new file mode 100644
index 000000000000..ef6257c9a2d2
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-fennel.dtsi"
+
+/ {
+	model = "Google fennel sku1 board";
+	compatible = "google,fennel-sku1", "google,fennel", "mediatek,mt8183";
+
+	pwmleds {
+		compatible = "pwm-leds";
+		keyboard_backlight: keyboard-backlight {
+			label = "cros_ec::kbd_backlight";
+			pwms = <&cros_ec_pwm 0>;
+			max-brightness = <1023>;
+		};
+	};
+};
+
+&cros_ec_pwm {
+	status = "okay";
+};
+
+&touchscreen {
+	status = "okay";
+
+	compatible = "hid-over-i2c";
+	reg = <0x10>;
+	interrupt-parent = <&pio>;
+	interrupts = <155 IRQ_TYPE_LEVEL_LOW>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&touchscreen_pins>;
+
+	post-power-on-delay-ms = <10>;
+	hid-descr-addr = <0x0001>;
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_FENNEL";
+};
+
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
new file mode 100644
index 000000000000..899c2e42385c
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-fennel.dtsi"
+
+/ {
+	model = "Google fennel sku6 board";
+	compatible = "google,fennel-sku6", "google,fennel", "mediatek,mt8183";
+};
+
+&touchscreen {
+	status = "okay";
+
+	compatible = "hid-over-i2c";
+	reg = <0x10>;
+	interrupt-parent = <&pio>;
+	interrupts = <155 IRQ_TYPE_LEVEL_LOW>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&touchscreen_pins>;
+
+	post-power-on-delay-ms = <10>;
+	hid-descr-addr = <0x0001>;
+};
+
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_FENNEL";
+};
+
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
new file mode 100644
index 000000000000..bbe6c338f465
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi.dtsi"
+
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
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
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts
new file mode 100644
index 000000000000..e8c41f6b4b0d
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-fennel.dtsi"
+
+/ {
+	model = "Google fennel14 sku0 board";
+	compatible = "google,fennel-sku0", "google,fennel", "mediatek,mt8183";
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_FENNEL14";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index 4049dff8464b..d8826c82bcda 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -92,6 +92,14 @@ volume_up {
 	};
 };
 
+&cros_ec {
+	cros_ec_pwm: ec-pwm {
+		compatible = "google,cros-ec-pwm";
+		#pwm-cells = <1>;
+		status = "disabled";
+	};
+};
+
 &dsi0 {
 	status = "okay";
 	/delete-node/panel@0;
-- 
2.31.1.498.g6c1eba8ee3d-goog

