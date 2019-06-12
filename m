Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3C7D441E56
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 09:56:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436541AbfFLHzJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 03:55:09 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:33012 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407657AbfFLHzJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 03:55:09 -0400
Received: by mail-pl1-f193.google.com with SMTP id c14so14960plo.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 00:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WKqEBPsoDpTtAdSfNyFLIMHr8olM8ej+c9mYA02GcCA=;
        b=KnVtUzbn4y5wXK66DHOCEynqGrwFHg1jSDBRV9mhX7i66tKXz9oXFXV6WoxIeHS3GA
         hiyzEVvQXc2Ay0j3OHSaZByQeHO15urTeWhXyUSwe0dDxG+UCoxDxAlqN+lMTOeS0eU2
         KzGt82P+OKm82m1t+ay/HCadfCsmS/nl6KUE6pBQTmMC0efUEiMPLgTbqMe1aPXs+c2Q
         fTC66TVMN6fj64k/p3Je+0+3XrFiZLayZ0TgPM2ifduVi9fnIYK3ehO72rKj+02xtaqn
         4cqMe4YIdiGTbauY1hyUOFP6aU1EJLZUJa9zdAS6Y82XugTFEal1zgZu3VD3v5jg0kUI
         wPkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WKqEBPsoDpTtAdSfNyFLIMHr8olM8ej+c9mYA02GcCA=;
        b=KCS9BHCG3vvp4bMyfy6Jo8A4H8bJZ2/v0kPrkStbiPuXLHOvb4LwQpGTp1Wsyp0nHO
         8KRR8GpKGp9ydeiHHVmSegMsu1Zy0X+pty8Jwg+1vvFI8X1OJe57s0cdx2rifOgXE4io
         59O3OMDLoTnwtQzo+XGdcyKH3LtkbtArjeKm1S3FCKUsH5GqYcCAhQFd6KUqahmspuva
         /O/n5T2C4Bt4oAcZALZ9BiN+q5o0U5f7Wv6idJj0+O3vWz4pKJCQMCxv5xZUsM4fSOdJ
         d0n8ZNtULdoQz9HIPvVZDPL20lpC2KMzNNSyuYgxGKRYc8Aq2dD8hsQAxfKGWC8Gbao+
         aUVQ==
X-Gm-Message-State: APjAAAX0eh/gCav8d1o/3cC47EnO57qgvitf3+B1jNidQiw0qWrZifsi
        cFGJwyYlKaSvvvzsZr7WfxU9
X-Google-Smtp-Source: APXvYqzcYRWPu0WRf+RAfh3l26x12ZdiBB8Vmej1zRa+PnUBc+108slbJJ9iJJqfpv8tnFes6Kj2Aw==
X-Received: by 2002:a17:902:165:: with SMTP id 92mr53109313plb.197.1560326108515;
        Wed, 12 Jun 2019 00:55:08 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
        by smtp.gmail.com with ESMTPSA id b15sm16846399pfi.141.2019.06.12.00.55.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2019 00:55:08 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 1/4] ARM: dts: stm32mp157: Add missing pinctrl definitions
Date:   Wed, 12 Jun 2019 13:24:48 +0530
Message-Id: <20190612075451.8643-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing pinctrl definitions for STM32MP157 MPU.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 75 +++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 85c417d9983b..5efae4b4b37f 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -241,6 +241,23 @@
 				};
 			};
 
+			i2c1_pins_b: i2c1-2 {
+				pins {
+					pinmux = <STM32_PINMUX('F', 14, AF5)>, /* I2C1_SCL */
+						 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <0>;
+				};
+			};
+
+			i2c1_pins_sleep_b: i2c1-3 {
+				pins {
+					pinmux = <STM32_PINMUX('F', 14, ANALOG)>, /* I2C1_SCL */
+						 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
+				};
+			};
+
 			i2c2_pins_a: i2c2-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF4)>, /* I2C2_SCL */
@@ -258,6 +275,21 @@
 				};
 			};
 
+			i2c2_pins_b1: i2c2-2 {
+				pins {
+					pinmux = <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <0>;
+				};
+			};
+
+			i2c2_pins_sleep_b1: i2c2-3 {
+				pins {
+					pinmux = <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
+				};
+			};
+
 			i2c5_pins_a: i2c5-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
@@ -599,6 +631,34 @@
 					bias-disable;
 				};
 			};
+
+			uart4_pins_b: uart4-1 {
+				pins1 {
+					pinmux = <STM32_PINMUX('D', 1, AF8)>; /* UART4_TX */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
+					bias-disable;
+				};
+			};
+
+			uart7_pins_a: uart7-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART4_TX */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('E', 7, AF7)>, /* UART4_RX */
+						 <STM32_PINMUX('E', 10, AF7)>, /* UART4_CTS */
+						 <STM32_PINMUX('E', 9, AF7)>; /* UART4_RTS */
+					bias-disable;
+				};
+			};
 		};
 
 		pinctrl_z: pin-controller-z@54004000 {
@@ -623,6 +683,21 @@
 				gpio-ranges = <&pinctrl_z 0 400 8>;
 			};
 
+			i2c2_pins_b2: i2c2-0 {
+				pins {
+					pinmux = <STM32_PINMUX('Z', 0, AF3)>; /* I2C2_SCL */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <0>;
+				};
+			};
+
+			i2c2_pins_sleep_b2: i2c2-1 {
+				pins {
+					pinmux = <STM32_PINMUX('Z', 0, ANALOG)>; /* I2C2_SCL */
+				};
+			};
+
 			i2c4_pins_a: i2c4-0 {
 				pins {
 					pinmux = <STM32_PINMUX('Z', 4, AF6)>, /* I2C4_SCL */
-- 
2.17.1

