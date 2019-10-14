Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5F3D5AC6
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 07:32:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728765AbfJNFcV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 01:32:21 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54091 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729706AbfJNFcJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 01:32:09 -0400
Received: by mail-wm1-f67.google.com with SMTP id i16so15729288wmd.3
        for <devicetree@vger.kernel.org>; Sun, 13 Oct 2019 22:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZPt3z/LPUQkZF7XPmauch+PD9uKUNhmmb16ZUBya544=;
        b=NNRfug62qVkpYI5/OmgtlawaQdrdObsbLahRD4b1X+pEB4TI3PY+sWHTOXSyOHOirm
         Ce+H6/yjXGCfFtDG8W+U0RwGTH0O0IiPBEoiApb41LtzjOwhmtzx08jFXjIe68DoKmCZ
         9UdgBZxg/+LRD26L/G+jStWdo1BiiIo81MeQ5jbi7DjnH+5261kWY2Po2gKqatvHmYqV
         ERG7ggaNVspcKlrQbgdFFoZsiFoimeA5urMrQCEWdNENKrRaI2h6094spyqFLco8xDip
         NdVqD66DChwE+0vFHkAYgEXQdHywk55nQo9jO9CqejbyW6D0dN9No68dgAPHLKRtacPn
         HQhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZPt3z/LPUQkZF7XPmauch+PD9uKUNhmmb16ZUBya544=;
        b=g9dlEMvrJ46F/N7X1chK4sJCVGb7s/lsBOJR5J0kQMoCbKdeDo9iCZmgUz+3c+Q03K
         pM2oMnn1Tup0SCYFVV2KmzckmwcEpMPYucc/um1mhMJJKcxirjKwpDvnCxjF4LmlqvJn
         TZd92az1jlQdhlCjaSgIEaXDl9zw9CZOG24MDC+kTvPGwyx4Oif21ID0KnB6mNVlsxPb
         B80XnlSCfsUdkfGQP6e9lDY3rcMjxozSibP4RWfTxtu+16RjJteOK7FpCIGaiEW47Esu
         5xqrPHxlUB+f14fTd+NJXlAE3eQwd5J8UR3XPMePDR9TI5VAge5BWAIprcTfpNvh57AZ
         5EVA==
X-Gm-Message-State: APjAAAUsYlJOGy16ij/54sEARAc1gGmr92uSorWKp6Y3N5qGusdlA3B9
        arHN3s8h3Toc6sVyFxCM7dzpfQ==
X-Google-Smtp-Source: APXvYqyjAenIih3BVCa7xP8YhcqlBP28JppFbg1KMQZ9deITlv3xYcilyH/KYDEuYgH3Y9jQjhqckg==
X-Received: by 2002:a7b:c006:: with SMTP id c6mr13743896wmb.45.1571031127404;
        Sun, 13 Oct 2019 22:32:07 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id o18sm44238772wrw.90.2019.10.13.22.32.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Oct 2019 22:32:06 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org,
        martin.blumenstingl@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 4/4] ARM64: dts: amlogic: adds crypto hardware node
Date:   Mon, 14 Oct 2019 05:31:44 +0000
Message-Id: <1571031104-6880-5-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds the GXL crypto hardware node for all GXL SoCs.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 49ff0a7d0210..ed33d8efaf62 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -36,6 +36,16 @@
 				phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>;
 			};
 		};
+
+		crypto: crypto@c883e000 {
+			compatible = "amlogic,gxl-crypto";
+			reg = <0x0 0xc883e000 0x0 0x36>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc CLKID_BLKMV>;
+			clock-names = "blkmv";
+			status = "okay";
+		};
 	};
 };
 
-- 
2.21.0

