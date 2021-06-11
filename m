Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79A783A3EFF
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 11:25:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231314AbhFKJ1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 05:27:01 -0400
Received: from mail-pg1-f171.google.com ([209.85.215.171]:39440 "EHLO
        mail-pg1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231289AbhFKJ1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 05:27:00 -0400
Received: by mail-pg1-f171.google.com with SMTP id z1so1966015pgj.6
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 02:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4QwvH5bGqHeUyZVp5Ps3bAzGRgv84nKw9pL18XwdnBM=;
        b=ey6HE0fb9KAEDfEWIZh3oFrtGw/BoGsTFqloJaswiwpoMt/DR28azQo9+50y5K3znM
         FNj88cAGhYJ8Anruvwblc8X22JmeK83xohuaowNTwMBY2Uwpk4QSBvCtbt0vkjXtceeU
         qLq1sXho4gDKjdsCkDw53Lfp3okC3VEAsFIxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4QwvH5bGqHeUyZVp5Ps3bAzGRgv84nKw9pL18XwdnBM=;
        b=NoY1239KB2UPFJBaqnHQ2pxvceZNQOx/hbw2KlQ5cMlFm94gljy5u/SzgLtQfZP0tP
         ePa4ZeePbZ0krcWnQ/ywDiPHHBewbV+FEgvvruenkwg/ovj8nD5oHnehDY3OoXD1HMmr
         J/P2Stfm+JTd4TGeXr27d4YOUlGuIfP8/e8pOM0n+fZjyyN88NObnnn9xkLfP3WjbIB0
         yuVxU93prgUmlN7BCCyMxEGqYkGGt3KYo4yJz7UrHi2Htj3BJSibm71ZmrCNuaynRF/2
         DxlYNV33JZuc5Bpe+rx42Mqxr9ZThvNBZZHm2YvdqqmtR1wEdvk1FTdIpSooxPrG7KIJ
         Zqvw==
X-Gm-Message-State: AOAM533x85ta6iMwrKbfHN8r6cwLkkVOZ1GkzjMBM2o19nvpNALHeTSx
        AsUy3wXjQm0AHL9Q3idFrE+v4w==
X-Google-Smtp-Source: ABdhPJwWYRTeSrDgmFG3zwAghCTIJNKEVaANebghOER6NvuMljh9UqdjztrUIFR/kQaOdRCnq20ZVA==
X-Received: by 2002:a62:3782:0:b029:2de:903d:8640 with SMTP id e124-20020a6237820000b02902de903d8640mr7502174pfa.40.1623403443126;
        Fri, 11 Jun 2021 02:24:03 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:73d3:4412:54cc:752d])
        by smtp.gmail.com with ESMTPSA id q68sm10394037pjq.45.2021.06.11.02.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 02:24:02 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        maoguang.meng@mediatek.com, yong.wu@mediatek.com
Subject: [PATCH v3 2/2] arm64: dts: mt8183: add jpeg enc node for mt8183
Date:   Fri, 11 Jun 2021 17:23:57 +0800
Message-Id: <20210611092357.2930310-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210611092357.2930310-1-hsinyi@chromium.org>
References: <20210611092357.2930310-1-hsinyi@chromium.org>
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

