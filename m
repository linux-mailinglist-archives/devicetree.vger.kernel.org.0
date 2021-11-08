Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0146F447B01
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 08:30:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237845AbhKHHaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 02:30:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237515AbhKHHaJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 02:30:09 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB29FC061714
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 23:27:23 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id r28so14404250pga.0
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 23:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mMyybJ8cedWreU7hFIqGdeFr06iYH5ttCqNwsXNo+Ug=;
        b=BlJ4p8MnCKRJrHov42Gw5KKXGTRYkmjY6+EH1ZkUsBlpQHSn1X3MArHfqqyICbpt8J
         ckBJBTOX1M7RNcLEX4+BBy5saGYqpvpVQDtiX6EgOU3R+pDDNCsYiY2H3XOSmlcBFFFS
         yPaiSqa+hYKrxoqtG0Csp1v1bWOsB8bznR7Rc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mMyybJ8cedWreU7hFIqGdeFr06iYH5ttCqNwsXNo+Ug=;
        b=rpa/nxy2gy7+fFWeXQVq3ovqqfKjYZlDGwCvQwuyvrK6SyhYOJUfqZmMiQKa7M8A6J
         HdorST3dumKx3XXX1udCO7c5i5wA1WIEI84pLB9K8y/faCjibKgC/vGKyy0leQb22QpH
         fj9JOHaRXtcSn73mbnDhuNioV6gUEe1BKshg8VmoXNQzmLCgLTntNEmhilFVUwHtZbmV
         QJj7vfsH4ZYKk1QlHi8mYYAVnx34YmVj6UMhYUzKJiRl9OY6dQysgObBWDj93x5QH4Jr
         DNM38CE5Zje8vOVpq6b8J/8YzSJd4AmzVMbQx9IIZjZUsGPQaVDGsAjdzJP8wnR7i3ic
         nULw==
X-Gm-Message-State: AOAM5311VZayL/kztzaFH7Pl/G5+SsQklw7LPSSNFGrrrIYcMv+A1FqL
        ilEFPEKzsHLg2mEiAKlfpDJ7cw==
X-Google-Smtp-Source: ABdhPJzGTEjdH6LyTtUqnt1Zognyi8VuOYKKerfR1nK0zQN7I97rN5Rl+Pi5/x087s9KQfDWroMIMg==
X-Received: by 2002:a63:af06:: with SMTP id w6mr58727268pge.436.1636356443295;
        Sun, 07 Nov 2021 23:27:23 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5f03:6a9b:24e8:3a2e])
        by smtp.gmail.com with ESMTPSA id e8sm11684972pgn.46.2021.11.07.23.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 23:27:23 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] arm64: dts: mt8183: Add kakadu sku22
Date:   Mon,  8 Nov 2021 15:27:08 +0800
Message-Id: <20211108072711.1628566-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211108072711.1628566-1-hsinyi@chromium.org>
References: <20211108072711.1628566-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kakadu sku22 is using mediatek,mt8183_mt6358_ts3a227_rt1015p audio codec

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile         |  1 +
 .../mediatek/mt8183-kukui-kakadu-sku22.dts    | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 9834bd659d1530..1613259b686576 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -27,6 +27,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kenzo.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu-sku22.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku272.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku288.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dts
new file mode 100644
index 00000000000000..3a724e6f915cd5
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-kakadu.dtsi"
+#include "mt8183-kukui-audio-rt1015p.dtsi"
+
+/ {
+	model = "MediaTek kakadu board sku22";
+	compatible = "google,kakadu-rev3-sku22", "google,kakadu-rev2-sku22",
+		     "google,kakadu", "mediatek,mt8183";
+};
+
+&sound {
+	compatible = "mediatek,mt8183_mt6358_ts3a227_rt1015p";
+};
+
-- 
2.34.0.rc0.344.g81b53c2807-goog

