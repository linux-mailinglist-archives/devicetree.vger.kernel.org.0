Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99A9844BBB9
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 07:31:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230321AbhKJGeQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 01:34:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230281AbhKJGeM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 01:34:12 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0AD4C0613F5
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 22:31:25 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id b13so2215654plg.2
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 22:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MIJkQVkt4xqve0BOXtxCBd9FeU0z9MmxfabsOKsl+NQ=;
        b=mcj025yCzja9hIlJwynNpOt/E28zRtlbZxmElO5IyDcrdKFpFqTqAiS+EKoo+Ppbqn
         EemHKBHw3CsQFJ4osYHtbnQYNk27e/pXfGEwRYl7hPnCzCi5I3u42vA2Jkt8kPutz6th
         d07JQ88vJf+p1b5AmujFTUH0CnAQw2YG0IWXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MIJkQVkt4xqve0BOXtxCBd9FeU0z9MmxfabsOKsl+NQ=;
        b=gD7NfYic/QizYXbWsQh9tgc7YkNIZyBF94Aa/LUbH5yVuAlwQ/jm5FBDA+Bq9tKSw1
         SuYNvDsxbUKSM2C+7YMbn8K7r2kLZy1ymKpVfO8x6pKOj1ROEqPhViUw6pYo25Kw8uQh
         cbdySj3P3rmh1Dn9P6HzXPyu7YZkuIXVQiizB6JOLWfBKHWavV0c8MDCm2pU9yLeXIhT
         sp0OAnxtVp75c+JgSwUXXWTm17vaVbl0/KVymszeK5CuTwbgI3KOkiqPJPKv+bdz8sWj
         ObfbVT08Nodum5YgG+29WlJceYWigmrtZfi526OwD8g/TvYTfGbmObzMWdKA3n6WfTpV
         EWMQ==
X-Gm-Message-State: AOAM530XuzRWnZvMVbQ2wal/qPXKIo4oPVPG+qi6SpPeqccgXxNYrZ3F
        +egMX6oSHaGIIeekHyfVUyEtZA==
X-Google-Smtp-Source: ABdhPJx6Q97OrMCMe68Imw6Gj8S/disVEQv3LbC6RMq6Z9b59hdwE/dMZqj6d4GCaQGhmQjJHDOQ1Q==
X-Received: by 2002:a17:90b:218:: with SMTP id fy24mr14245160pjb.187.1636525884182;
        Tue, 09 Nov 2021 22:31:24 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6886:f712:1a79:e3d9])
        by smtp.gmail.com with ESMTPSA id w1sm15623959pgb.50.2021.11.09.22.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Nov 2021 22:31:23 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/7] arm64: dts: mt8183: Add kukui-jacuzzi-cozmo board
Date:   Wed, 10 Nov 2021 14:31:13 +0800
Message-Id: <20211110063118.3412564-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211110063118.3412564-1-hsinyi@chromium.org>
References: <20211110063118.3412564-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cozmo is known as Acer Chromebook 314 (CB314-2H/CB314-2HT)

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile         |  1 +
 .../mediatek/mt8183-kukui-jacuzzi-cozmo.dts   | 36 +++++++++++++++++++
 2 files changed, 37 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 4f68ebed2e3188..045927402269a9 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -14,6 +14,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-burnet.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-cozmo.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-damu.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-fennel-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-fennel-sku6.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
new file mode 100644
index 00000000000000..072133fb0f0162
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi.dtsi"
+#include "mt8183-kukui-audio-ts3a227e-max98357a.dtsi"
+
+/ {
+	model = "Google cozmo board";
+	compatible = "google,cozmo", "mediatek,mt8183";
+};
+
+&i2c_tunnel {
+	google,remote-bus = <0>;
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
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_COZMO";
+};
-- 
2.34.0.rc0.344.g81b53c2807-goog

