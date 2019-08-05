Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E29DD8177B
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 12:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728510AbfHEKuJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 06:50:09 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:38646 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727328AbfHEKuI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 06:50:08 -0400
Received: by mail-pg1-f194.google.com with SMTP id z14so2298381pga.5
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 03:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5l1zAX3tglSu17y0+NcdOXZzpHJOvHxR1MkiGIIYKYo=;
        b=h5KXqf32FSQbMokwSJ8p/c8n2g5wvIMvxooRpQ0DNAg2WEY1vuugf/r+2gktgjCj06
         5WYIBkDizFPNWrCnFOcfmAEBkOTTAjNIyb7UBlg7PDdC3RbES46qAFeBO2htwpagcbpp
         zqlJXAGKh3lpmz0drPRWGQKqW5kQ+x/z0vXJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5l1zAX3tglSu17y0+NcdOXZzpHJOvHxR1MkiGIIYKYo=;
        b=qCJO9SMpLg2lv5stp+Ml5gFsn4+WhlaOum9dcEIFZzX4L9F96D4/54mzfS2m6FLMt/
         cVVRlUN9tKJRa9YLcMFqJVnMOHQ8FTIUmm0Cpwvzwra5CHa3VG9hQKejHLFSl2Jtrr0S
         QbHOl+7G4lI7ghyQRLcz2xYdmytX/+WlVadw2i2VDSm/DWY6J8YkriVmnNZe8H0wPKXe
         gNl1O0va0N8qGJxumvh/Ak5cuzIsOxj0ioirmctY0iu9kQYyi3Nlj/J/oESqTAve4flV
         VblcXdMo3+BtMRGdBemUBqevavqR474HVC8IAiQwJKyT4KgzLurH/3K1ZXxfp/oBkMHn
         fN2g==
X-Gm-Message-State: APjAAAWoGWYJq+43Jmok8Ps4G8Uc333zZOzyzLZzvpBn9caeGOB4nA1H
        0iZ9fbPKdrDpsbUb3ZJRsk+aWw==
X-Google-Smtp-Source: APXvYqwEq6/5cD4xyHXFqv3BQONYfA4Ng+lXNpMRcPk0mKjRAZiubJ1JEQ/cIp71hIsNz2fTMcls7A==
X-Received: by 2002:a17:90a:c20e:: with SMTP id e14mr15282099pjt.0.1565002207586;
        Mon, 05 Aug 2019 03:50:07 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id 65sm88693864pgf.30.2019.08.05.03.50.05
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 03:50:07 -0700 (PDT)
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
Subject: [PATCH v14 5/5] arm64: dts: mt8183: add scp node
Date:   Mon,  5 Aug 2019 18:49:26 +0800
Message-Id: <20190805104932.96745-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190805104932.96745-1-pihsun@chromium.org>
References: <20190805104932.96745-1-pihsun@chromium.org>
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
2.22.0.770.g0f2c4a37fd-goog

