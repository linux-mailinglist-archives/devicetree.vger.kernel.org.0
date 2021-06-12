Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C1263A4C65
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 05:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230181AbhFLDWD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 23:22:03 -0400
Received: from mail-pg1-f173.google.com ([209.85.215.173]:35394 "EHLO
        mail-pg1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230103AbhFLDWC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 23:22:02 -0400
Received: by mail-pg1-f173.google.com with SMTP id o9so3992779pgd.2
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 20:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4QwvH5bGqHeUyZVp5Ps3bAzGRgv84nKw9pL18XwdnBM=;
        b=iXquLxweg3SptlHKfWh1N9xBYQVkWZU+sg8cR2LhTOsGZuSLC38gAQ3ayu2fXU/VDI
         4dCEYFZNzQAHfCoDNEQlOWz5o4Rm6+m40HjB5JXP0AqBNLvmhsCQteXRJl6BllHdtMlT
         JwmrP6sTE4Pug/FOpvakWoWM5eLQ5ujnYnHqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4QwvH5bGqHeUyZVp5Ps3bAzGRgv84nKw9pL18XwdnBM=;
        b=TEDQDkgpwYfehjt6uTeicTVVoEe5oKjJCchyKO9HYH3vmlq2XK04jaY6ARI+YmGmzk
         03wBwyP5N546Af160VAHJh0M1W2t/z+C47sTfPVRO8lXAgrC2vbg3Sh0n5p4pf3JwI1v
         Y0O4Pw28virNwlZ04vkSL9rm75OBcg16MBw56uGdwTahngTztszhnXPpjum7my7O465p
         zJ+7JB3R+0075ICFrHUuYKrPlaIbnac/S5yHIgX7ZE1qZ4ku42Du6GN6MgMUZlW95ftk
         nYBDLULMoNfqYsN8+uwe6jMydAH6uNIz9r26ToGhdrDvgy0h5Yj88WJisrxDSyDOYQfK
         1DLA==
X-Gm-Message-State: AOAM533AmdlW84XGPo5zoUOa+sxim5BeOA6AVSTVIJuDGZF7ZIQhZCRC
        5AAg1grey0Xz1CLGBRM24pAvmQ==
X-Google-Smtp-Source: ABdhPJyWlvLaCN0zazKtkeyI88Zfmd5LHNUF4MilDnvjYVTdK+P5DUEdpdazd43Qm0f/JEM/rNbn3A==
X-Received: by 2002:a05:6a00:16c9:b029:2df:c620:8156 with SMTP id l9-20020a056a0016c9b02902dfc6208156mr11231224pfc.40.1623467943989;
        Fri, 11 Jun 2021 20:19:03 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:cbbc:c8a0:4601:2039])
        by smtp.gmail.com with ESMTPSA id h5sm6688519pfn.127.2021.06.11.20.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 20:19:03 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        maoguang.meng@mediatek.com, yong.wu@mediatek.com
Subject: [PATCH v5 3/3] arm64: dts: mt8183: add jpeg enc node for mt8183
Date:   Sat, 12 Jun 2021 11:18:53 +0800
Message-Id: <20210612031853.3115482-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210612031853.3115482-1-hsinyi@chromium.org>
References: <20210612031853.3115482-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Maoguang Meng <maoguang.meng@mediatek.com>

Add jpeg encoder device tree node.

Signed-off-by: Maoguang Meng <maoguang.meng@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c5e822b6b77a3..d54b4532fc3f3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1329,6 +1329,18 @@ larb4: larb@17010000 {
 			power-domains = <&spm MT8183_POWER_DOMAIN_VENC>;
 		};
 
+		venc_jpg: venc_jpg@17030000 {
+			compatible = "mediatek,mt8183-jpgenc", "mediatek,mtk-jpgenc";
+			reg = <0 0x17030000 0 0x1000>;
+			interrupts = <GIC_SPI 249 IRQ_TYPE_LEVEL_LOW>;
+			mediatek,larb = <&larb4>;
+			iommus = <&iommu M4U_PORT_JPGENC_RDMA>,
+				 <&iommu M4U_PORT_JPGENC_BSDMA>;
+			power-domains = <&spm MT8183_POWER_DOMAIN_VENC>;
+			clocks = <&vencsys CLK_VENC_JPGENC>;
+			clock-names = "jpgenc";
+		};
+
 		ipu_conn: syscon@19000000 {
 			compatible = "mediatek,mt8183-ipu_conn", "syscon";
 			reg = <0 0x19000000 0 0x1000>;
-- 
2.32.0.272.g935e593368-goog

