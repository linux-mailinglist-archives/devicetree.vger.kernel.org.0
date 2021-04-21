Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5650336678D
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 11:06:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237878AbhDUJGx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 05:06:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237908AbhDUJGv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 05:06:51 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B540C06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:17 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id c17so28151703pfn.6
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=29WL9WcrwDBcvwU9CHsWxL8ARjysbuxzxp0JmGVr/ck=;
        b=Q3Kk9sZfM9zyqZa92zu/EXFefTZU0c6mxVemVXFHd6jqMDwJYVSPMAOYjgt7aMMuoa
         khgZQkAQC8iA659EZ3AzwJZVpXhNLheWc3EasJ54Ianz7wWH1l5+HYYp8Qxjrs9IZO6D
         OHNDNGxkDIVcmVGhLubBI97Batoq/XmqZ74ZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=29WL9WcrwDBcvwU9CHsWxL8ARjysbuxzxp0JmGVr/ck=;
        b=Nz1RKqWfUBA7ga+Ih6E4gmHb5Z9BcviiAfip8kVSZHS42Gbf/W1QFbqFVWIPkDXKPb
         VYJRaNEvs+OQlVid6vNtOtS5fx9UsMgTD8itZfTwrWNg/KKNMqqrb87VJfP4bD4en75o
         +nXqnA2ZVZOnmZTqwhJp17aXMuSIepoDLjvEfaPaRkj5TOQIqMmruSOiud38SqjwChJC
         0Je3EbDj8XvFfhmVNiMWBCn0Gf2F1/+YSJDL5dkdMhXX4sdoJKvfFqGbUyuSjhimzH1g
         ywE/+gmw2NaRaWGJ8crgREqc42Ob8vwcSvCIZROiRO1NeLMfGpvf3b4g+UFU7pacZs3f
         mpiA==
X-Gm-Message-State: AOAM532G5mPopkIwACyCEAGJ14+3asyNlwMAZfrpkrWz36KxfB/lGr9C
        y+t53ISSYiZx/5Zkez4dLytzWIZr+AtKyQ==
X-Google-Smtp-Source: ABdhPJwMiHAm0cjAr/V0MrgbdGFSie0qrxv5/XcqGLoVu9sLew1oGgn109yA4dnoeKqa/+TYSH3FgA==
X-Received: by 2002:aa7:934f:0:b029:25f:35d6:a1ed with SMTP id 15-20020aa7934f0000b029025f35d6a1edmr14994259pfn.1.1618995977132;
        Wed, 21 Apr 2021 02:06:17 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:60c1:887e:ac53:9b5c])
        by smtp.gmail.com with ESMTPSA id jx20sm1495889pjb.41.2021.04.21.02.06.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 02:06:16 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v3 06/10] arm64: dts: mt8183: Add kukui-jacuzzi-kappa board
Date:   Wed, 21 Apr 2021 17:05:57 +0800
Message-Id: <20210421090601.730744-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210421090601.730744-1-hsinyi@chromium.org>
References: <20210421090601.730744-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kappa is known as HP Chromebook 11a

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/Makefile            |  1 +
 .../dts/mediatek/mt8183-kukui-jacuzzi-kappa.dts  | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kappa.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index a1c50adc98fa..df70674949ce 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -15,6 +15,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-damu.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-juniper-sku16.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kappa.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku272.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kappa.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kappa.dts
new file mode 100644
index 000000000000..b3f46c16e5d7
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kappa.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi.dtsi"
+
+/ {
+	model = "Google kappa board";
+	compatible = "google,kappa", "mediatek,mt8183";
+};
+
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
-- 
2.31.1.498.g6c1eba8ee3d-goog

