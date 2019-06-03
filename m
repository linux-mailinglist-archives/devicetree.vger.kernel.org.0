Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F41F032701
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 05:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727030AbfFCDqd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jun 2019 23:46:33 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:44077 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727026AbfFCDqd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jun 2019 23:46:33 -0400
Received: by mail-pf1-f195.google.com with SMTP id t16so941293pfe.11
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2019 20:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2Nsh8lQFYxZ1lBkrz/qlmC7f5LUpUHKswZjElUU2A74=;
        b=SaLCmni6iGpfWfY98SgX0KEwfmFEgiEJWUJObZVKcEj3JOVhPeqxZOex4hGKOwXyTv
         ENjJ5tXWEOumRlxS1fbhu9b6ViozkxvrqT9nO3AF1G5bDzlF2qVl+pTkKfGiQltMHy8W
         qrdt79nnngaGqxMYo4L4aEcCsr3EDMgKR6m3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2Nsh8lQFYxZ1lBkrz/qlmC7f5LUpUHKswZjElUU2A74=;
        b=gyAjzWG5hLTtIdOUU+zO1oAsDQonVw/oGgqLhdz9gOdEt4t6tjYyyDO7Db6XDEmw7K
         YAunmdTZf5Kq2EHVDvp1lJI0XR7ecLF+CLnkIWdGH6QifsRQjYxHotvIZ+UE11BOXL/9
         I5wXyoTIW06ygimZa0qzOFHyLvdGQnWc5XehuA1+s7rGEVez+pGkyG60Pa/wUd3uDkaw
         tXzBl5fpChgOK7dbKo+8F/yDwGVYpF32WX3QdW7pTMKuOZZzjIUUj6aZPPvtuPtJA/gf
         4Ek+F25hKgru6ZQCIWoZgKVt5sIfKuaE9wdcCFoz9Y36ETm4bHc2tvNHtULkB+BsBKbF
         pQRA==
X-Gm-Message-State: APjAAAU6rUZ6M1QCwOevsI8RZ6qBmWyWtZXJ4ec+v2v504HycEiNb2XR
        rAQUDMRL3i0o54JGtTOOdxyb3g==
X-Google-Smtp-Source: APXvYqyE4Jqv+EBCxqiCTrbeSFOS+gUnYBAXLVGT25v8uqqhNSMVSxBUaC6uhzdJ8H3eGcBKH1F58w==
X-Received: by 2002:a17:90a:25af:: with SMTP id k44mr13519004pje.122.1559533592439;
        Sun, 02 Jun 2019 20:46:32 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id i73sm11878960pje.9.2019.06.02.20.46.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Jun 2019 20:46:31 -0700 (PDT)
From:   Pi-Hsun Shih <pihsun@chromium.org>
Cc:     Pi-Hsun Shih <pihsun@chromium.org>,
        Eddie Huang <eddie.huang@mediatek.com>,
        Erin Lo <erin.lo@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek SoC
        support),
        linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek SoC
        support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v10 7/7] arm64: dts: mt8183: add scp node
Date:   Mon,  3 Jun 2019 11:45:12 +0800
Message-Id: <20190603034529.154969-8-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603034529.154969-1-pihsun@chromium.org>
References: <20190603034529.154969-1-pihsun@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Eddie Huang <eddie.huang@mediatek.com>

Add scp node to mt8183 and mt8183-evb

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
Signed-off-by: Eddie Huang <eddie.huang@mediatek.com>
---
Changes from v9:
 - Remove extra reserve-memory-vpu_share node.

Changes from v8:
 - New patch.
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 11 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 12 ++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index d8e555cbb5d3..e46e34ce3159 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -24,6 +24,17 @@
 	chosen {
 		stdout-path = "serial0:921600n8";
 	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		scp_mem_reserved: scp_mem_region {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+	};
 };
 
 &auxadc {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4631bc..133146b52904 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -254,6 +254,18 @@
 			clock-names = "spi", "wrap";
 		};
 
+		scp: scp@10500000 {
+			compatible = "mediatek,mt8183-scp";
+			reg = <0 0x10500000 0 0x80000>,
+			      <0 0x105c0000 0 0x5000>;
+			reg-names = "sram", "cfg";
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_SCPSYS>;
+			clock-names = "main";
+			memory-region = <&scp_mem_reserved>;
+			status = "disabled";
+		};
+
 		auxadc: auxadc@11001000 {
 			compatible = "mediatek,mt8183-auxadc",
 				     "mediatek,mt8173-auxadc";
-- 
2.22.0.rc1.257.g3120a18244-goog

