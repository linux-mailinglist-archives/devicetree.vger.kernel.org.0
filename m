Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1925FA99B9
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 06:45:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731148AbfIEEpK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 00:45:10 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:46819 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731140AbfIEEpJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 00:45:09 -0400
Received: by mail-pf1-f196.google.com with SMTP id q5so863419pfg.13
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 21:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7VF9YheeXhAjJyIl6t7c6PBAXPHMp5xAy2HeigDHRwg=;
        b=SajC19KKIOWUFXSNHogt2YAD8LpKAtF7I3Nx9j762W1mZnHqg2Te8Y7InfFgU8f+Ni
         DP2Ye9sc51qZ6jB/0GVOoJyU0Am7a9yX9rQ1mlkXyxXvo++Uf2q6zXXITEHmEpSEKMFu
         SAfdfnomboehsJtwgY0tyQzJhO/GyhhxMjIcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7VF9YheeXhAjJyIl6t7c6PBAXPHMp5xAy2HeigDHRwg=;
        b=OlQgz4yDoNBlY5OEwJXMC1PeIhXvUPWoXgX4BV3811BpdZji7uqFj1IU8/pg4a9FXW
         OF8lVx5uyL7JVYxTSIsO7J6ijuFPboHvFB6wODq57rHOaBEjcw58PoNZ8A8wT+9WHol6
         PnBb2WLLuylCGojPT8mHxdUqLuiBPr4LWLoZZI8BUlg68dbVuto6heKFxg0k9sGdsE9Q
         CHpIzXlnaIuVdeEcyoQXVV3KYAZgH4X3tiLyxuclgfXPHvfIi9f0jHMyd35tQL3dp9jP
         mYkRiq9sDaSGz6msm+x4upANk6ulcAu4aRLxST/lcpDhHwYUHE9bHn0lPEswT+s0jHdu
         1bNQ==
X-Gm-Message-State: APjAAAU1HR4X5LcgiatXjduxN+NP+UnaRncFUZqkMqUbynjrN0vO5UGy
        MDCVC5IXb1iseezN9fMBIXkc2w==
X-Google-Smtp-Source: APXvYqxMZptxYLI7o+CommVkXXgzuDHSDKU8IMNUv5EHbjLZDURSjXKksZbRJEvMgcsFw0LnKW3sAQ==
X-Received: by 2002:aa7:9253:: with SMTP id 19mr1501529pfp.126.1567658708199;
        Wed, 04 Sep 2019 21:45:08 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id v22sm602272pgk.69.2019.09.04.21.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 21:45:07 -0700 (PDT)
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
Subject: [PATCH v18 5/5] arm64: dts: mt8183: add scp node
Date:   Thu,  5 Sep 2019 12:44:26 +0800
Message-Id: <20190905044432.150131-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
In-Reply-To: <20190905044432.150131-1-pihsun@chromium.org>
References: <20190905044432.150131-1-pihsun@chromium.org>
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
Changes from v17, v16, v15, v14:
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
index 1fb195c683c3..ddb7a7ac9655 100644
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
index 97f84aa9fc6e..3dd1b76bbaf5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -269,6 +269,18 @@
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
2.23.0.187.g17f5b7556c-goog

