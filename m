Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 521F88E560
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 09:17:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730737AbfHOHRA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 03:17:00 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:40004 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730451AbfHOHRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 03:17:00 -0400
Received: by mail-pg1-f195.google.com with SMTP id w10so940869pgj.7
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 00:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FbCBYSU1nfsHewNHQ4KTvWY4A7SNrbqlgoUU3L19JX8=;
        b=IxZwHeqpp9zQVfhMHP7FAyb64pb90U2hrlKJLMwF1tO8f3c1V/fwyliKqpRh1XVpQ+
         yskXJlRbxmnw3DVlWpxnE7cT8cFVhHtAq0FPvJC7iMXKSUQEYJVJIUaM33axRaJ0mJ8m
         faaw1WLv4b1ykDDYFxq6CaejK3m4c0GUfxiRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FbCBYSU1nfsHewNHQ4KTvWY4A7SNrbqlgoUU3L19JX8=;
        b=e5Rr5GuUmBI8XJJrY5gYLW+u8+JSYDqT840B/U3+xQoWd6Px75EWAGmDWndsqJDtZe
         9Am/p1Z36o/s+CefJhm0rI9x8L1+2nw7UWu61CkWhEQc5w+IH9Ha/vJyUtG6+J9XIUuq
         acM075dX/xc1KukhZJVhfLltoNqtQ0VSF6M1nSxki3BxOJ+iEFPszOKJcenvRGJJs/ju
         KbtK0cvY6W9y6A3N1jqyhzgeILgqGI9v/8dRMVdUidq0mSfg7hgAwhK0uIR6+lPeYlRK
         n0OPKlne4SQj/6VnTFF0NzInZP+hYkPdkynTShzYSt0uF/JYVFiPtZ/PUyAmKCf80PbH
         CcxA==
X-Gm-Message-State: APjAAAWtGgqBlujxolEr+3VXxxS+f8F5u6RuL+hqBgPbdLOjAGXanNw1
        krPiFgfeaWGoL0c6N14CDeheSw==
X-Google-Smtp-Source: APXvYqwun6YIKdichg14vWTQWHLP/MYNMqelFCbz1cqJZWSpnJ542WlL0eGe1uMKSI2tcciOCWBaAQ==
X-Received: by 2002:a63:195f:: with SMTP id 31mr2476394pgz.225.1565853419431;
        Thu, 15 Aug 2019 00:16:59 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id v6sm1768727pff.78.2019.08.15.00.16.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 15 Aug 2019 00:16:58 -0700 (PDT)
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
Subject: [PATCH v16 5/5] arm64: dts: mt8183: add scp node
Date:   Thu, 15 Aug 2019 15:16:29 +0800
Message-Id: <20190815071635.168671-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
In-Reply-To: <20190815071635.168671-1-pihsun@chromium.org>
References: <20190815071635.168671-1-pihsun@chromium.org>
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
Changes from v15, v14:
 - No change.

Changes from v13:
 - Change the size of the cfg register region.

Changes from v12, v11, v10:
 - No change.

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
index c2749c4631bc..871754c2f477 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -254,6 +254,18 @@
 			clock-names = "spi", "wrap";
 		};
 
+		scp: scp@10500000 {
+			compatible = "mediatek,mt8183-scp";
+			reg = <0 0x10500000 0 0x80000>,
+			      <0 0x105c0000 0 0x19080>;
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
2.23.0.rc1.153.gdeed80330f-goog

