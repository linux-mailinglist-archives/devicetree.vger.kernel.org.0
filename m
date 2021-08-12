Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B04283EA267
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 11:48:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236386AbhHLJs3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 05:48:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236356AbhHLJs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 05:48:27 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6C3EC0613D5
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 02:48:02 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso9863190pjb.1
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 02:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jB/TE84bWOxCrkfpcM44aGTL4Nx8FVU95hRHwolk2mo=;
        b=Pg/8Dspv4dzBLyQJJG14oj5ikSz2VqvTY47A8Ns3N/LDISxkJUdS0uVbJZYiY5lLXS
         oBTvq2lBGaaxzNzrbjZ0LbPSjIgcDGsA+dfFQsvp3xMy9Zu/HFTT+oAcXRjpV3z1SICg
         K2ba0fkJ9WA6LE+pFXriKCR0Il+76G0RaeOyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jB/TE84bWOxCrkfpcM44aGTL4Nx8FVU95hRHwolk2mo=;
        b=BXS62JsovbDcYJXJmYVa6moQb20LXr23GihSU63Ev6v7Mf4x4WALpI7BcwExmHYeLL
         JsU1g7wWYsd+IGXvOk+5x9QFs9YYQKWHfth47/4xH+FczR5PwtTLuETPoizYOartd2bn
         a5C4y2ToOMRKiywEAQQnvwAL9BgIuFs1NtZXNueFtjkejFaC2fmLyZDG58XdHFrREKZ5
         7mn7khAv2q49icJPa2vj2OmHFSaiRNojENEazYmwBJupjPc2S+I3sDO/exlNueGbbb+e
         Yq4xeJ6teGQuobuzFq9ubj7+6wa8xArteLMBpiRPvINxcnKWuMrhk/zd6ZQmyZGIDl6g
         2sLQ==
X-Gm-Message-State: AOAM530tbTxD6K1/oePhrhwzc0OeOuuDO7fMR06ju6lFPnAFZ8i+B4N8
        vSEhYjtWtkdGDl/JUIe0fS7cNA==
X-Google-Smtp-Source: ABdhPJz8AxQKZxhllx159XJCed5gtH0lc1CYXmZnByhWqFEcqTnhGL3naVdON1DixxEMeHRSOTtdFw==
X-Received: by 2002:a17:902:e8c4:b029:12d:1c9c:2e77 with SMTP id v4-20020a170902e8c4b029012d1c9c2e77mr2994145plg.48.1628761682281;
        Thu, 12 Aug 2021 02:48:02 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8e0d:8032:9364:612c])
        by smtp.gmail.com with ESMTPSA id z15sm2991052pgc.13.2021.08.12.02.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Aug 2021 02:48:01 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3399: Add gru-scarlet-dumo board
Date:   Thu, 12 Aug 2021 17:47:53 +0800
Message-Id: <20210812094753.2359087-3-wenst@chromium.org>
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
In-Reply-To: <20210812094753.2359087-1-wenst@chromium.org>
References: <20210812094753.2359087-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dumo is another variant of Scarlet, also known as the ASUS Chromebook
Tablet CT100. This is almost the same as Scarlet-Innolux, but uses a
board-specific calibration variant for the WiFi module.

Add a new device tree for it.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3399-gru-scarlet-dumo.dts  | 41 +++++++++++++++++++
 2 files changed, 42 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 12a8b6cacdbd..479906f3ad7b 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -25,6 +25,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-ficus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-firefly.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-bob.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-kevin.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-scarlet-dumo.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-scarlet-inx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-scarlet-kd.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-hugsun-x99.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
new file mode 100644
index 000000000000..853e88455e75
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Gru-Scarlet Rev5+ (SKU-0) board device tree source
+ *
+ * Copyright 2021 Google LLC.
+ */
+
+/dts-v1/;
+
+#include "rk3399-gru-scarlet.dtsi"
+
+/ {
+	model = "Google Scarlet";
+	compatible = "google,scarlet-rev15-sku0", "google,scarlet-rev15",
+		     "google,scarlet-rev14-sku0", "google,scarlet-rev14",
+		     "google,scarlet-rev13-sku0", "google,scarlet-rev13",
+		     "google,scarlet-rev12-sku0", "google,scarlet-rev12",
+		     "google,scarlet-rev11-sku0", "google,scarlet-rev11",
+		     "google,scarlet-rev10-sku0", "google,scarlet-rev10",
+		     "google,scarlet-rev9-sku0",  "google,scarlet-rev9",
+		     "google,scarlet-rev8-sku0",  "google,scarlet-rev8",
+		     "google,scarlet-rev7-sku0",  "google,scarlet-rev7",
+		     "google,scarlet-rev6-sku0",  "google,scarlet-rev6",
+		     "google,scarlet-rev5-sku0",  "google,scarlet-rev5",
+		     "google,scarlet", "google,gru", "rockchip,rk3399";
+};
+
+&mipi_panel {
+	compatible = "innolux,p097pfg";
+	avdd-supply = <&ppvarp_lcd>;
+	avee-supply = <&ppvarn_lcd>;
+};
+
+&pci_rootport {
+	wifi@0,0 {
+		compatible = "qcom,ath10k";
+		reg = <0x00010000 0x0 0x00000000 0x0 0x00000000>,
+		      <0x03010010 0x0 0x00000000 0x0 0x00200000>;
+		qcom,ath10k-calibration-variant = "GO_DUMO";
+	};
+};
-- 
2.32.0.605.g8dce9f2422-goog

