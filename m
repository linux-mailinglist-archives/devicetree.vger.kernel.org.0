Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D571A3605E9
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 11:35:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232331AbhDOJgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 05:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232316AbhDOJf7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 05:35:59 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C9F6C06138C
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:35:36 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id e2so7428561plh.8
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iSimGFiptV/yib1tILwJ1nycFQVOVI1iO9MnbE/4e1o=;
        b=li+r5GUgKcZAkzHHfvRNV4s0f6rG0koGnh8Gj0v5SrLhf0JSoAmSXJjh4/DN6fk+Ez
         xkTLoqQRZ1zb2dbDhUXbfZdo1mAi6UCB0a7c3UdFp9emOz2RWlZ/Aa0tQeXbzjO/nn7q
         u7YypxzVhXQWKeR/SBNosw20eAXnq+PQrK204=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iSimGFiptV/yib1tILwJ1nycFQVOVI1iO9MnbE/4e1o=;
        b=lOSR32kzyKs0ugylhXXPqtOqL4ce6Tjse4KvcmnsMleiben69U/MCA7sut1FntSzIp
         i1JUJnJK7bjyIS4kyPFK5hDSDi7lDhtdi1WzFYBHAWBTWuOHYgikKsmyJoQ+aRywFel4
         hX4a8YUMWacal9hjR2nlfM6X324XvInKfLnjRFSfUUW96Ym18tWUv2vnMRuBUrh28nSt
         4tJ3PgjarjQA/I6b4diqh8PkGD23ITAU62O9rY5SizrsPisPMNvyLMmyOF9clfibN1Cr
         cNR/g3izbMl0ulVnK7cRcwbhYI9oapUtgAPaj1+4MCmJ7Zkhzm10WLexSOZmfjbkAUgO
         +YrA==
X-Gm-Message-State: AOAM530eoLO866GdfxeGBoToPjv3ja5gjXKTxBEkKl43JA5Z0wHOaqKc
        D64DNgOwQwEC1LfqWlXFJP6YNQ==
X-Google-Smtp-Source: ABdhPJxc2zwVJBCMiV2KgXePV+PRmD3RUu/yvHjmqKWzrJCZSrMIQcXyrY8er9vBhO5j4H0r4TSDfQ==
X-Received: by 2002:a17:90a:1b62:: with SMTP id q89mr3036629pjq.54.1618479335951;
        Thu, 15 Apr 2021 02:35:35 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6432:a6cb:91d2:5e32])
        by smtp.gmail.com with ESMTPSA id a13sm1849502pgm.43.2021.04.15.02.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 02:35:35 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 7/8] arm64: dts: mt8183: Add kukui-jacuzzi-burnet board
Date:   Thu, 15 Apr 2021 17:35:18 +0800
Message-Id: <20210415093519.1920877-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210415093519.1920877-1-hsinyi@chromium.org>
References: <20210415093519.1920877-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Burnet is known as HP Chromebook x360 11MK G3 EE

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile         |  1 +
 .../mediatek/mt8183-kukui-jacuzzi-burnet.dts  | 33 +++++++++++++++++++
 2 files changed, 34 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 5f43bbc2ea72..b33d0bc58021 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -13,6 +13,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-burnet.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-damu.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-juniper-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kappa.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
new file mode 100644
index 000000000000..b97ca331970e
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi.dtsi"
+
+/ {
+	model = "Google burnet board";
+	compatible = "google,burnet", "mediatek,mt8183";
+};
+
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
+
+&i2c0 {
+	touchscreen@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touchscreen_pins>;
+		interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
+
+		post-power-on-delay-ms = <200>;
+		hid-descr-addr = <0x0020>;
+	};
+};
+
+&i2c2 {
+	clock-stretch-ns = <4100>;
+};
-- 
2.31.1.295.g9ea45b61b8-goog

