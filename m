Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6676E84A0A
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 12:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387763AbfHGKoZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 06:44:25 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:35802 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387713AbfHGKoU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 06:44:20 -0400
Received: by mail-pl1-f196.google.com with SMTP id w24so40206383plp.2
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 03:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eX+SsKj7wCX5hpAONm8nrhKL/i5I8BdLEJsX/4HZeqg=;
        b=nOzuOuiXeCCRH6aNy4g4MZJfGjqWtSEcVkpEdqpIabLwBFKnW5ZoI1lXcjrWj2ZSbe
         d0LW99oQoXP8TVeSNKvkXHKKqDgLaJZEWvQ3sygQhC/ettmLShoqjVe7pirOkwsRYCUe
         BJD7hc0ZSTE3fGYvRTaGfJUnIHgofb1PG9rTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eX+SsKj7wCX5hpAONm8nrhKL/i5I8BdLEJsX/4HZeqg=;
        b=e53KZ9YSeifUG0x1B4QRzFBIbp85MuChjBnjQMaxaP5QuE08rn0A97uEZuYhcoomiA
         QYscDn+DJjfcG1/eq00xZue7xI84RFZeK524dcDlbxbk8P0VE5hrsCpI8OhmZqdduh7b
         yq65oIPIV4SmFb+IZTcQLNMPambPWArSpLPWvSXe6KWTrqIB4P8hvk4bH2EBX7r4Oz+b
         NM3jm4Qq5c1UT9Dn9qksPtu1KcV7ASAw7bAIw6cmazy220kjXOmGr5YOL32b9MZkWxn0
         P8oBFNWTHYls8tdOdYl6K6kNglRXia+UN0ohCVvL4R+vtKGKHjg2vzQKudVaTp/KI6ot
         Efiw==
X-Gm-Message-State: APjAAAWKF8O6aVZOVBRKDDVil2D7eS8GIYs6ZY1HmQemMirSTV5MS805
        HW2aAJuLDCCyK77L52Q2m3UGNw==
X-Google-Smtp-Source: APXvYqxU5//Lr6cUK+g4oiprIUIxHoUwV1Gx+k38qZVJjX9FWSgdFC6aFQuK/I/gWiBqfM5HxfHOzQ==
X-Received: by 2002:a63:4a51:: with SMTP id j17mr7160132pgl.284.1565174659766;
        Wed, 07 Aug 2019 03:44:19 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id a3sm24747697pje.3.2019.08.07.03.44.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 03:44:19 -0700 (PDT)
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
Subject: [PATCH v15 5/5] arm64: dts: mt8183: add scp node
Date:   Wed,  7 Aug 2019 18:43:46 +0800
Message-Id: <20190807104352.259767-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190807104352.259767-1-pihsun@chromium.org>
References: <20190807104352.259767-1-pihsun@chromium.org>
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
Changes from v14:
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
2.22.0.770.g0f2c4a37fd-goog

