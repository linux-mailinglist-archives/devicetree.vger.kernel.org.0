Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 427B517E8E
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 18:53:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728679AbfEHQxo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 12:53:44 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:40413 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728807AbfEHQxk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 12:53:40 -0400
Received: by mail-pf1-f195.google.com with SMTP id u17so10796273pfn.7
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 09:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rryjEKnmXLSanss7IlocYKHWgRAPzviP483T/WAfnlk=;
        b=k5zj7OpVLHB6FkCHu5bgHvJmVAY2Fm5kbUxukWoHkbWSg7+NSTxwpn13m1tjSxlP2v
         WG0ewAXGS7GpfSwn3v5qlPMTCNpjytjEs9V2XtoBrLXxnUe7dELh0yhX6SpM2JOfY1tN
         O2NQ0JwnFAXxm22Z49KOLosW4T2IXbAsFu+swmsySIXs79e4vSCwAC73TdytrKUkczhF
         /2O4eSPaTNs40AfsWNfa50HjQrPrsVqrx3U9azCKmchBd6aV1FCr0KgzeHNpRHiWgzht
         QzVIb52x9ReAp+ro1VYtthU9hZs4pYtoBKvVN5pCwIlvZKRO51MIhD6C2Zc0aW2CZjrO
         eYtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rryjEKnmXLSanss7IlocYKHWgRAPzviP483T/WAfnlk=;
        b=SojcsoxundLOlGaXDB5btqW3dh3cN/+6wX9gGmcfbtNTbayLbvvl4PK5AAMAQEiB/O
         DB4ulgFq12luIuPrhMVE2Xq3uGArcH13kBhYfs0uJ3pmTAxR0guitE57+OAEQmO4QGiW
         VCx3yN9YhJD5D700xI7hI6fZNvQbCe85ccytiX+shePm4QQps7YplHEQ8oVcrqp0OmVY
         sCAImXl2Ck4mtCg4cXm2hR8A9M5AGD3yeg6D6m/E0hnVxZOOchIOCVnvZ/HorYZhP1lY
         6+pLV4uxZA1Je+nEgW1ApaIv2Yqe06T1XmrAGUrivkNPjVSasdmQ3iDKWKs+XnIEtohO
         Y/VQ==
X-Gm-Message-State: APjAAAVGLWr5SF14d3/t7bQ/6YQHioG4Os/QX5EG92yCo7m+iYCVzVux
        3Wry/S3BnEV6A0GrCCfHmgUX
X-Google-Smtp-Source: APXvYqyZuJF54O/JQ1Y+OS1fouLyTx2afjh5rMr6KsiYEj7BKNzIGXSc5e6v3oGSPymxHCVaKlEViQ==
X-Received: by 2002:a63:a449:: with SMTP id c9mr2726591pgp.149.1557334419602;
        Wed, 08 May 2019 09:53:39 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6000:7ab1:cd79:1ccc:df38:79c0])
        by smtp.gmail.com with ESMTPSA id m2sm25180676pfi.24.2019.05.08.09.53.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 May 2019 09:53:38 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 2/4] arm64: dts: bitmain: Add reset controller support for BM1880 SoC
Date:   Wed,  8 May 2019 22:23:17 +0530
Message-Id: <20190508165319.19822-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508165319.19822-1-manivannan.sadhasivam@linaro.org>
References: <20190508165319.19822-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add reset controller support for Bitmain BM1880 SoC. This SoC has two
reset controllers, each controlling reset lines of different peripherals.
This commit also adds reset support to UART peripherals.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index fdfdc65d29ef..37ecb760a2d2 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/reset/bitmain,bm1880-reset.h>
 
 / {
 	compatible = "bitmain,bm1880";
@@ -92,6 +93,18 @@
 				compatible = "bitmain,bm1880-pinctrl";
 				reg = <0x50 0x4B0>;
 			};
+
+			clk_rst: reset-controller@800 {
+				compatible = "bitmain,bm1880-reset";
+				reg = <0x800 0x8>;
+				#reset-cells = <1>;
+			};
+
+			rst: reset-controller@C00 {
+				compatible = "bitmain,bm1880-reset";
+				reg = <0xC00 0x8>;
+				#reset-cells = <1>;
+			};
 		};
 
 		uart0: serial@58018000 {
@@ -100,6 +113,7 @@
 			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
+			resets = <&rst BM1880_RST_UART0_1_CLK>;
 			status = "disabled";
 		};
 
@@ -109,6 +123,7 @@
 			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
+			resets = <&rst BM1880_RST_UART0_1_ACLK>;
 			status = "disabled";
 		};
 
@@ -118,6 +133,7 @@
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
+			resets = <&rst BM1880_RST_UART2_3_CLK>;
 			status = "disabled";
 		};
 
@@ -127,6 +143,7 @@
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
+			resets = <&rst BM1880_RST_UART2_3_ACLK>;
 			status = "disabled";
 		};
 	};
-- 
2.17.1

