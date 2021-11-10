Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 855A844BBBA
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 07:31:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230413AbhKJGeY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 01:34:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbhKJGeO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 01:34:14 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C29B9C061767
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 22:31:27 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id g28so1364688pgg.3
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 22:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mMyybJ8cedWreU7hFIqGdeFr06iYH5ttCqNwsXNo+Ug=;
        b=Xfh67WRUFpuEiMGHc6R5yQLMQwvFdUao71R4RM1Qi2gB5GuleJrfsclBEBIT/nccr1
         HDuFYeoRsH+f6bjVcA4EbxoeAkZCznpDxEWmHIdih0HVy2B2SyPGiSjSpa6yScAXiynG
         yD4EqnWbXEBnC8QwQAbh9dvl5ZIKawX+Ld7zE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mMyybJ8cedWreU7hFIqGdeFr06iYH5ttCqNwsXNo+Ug=;
        b=zBqZkkXzVQZV2TsMGy+F2wEcovehP8hbQSE0EUBjZ1Rdi1hh81vtq9IM6hZvbC5sLs
         3BY5uK2FgweyKMFBSub9ZCrwXsZzGsKJHWp8fIoUQPuCRvpG38tMKO3KMwzSrJMs+o2Y
         kougAv4K6mo25O1o1jKC8YfDmMbPivpunKTrQTOSR+b7arlpVNZdxuu/bp6Z9+zQxQxy
         EO1t129o5rSGAbqBUMVMJcsBFO49uCxu7B6FCaXDPvxri31ubtPfLVPQxh4N074Iltj6
         RQyt4a/8BcIyldikpR8bfzng3tNP7wrGf2alnctN1iDlwNAjcHpD8lFNN/fUD5PIsc9W
         wwXw==
X-Gm-Message-State: AOAM531orXWHQm15MrpnkLHDJipu/hv7/PWrLAHLJOXYx1ON3E0+eWhd
        2OfFohiqZA4XUWi2VWcIA212CA==
X-Google-Smtp-Source: ABdhPJwT/v9hqHouIhilRw0nFlWsVjSmmsKqi0raR1k8tjSjxHRTocD5RP0muTz06L7okNlC1JWPvQ==
X-Received: by 2002:a63:2f44:: with SMTP id v65mr10408926pgv.281.1636525887374;
        Tue, 09 Nov 2021 22:31:27 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6886:f712:1a79:e3d9])
        by smtp.gmail.com with ESMTPSA id w1sm15623959pgb.50.2021.11.09.22.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Nov 2021 22:31:27 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/7] arm64: dts: mt8183: Add kakadu sku22
Date:   Wed, 10 Nov 2021 14:31:15 +0800
Message-Id: <20211110063118.3412564-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211110063118.3412564-1-hsinyi@chromium.org>
References: <20211110063118.3412564-1-hsinyi@chromium.org>
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

