Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC3C6AA3AB
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 15:00:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389620AbfIENAH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 09:00:07 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:38914 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389598AbfIENAG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 09:00:06 -0400
Received: by mail-wm1-f68.google.com with SMTP id q12so2917928wmj.4
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 06:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9o518Q9M+VA62cCsQMBXOXpf3ntmSugaTgtOZlotIoo=;
        b=h/8tLCzMrNIiSCKb1hq3bANqq0O7NXfwEbtD1KjJQJdIo9X0zm4Sg6VlbVIyFJa22D
         fzT9tMGKti05cgQ7H5y55cnhLBYmX1S6TUg3vFz7rEoF8Gqmyfy/9JM5lYKBYHNkeTHb
         uMznWW0jHU57LOQa9ej99KKjg/geC2wnY8xK4m/1czGaQlWrzt5H4bDJzFfpXz/sXqF3
         o7MKD0cGl24WBul/wImWbW2Vrb0tnQeJTwwZziBEeyzu2C1ttCJRsS0fH+F3bUFgMUFd
         NSrIRGELQk+/+zzLzSuQGkzCmQrV2T2Sdx08DtmDLkGGgBeU3X9BoAo5X12pB+hwIEBw
         4ZYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9o518Q9M+VA62cCsQMBXOXpf3ntmSugaTgtOZlotIoo=;
        b=hKEvvRDUEVVLFjeAf4c9occgnRYdYjAnoQr48ThEncfHRrWCmJzm0kkDNC9yahdQ5i
         2MdS+AEMXe01dxa+5w7qVCGqZZ6VlfiNpbWR6ldFSiWN6yejvDYszxw+W46FfoY+TBTM
         nhM8ds0yuW30JViEhiYJgxyJipvbDAtYbqLjPRusoA69Zbfvh7bL5iDieOlH7rE1NAzP
         QiHdq2n2f4KwOy+WGR/D9mESmS3kHtK3kAxIFAEKdGIzaKSfJePQQRSzF8QFWTIh3PJU
         +15LLZAlEkjT2gIbSAtxiYJyeFl8Tp1oFMM0nHBrMNMJ+O7JLvex9Pew1wwhWuyKkKdx
         Klvw==
X-Gm-Message-State: APjAAAVRrKj3t/prPstStsv9vQbLH1ZIvpYqqxwSk6Y1/KPUkJL+eYG+
        nBSvc8HM/aXXGnz1OgHL3KJbTw==
X-Google-Smtp-Source: APXvYqwTs4hlT/F1FYODJLFlYoxd4c+WS6plu/pzJAf6EYVvYB882hNz9pcfxd/K5ReyoWJJ4fwRQw==
X-Received: by 2002:a1c:c911:: with SMTP id f17mr2880993wmb.73.1567688404367;
        Thu, 05 Sep 2019 06:00:04 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z189sm3727903wmc.25.2019.09.05.06.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 06:00:03 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: meson: axg: fix audio fifo reg size
Date:   Thu,  5 Sep 2019 14:59:52 +0200
Message-Id: <20190905125956.4384-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190905125956.4384-1-jbrunet@baylibre.com>
References: <20190905125956.4384-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The register region size initially is too small to access all
the fifo registers.

Fixes: f2b8f6a93357 ("arm64: dts: meson-axg: add audio fifos")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 82919b106010..bb4a2acb9970 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1162,7 +1162,7 @@
 
 			toddr_a: audio-controller@100 {
 				compatible = "amlogic,axg-toddr";
-				reg = <0x0 0x100 0x0 0x1c>;
+				reg = <0x0 0x100 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "TODDR_A";
 				interrupts = <GIC_SPI 84 IRQ_TYPE_EDGE_RISING>;
@@ -1173,7 +1173,7 @@
 
 			toddr_b: audio-controller@140 {
 				compatible = "amlogic,axg-toddr";
-				reg = <0x0 0x140 0x0 0x1c>;
+				reg = <0x0 0x140 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "TODDR_B";
 				interrupts = <GIC_SPI 85 IRQ_TYPE_EDGE_RISING>;
@@ -1184,7 +1184,7 @@
 
 			toddr_c: audio-controller@180 {
 				compatible = "amlogic,axg-toddr";
-				reg = <0x0 0x180 0x0 0x1c>;
+				reg = <0x0 0x180 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "TODDR_C";
 				interrupts = <GIC_SPI 86 IRQ_TYPE_EDGE_RISING>;
@@ -1195,7 +1195,7 @@
 
 			frddr_a: audio-controller@1c0 {
 				compatible = "amlogic,axg-frddr";
-				reg = <0x0 0x1c0 0x0 0x1c>;
+				reg = <0x0 0x1c0 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "FRDDR_A";
 				interrupts = <GIC_SPI 88 IRQ_TYPE_EDGE_RISING>;
@@ -1206,7 +1206,7 @@
 
 			frddr_b: audio-controller@200 {
 				compatible = "amlogic,axg-frddr";
-				reg = <0x0 0x200 0x0 0x1c>;
+				reg = <0x0 0x200 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "FRDDR_B";
 				interrupts = <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>;
@@ -1217,7 +1217,7 @@
 
 			frddr_c: audio-controller@240 {
 				compatible = "amlogic,axg-frddr";
-				reg = <0x0 0x240 0x0 0x1c>;
+				reg = <0x0 0x240 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "FRDDR_C";
 				interrupts = <GIC_SPI 90 IRQ_TYPE_EDGE_RISING>;
-- 
2.21.0

