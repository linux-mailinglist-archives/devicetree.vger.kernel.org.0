Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 850B2D5CE5
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 09:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730287AbfJNH6k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 03:58:40 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:38377 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730246AbfJNH6j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 03:58:39 -0400
Received: by mail-pg1-f195.google.com with SMTP id w3so2706937pgt.5
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 00:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QVRHT5pDxuvkIfhkJROJMokZUW2BLlyY/F+bHkNxqRo=;
        b=Hw6W642xH1aROaObhBlIVPsu/fTpXv1b3H39oxGbXRFLKlZMFQNVzm/PeUsIRcyVO1
         zFSz5IqF/qhd7w/CIawaKAsOENgjYRt3UFZqRFFTL49U+18twCrxef7/EDjwtrx2KMDs
         /Wr+mDjiRbrgNYuI0LhMdjB3jrNL9ioEZ3sBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QVRHT5pDxuvkIfhkJROJMokZUW2BLlyY/F+bHkNxqRo=;
        b=Pv2NqD6GcEQOEnM11JxYsMlKrzjkVXyhQxHWeSTAwLXvbDjlPHIWdCO7/fKZ/1W2nf
         pLWQRn9kAReycEvRgi1a4Kp8QRpbpx26QTyFWiwwlAEqIkAh1WSBCtoZiUoAicYC5cVz
         bQOXtBE/xxNe95JsckCTOJKwv88evqn2TM08LBkfQEt6jCFD2TXsLIliERmrIm3GasoG
         lqyidEW7smx0XMOVvsRXxyqjBoqWso7sXwFJM4RPghpttU1w1ijhhX66qPk2xHIFEDwE
         B6//D5tnVqZIDZ3VazUlUAk2LepvVZIZvEL0CVqH1H3843IW9CArQwh24VjZrG4tEFBm
         CU4w==
X-Gm-Message-State: APjAAAWkYsVpMPdXscPG7OJyN6YUzk8APx8ASaOV6G+cAh3U4a/F6jCx
        6RKf3wh2D25V8GbIWpXb6zlkUA==
X-Google-Smtp-Source: APXvYqyX//1pTCjDs2s0kZc2grJXGSArCyBFdJ8I3SvUS7+iXEEXvhoXvyTt3zB+/7qKoGAQmAo4Uw==
X-Received: by 2002:a17:90a:6302:: with SMTP id e2mr33759632pjj.20.1571039918605;
        Mon, 14 Oct 2019 00:58:38 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id q76sm36695998pfc.86.2019.10.14.00.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 00:58:38 -0700 (PDT)
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
Subject: [PATCH v20 4/4] arm64: dts: mt8183: add scp node
Date:   Mon, 14 Oct 2019 15:58:09 +0800
Message-Id: <20191014075812.181942-5-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
In-Reply-To: <20191014075812.181942-1-pihsun@chromium.org>
References: <20191014075812.181942-1-pihsun@chromium.org>
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
Changes from v19 ... v14:
 - No change.

Changes from v13:
 - Change the size of the cfg register region.

Changes from v12 ... v10:
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
index 1fb195c683c3..ddb7a7ac9655 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -24,6 +24,17 @@ memory@40000000 {
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
index 97f84aa9fc6e..3dd1b76bbaf5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -269,6 +269,18 @@ clocks = <&topckgen CLK_TOP_MUX_PMICSPI>,
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
2.23.0.700.g56cf767bdb-goog

