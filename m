Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81BBB1C648
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 11:45:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726348AbfENJps (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 05:45:48 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:45532 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726274AbfENJps (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 05:45:48 -0400
Received: by mail-wr1-f67.google.com with SMTP id b18so8439176wrq.12
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 02:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AImHa44p0mDvOU1NWVHOPq3uhogoe7GyDrgo2WEXj/c=;
        b=VjNwcN6YD8r8chxHjTjcst6CSr1XuWPV3akry0c2LVIIlO2oxGYjnN3DcNSWBl0b/d
         oEp7GfwJqAJEeljYW8HW+FBJTRJ9fDkORslgbwem3e/dUpvMuGkDLXpzfJxwn+XACW5X
         OuCDrRzpgTynjSYhsony0A6maZCmOV5IL49Na7ViefXpKF7DykUNn2nnCc3SRtg57O7f
         0IJDcUh6j/6D6Tq1Te5UnL35aFPK9aeh47tNlGI2Ne8qITWHvd6JyMQUlJ6BhAGjhLu7
         aAYCrHKaJWq8AZzOHY/galHkdMJrjfHyCaPE4C8plGwAmx2w925YrSUeAf+sjYVz0veE
         LZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AImHa44p0mDvOU1NWVHOPq3uhogoe7GyDrgo2WEXj/c=;
        b=Gk/BUH/0oLbNeXa2AlccS9/vW5lRJHIYhjNvfqSVp8uLEAvK/gvG+ScINneveVvZK+
         4bBmNrebVYPA3oyC86OWauNtINB2dPhlyHnx7ONbe2FaU6x85r39XTWn3J/+5CtXWBZX
         G/Tr6ZEJtDIHb2yhpLlNEefLLJF9QXFVgmmw98Pw1Pl/MhLFSNBcH6D5ggT4Bdtx928o
         Up0L/Wt4aGfoXRsYCjeVaXp84TqLXdrBGNd+N5u5VWEeWoQIZK6qKRqxuT4IkzEMRc+L
         feQvNe91hcsEXoBjqy9408K/leqdrgivrAGBprvk7qM32EjVDnk1fqTOzbQJ5G3tLqrN
         uMZg==
X-Gm-Message-State: APjAAAX8iiRPSo18GySa+Xu5B0+UrH9uAHdJJM+1TaE3C92+btdo8dvn
        TUDeMCV7ej76+x1fI3QAasBkWQ==
X-Google-Smtp-Source: APXvYqzSVHJmToHiREG3mWCkBwVsO8AwYFyO/y+AxQxPWtyxHM5C4VI+AE7HytatFMM38AV+Ys7+ZA==
X-Received: by 2002:a5d:688a:: with SMTP id h10mr20000592wru.211.1557827146709;
        Tue, 14 May 2019 02:45:46 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id n4sm5319216wmb.22.2019.05.14.02.45.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 02:45:46 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: g12a: set uart_ao clocks
Date:   Tue, 14 May 2019 11:45:37 +0200
Message-Id: <20190514094537.8765-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that the AO clock controller is available, make the uarts of the
always-on domain claim the appropriate peripheral clock.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index b2f08fc96568..ca01064a771a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -708,7 +708,7 @@
 					     "amlogic,meson-ao-uart";
 				reg = <0x0 0x3000 0x0 0x18>;
 				interrupts = <GIC_SPI 193 IRQ_TYPE_EDGE_RISING>;
-				clocks = <&xtal>, <&xtal>, <&xtal>;
+				clocks = <&xtal>, <&clkc_AO CLKID_AO_UART>, <&xtal>;
 				clock-names = "xtal", "pclk", "baud";
 				status = "disabled";
 			};
@@ -718,7 +718,7 @@
 					     "amlogic,meson-ao-uart";
 				reg = <0x0 0x4000 0x0 0x18>;
 				interrupts = <GIC_SPI 197 IRQ_TYPE_EDGE_RISING>;
-				clocks = <&xtal>, <&xtal>, <&xtal>;
+				clocks = <&xtal>, <&clkc_AO CLKID_AO_UART2>, <&xtal>;
 				clock-names = "xtal", "pclk", "baud";
 				status = "disabled";
 			};
-- 
2.20.1

