Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E64AF308BD
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 08:39:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726593AbfEaGjT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 02:39:19 -0400
Received: from mail-pl1-f173.google.com ([209.85.214.173]:40096 "EHLO
        mail-pl1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726275AbfEaGjT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 02:39:19 -0400
Received: by mail-pl1-f173.google.com with SMTP id g69so3593013plb.7
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 23:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WKqEBPsoDpTtAdSfNyFLIMHr8olM8ej+c9mYA02GcCA=;
        b=zlKiD5zROteFBR1T1SqUplBS5mT+9ZfmxIbdv8FynG+rE9TAyGHJYPAhBo4UZYTtFD
         dbHJ2iZep4dUQCtwooz+CSqtZPoOGbP2XIcJfe4gq+uyTlqNkgVr5GmDwwYbPVMVeZ1R
         /6YrHHEoBXiuNzIRzLLJaqfW6t/oGsCjtw/WcQ2wzWTPAqwPCIgaeTziF1i5YLfGbsiH
         KPJNd0qiVvgDkjt522zTCVIF4yx0leSd/rLo7knaKV0DwbLv3AsTteQ+HsB3SIN47LG7
         CI8UPhFrkAqkQnnXSHkfAboWQGGJzFbCAYR4+dtikbvFBL7EfSHCgxT4U0dnqz+X3kuU
         85xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WKqEBPsoDpTtAdSfNyFLIMHr8olM8ej+c9mYA02GcCA=;
        b=qHCSWUemJk/UWfDyPqFJIgNgCWUrT3mbT4F6rMS0wQBt8W1LdaSCNdy1x0DyHx1OvN
         iin68C1+qdJhngq+BrtdbZFiGpUfXhigwqgMu0MMfSSiAMTcf9/pKsInZUliAfO0IQEw
         vM55xJYGiOULq4eYrgTeb8IyCiHNnIkAuo0B42Wj9dVMqfF/uDwNU9Dqti58md2AgiH/
         vvx72bN/VTpvWUhVKK59lB4YHsy3R4F6bxhsNNb2042a9fpCIigdwsAhoJLEeuU3v0T0
         5Wl90EW3vG1MHQnaMivhiin0amysS75OM5ZjnzoxJ1Le23JerptpVAp9KvR6TQOzg5Rc
         uxiw==
X-Gm-Message-State: APjAAAWoWVAKjwjsZny1FI/HbUh4DlX7ezCFsgbATedceGFZecQPfwzS
        Xxsek45BgjvNJyD6CkAsLH2VZ0/MIQ==
X-Google-Smtp-Source: APXvYqxk0E50ssptOWBgqUZknHURVnxaE5iPZ3Qgn4s+khgTR/fBphG8zgqGLwLR0Eauypep0R+djA==
X-Received: by 2002:a17:902:1121:: with SMTP id d30mr7268009pla.153.1559284758857;
        Thu, 30 May 2019 23:39:18 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
        by smtp.gmail.com with ESMTPSA id y12sm4644158pgp.63.2019.05.30.23.39.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 23:39:18 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 1/4] ARM: dts: stm32mp157: Add missing pinctrl definitions
Date:   Fri, 31 May 2019 12:08:46 +0530
Message-Id: <20190531063849.26142-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
References: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
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

