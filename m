Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74F653625DF
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 18:41:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236693AbhDPQll (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 12:41:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236385AbhDPQlh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 12:41:37 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76922C061756
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 09:41:11 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id q11so1178763plx.2
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 09:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=spxzACZ6tLjJ8yTyZF9QXTu+vxRnx53gQ9F9Skzy6Jk=;
        b=UMLA0/Wd1bp29RC+CxF2M7Ws/lGGyDImlgiaXrKz2dSrZe8EWHshYYsET8ym/gBNB0
         PwaNtcSfQrmPE92zLV7x2fAPniQC6Tp1e9y/SB8Ijg3zMrP4VDjU1TQBXLyLgQp18Rbl
         XHwMNHxKKhnq6GWjXCxtA7E5QA/zqCz2pnw9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=spxzACZ6tLjJ8yTyZF9QXTu+vxRnx53gQ9F9Skzy6Jk=;
        b=fzZBe1thtJCCL+m2AuCGWr7/dS+8Q+pE7CPRefo5GuHij8duMqy5ICCQ1kyH0lQBuA
         ikIyrycIGyCcwuPI4ywlRZQxnWUDwDGoLq3yA5f735bj/K1J5hFtJLuaAhQQ59jmUb93
         nYym4kUDhEB1wCnt2Qt1xxo0d5sjH2Tc36evGE2EN1Ls2HeEJjowzYGNDGsZIc0JR2Km
         tXapPJjdT2Adp7AWE7XY0GpHqHRdB7tGU3oJv4IxLH0FbGOeNzMOYdmiCLePFSsJ4tVj
         +04cknutdGu+8NIwKCd3Q9xxu1TNrwW8QRF3KduHYIaxSZkQewipettvFwzWoD1rNPKd
         /0gQ==
X-Gm-Message-State: AOAM530ymtcvK1lNMK7xVJEHaG0N33ye3v8ZIfAuV5cNm1FDCeM7AkaP
        KegNM96w5kTwAFWeb/PMzy5l3A==
X-Google-Smtp-Source: ABdhPJw1Cmm6Hm7vKDvQTatBejyiw90Nj6G5u/leTg+BObKAP5qQ0HWWQb9FzPxzH4m4KSnKOClO3Q==
X-Received: by 2002:a17:902:d706:b029:e6:90aa:24e0 with SMTP id w6-20020a170902d706b02900e690aa24e0mr10630209ply.42.1618591271058;
        Fri, 16 Apr 2021 09:41:11 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ccd5:218f:365:b90f])
        by smtp.gmail.com with ESMTPSA id g14sm6187186pjh.28.2021.04.16.09.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 09:41:10 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 7/8] arm64: dts: mt8183: Add kukui-jacuzzi-burnet board
Date:   Sat, 17 Apr 2021 00:40:54 +0800
Message-Id: <20210416164055.3223088-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210416164055.3223088-1-hsinyi@chromium.org>
References: <20210416164055.3223088-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Burnet is known as HP Chromebook x360 11MK G3 EE

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
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
2.31.1.368.gbe11c130af-goog

