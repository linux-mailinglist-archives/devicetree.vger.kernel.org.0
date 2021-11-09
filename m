Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE54D44A653
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 06:33:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242295AbhKIFgb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 00:36:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240905AbhKIFg3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 00:36:29 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E269C061208
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 21:33:43 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id f5so17414879pgc.12
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 21:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mMyybJ8cedWreU7hFIqGdeFr06iYH5ttCqNwsXNo+Ug=;
        b=Rjqy8A05j0M8lY1753X7tvxL3vsHe15KIz7iG2Hfyfr82YRoOohLcUjfxYxd0oXUw9
         9tPWCSU0UkOIJ3Cx1UQXZgDOGs+P6jc/lMM6nkkK+9WmonEnrQ6aP9n1prpkbmAEnv1O
         bPzfgPGfoK7cJf2PEFNFs5wdlI468ppWPb2YQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mMyybJ8cedWreU7hFIqGdeFr06iYH5ttCqNwsXNo+Ug=;
        b=1DIfy+J4pyemzoOZkRfArW8bgcrLK0FrWODHQhP99hR8HIdUJF/8wkhwbVM6hjoD4B
         vAxykQ2wUvmUkqjbRWL/vJ++GrWZ/4qeCH6ot3BIIoitXx6tvmELbdU504mrvYxh5K7w
         PQKo8uSTZZ2Z/n0bdW7aeaCmCJcwhSYErabiozCg1nEcyVYkaLaHVMXMjc2rOunaO8qS
         7pvp0l7qp8EYHImljkhAB44UHfKGyNMl6wduQlN1Cx0NZlquaDoBVq21hQcrSjjJuZyo
         xJgGDzREWSARfyaHqU/cXyKtV0OCbgZkrsBzivtvU8Go2noCS8pr8VpUdvRzX53tK3yx
         B69w==
X-Gm-Message-State: AOAM531nsLLlyZSYfmpWcoKZFEBl7ac9ZHmKvh4RK9fCOyTtVCSkF4CO
        6fTLf1HYih5eidvEO022yKNcU+roPz1Vzw==
X-Google-Smtp-Source: ABdhPJx+p0hULM9LX+Onr/LXX7S/RnoOdGNU5QmYaxrxaGTQmyIApCS9EGwI+bAbVPcOgBgn+7foyw==
X-Received: by 2002:a62:cdca:0:b0:480:8a68:8b68 with SMTP id o193-20020a62cdca000000b004808a688b68mr71947275pfg.80.1636436022917;
        Mon, 08 Nov 2021 21:33:42 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:cc3e:b71b:e327:fb32])
        by smtp.gmail.com with ESMTPSA id w5sm13741479pgp.79.2021.11.08.21.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 21:33:42 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/7] arm64: dts: mt8183: Add kakadu sku22
Date:   Tue,  9 Nov 2021 13:33:31 +0800
Message-Id: <20211109053334.1840273-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211109053334.1840273-1-hsinyi@chromium.org>
References: <20211109053334.1840273-1-hsinyi@chromium.org>
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

