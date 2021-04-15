Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60C793605E6
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 11:35:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232302AbhDOJf5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 05:35:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232295AbhDOJfz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 05:35:55 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98EF3C061760
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:35:32 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id q14-20020a17090a430eb02901503aaee02bso1316474pjg.3
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wMjBnZVcviRSoI/fJCL0g5fel6FhaOBmtY6DkO6xXxY=;
        b=h7u0EG2oQomUTpNXieEyKJqrlltD5arbBXhy5eiszP06AOd2iO8qgA0l8phkMady0h
         RXy9ualjzfyUH1mVHjK6sWlRVzvyQzyz7FMmZOYklSvBZxeYa553SWRx6gDBlrF9QclM
         yaWAoKzrqK9iHo82ft0OdCffwP+vbZ3wyjwEM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wMjBnZVcviRSoI/fJCL0g5fel6FhaOBmtY6DkO6xXxY=;
        b=YTia3oNw1S990qpSWH6IEFTq5Vr281cbAIDv5DZxgBvGUx7rCbgA3KvMsp1sHec4zI
         LPxxAZ8EZJYQZ+WCAXf/a/Wom6gGCxnM8KMJNo76/pghRlk1SA1h1Jof1N703xMEACf3
         ppHoHI1ygdOIY0WHGUSOqvvyxrs/BfKKwZrZbfXyGNTP+FubBmDvzWCLSiVNAA7KUixa
         BSGLd4A8ifiH1F767NDhJZho+MTOJoD336LEP3edrbRsjmTQTh2xh3lvJu0m78griUXR
         4jEKWZzHrq8HYc1VIMmm8DZjSD/J+KBAswAMnXnFDSQmFh/4vilYRle9PpyVf83XPg7a
         KSJg==
X-Gm-Message-State: AOAM533u7x96gnQGnnL6kk3ddZofgxqXJAV2Mv7JOhg91Wd03KMKm7A+
        SeH7/AJa52CSFMBWlcEX2mEdNg==
X-Google-Smtp-Source: ABdhPJwKP4wSfoYB0NTaL8DCzzFiEbrj1tlgDGva13KPsgrDRbYyepCR8GYmJblM/4ysaLF0o+vdZQ==
X-Received: by 2002:a17:90a:f2cd:: with SMTP id gt13mr2815027pjb.43.1618479332053;
        Thu, 15 Apr 2021 02:35:32 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6432:a6cb:91d2:5e32])
        by smtp.gmail.com with ESMTPSA id a13sm1849502pgm.43.2021.04.15.02.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 02:35:31 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 5/8] arm64: dts: mt8183: Add kukui-jacuzzi-kappa board
Date:   Thu, 15 Apr 2021 17:35:16 +0800
Message-Id: <20210415093519.1920877-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210415093519.1920877-1-hsinyi@chromium.org>
References: <20210415093519.1920877-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kappa is known as HP Chromebook 11a

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
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
2.31.1.295.g9ea45b61b8-goog

