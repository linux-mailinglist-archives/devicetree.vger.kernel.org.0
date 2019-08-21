Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9796496F9A
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 04:40:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727167AbfHUCkz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 22:40:55 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:43958 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727118AbfHUCkz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 22:40:55 -0400
Received: by mail-pl1-f195.google.com with SMTP id 4so460225pld.10
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 19:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
        b=AF45FZq/9GIa/RSGGKlY6M1BOYxvVfJ8bVFO2XKZAlJlRX5GB0czlvwCPkIeIgwm9p
         UyN4cOdOloa9yDmFhlq1R5MG4iChc172UUytA9c9inXamtyPkvH/CSwCw4jfBfUvlvfA
         e5XDXtcy91HNpqIJFPlD3F03JPLqaXcTgbSQ27OZ1FaHyr6psIkXoD0N3RlelwlvJNBu
         8jldz8zyPQ7qy+gWZAqr41/t+K+fTg8eg/cbKE4SYJOMgxzAqMz7EBGKzuEyg54qutcs
         HdwSeLjzb5I82RRg9ZDXsGKgvK9Z1yElT9k+/YJutOhW2OAfWEU3d2Nk0zkslnkPlMXX
         Y6oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
        b=HAKUvR/oZS3GFVYefcjQjB1zjzqCO3vpTkVXWrBpkTGo5oT2+RhYcZxjJtY1RbYJ6H
         qozn33ulRtEswguGsxFCQEyY3IqkrrkbcnrgtAuPBlsz5Y7b99qgp9nI5xpz5QvIy/DY
         xDb1kA2AYnBB+fIJwFQFYv1yGYlGxZ8RV8LwmqVWxEucBmVk0I5Uw5kdYG2m8nKh/XO+
         hWiDRex9MNHlsms0OdU71vQw/BifPOVlEwLneURYqLj/jsGZ1ZD4+OUcNqUpUkE0L8P7
         Cl56HVqMZMXqR7Obodt1kh/Y8mbq3iiUpYNAL9EpzunXr5q2yMtO0r9+xlMxB3Ynse3e
         1lmg==
X-Gm-Message-State: APjAAAUMT1CCwBQeSL4kLFW0QNBS47Lxn8OrH/9whNPyg3ImBGDqSbSN
        2PRQKvv5KkpSQQHCxNmMty1v
X-Google-Smtp-Source: APXvYqzX351Wmm+kwzgjdUdao7XB7TObisEn5eBl3G9W2w+85A6ymPIpsyrlpxme8Ye0ZdI8AdGnmg==
X-Received: by 2002:a17:902:f217:: with SMTP id gn23mr31247981plb.21.1566355254909;
        Tue, 20 Aug 2019 19:40:54 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
        by smtp.gmail.com with ESMTPSA id b126sm26091608pfa.177.2019.08.20.19.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 19:40:54 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
        sboyd@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        thomas.liau@actions-semi.com, linux-actions@lists.infradead.org,
        linus.walleij@linaro.org, linux-clk@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 3/7] arm64: dts: actions: Add MMC controller support for S900
Date:   Wed, 21 Aug 2019 08:10:10 +0530
Message-Id: <20190821024014.14070-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
References: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MMC controller support for Actions Semi S900 SoC. There are 4 MMC
controllers in this SoC which can be used for accessing SD/MMC/SDIO cards.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/actions/s900.dtsi | 45 +++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s900.dtsi b/arch/arm64/boot/dts/actions/s900.dtsi
index df3a68a3ac97..eb35cf78ab73 100644
--- a/arch/arm64/boot/dts/actions/s900.dtsi
+++ b/arch/arm64/boot/dts/actions/s900.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/actions,s900-cmu.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/actions,s900-reset.h>
 
@@ -284,5 +285,49 @@
 			dma-requests = <46>;
 			clocks = <&cmu CLK_DMAC>;
 		};
+
+		mmc0: mmc@e0330000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0330000 0x0 0x4000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD0>;
+			resets = <&cmu RESET_SD0>;
+			dmas = <&dma 2>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc1: mmc@e0334000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0334000 0x0 0x4000>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD1>;
+			resets = <&cmu RESET_SD1>;
+			dmas = <&dma 3>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc2: mmc@e0338000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0338000 0x0 0x4000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD2>;
+			resets = <&cmu RESET_SD2>;
+			dmas = <&dma 4>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc3: mmc@e033c000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe033c000 0x0 0x4000>;
+			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD3>;
+			resets = <&cmu RESET_SD3>;
+			dmas = <&dma 46>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
 	};
 };
-- 
2.17.1

