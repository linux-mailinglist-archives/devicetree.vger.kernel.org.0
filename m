Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E744F75AA3
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 00:20:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727164AbfGYWTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 18:19:32 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:40381 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727073AbfGYWTb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 18:19:31 -0400
Received: by mail-pf1-f196.google.com with SMTP id p184so23425710pfp.7
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 15:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=HLd5BYTLvTidDZM6NfJ6T6wJij+y0rEPT4LTsgmb6as=;
        b=pBMFjLZKjntawXd1jx37nq3z7ubVUbuNaTDBHgL75L4wNFtReJcGq5+Al2eGpZPphN
         Z03606b5uMlr3oQnvR6W4etzzo8S60E7zjkmT4deJghIgbHHJMa9E19byS8CSbnYUgC0
         IXPWJgY1Fxf1cR8UNXvMGjbTbp+8/8HXqJhXNara6xuleaZBx37yCLg6UcgV6/ovECBC
         dqwacFUZiHB5mH82UwyRMq4ckfbMA0vatGg/vYpE1hVXGb9nhL5eXYYQpOlM4U2363v2
         rjVFaBx4shRZAz8leCYOuYj5rSgva1aIl3+aguePmqAPJEtRT45X6+8HKVIYFTyyF1Ra
         94TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=HLd5BYTLvTidDZM6NfJ6T6wJij+y0rEPT4LTsgmb6as=;
        b=cKsYIxTZjjmr1btS1iIcxKR2113Y7BKiJcmdtvNcaFEHcQHr+UJr8r7KtqDcT5eVWA
         ScpCJ/BB9nSY+smCY3IGVnSR5cFqzuVbCRya4Dj+5kh0sDUAoPLhKRhBuFJ1j/9aIN4I
         t3ViW3BoezNzdJuRtr1oBjT/q3nWVeckD7eK5XV0N5XSxpaSjd3CrsUyzdH/Ugw+ch+W
         AqliihBKV5EmIb64CbgrB/MdYoByL5HB8hZgG51kEWbOIF7yE0XkL+iNcsSKjR2ofdin
         GtyjXeDh/mYXjNf4tTRgMfEBqmBFndEC3c1e9AbKulK0MSH7po3MBEHq2kMxQDghJrvU
         zUPg==
X-Gm-Message-State: APjAAAV9tkXX4ADT91l/7MzvCu32TXzB9WiQpUkuwWQ10PmhsFrxiuSK
        zp7jGfQT8N6m7MZxNzsd7eR3zA==
X-Google-Smtp-Source: APXvYqwRxvB7WpdJRRQdZq53ZGVcXgwJycEAnfIhRnwv9GCoCn2V/E9VqypYkKmcPPzsmtiS9CLtsw==
X-Received: by 2002:a63:7205:: with SMTP id n5mr33630981pgc.443.1564093170806;
        Thu, 25 Jul 2019 15:19:30 -0700 (PDT)
Received: from localhost ([49.248.170.216])
        by smtp.gmail.com with ESMTPSA id b68sm64261050pfb.149.2019.07.25.15.19.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Jul 2019 15:19:30 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com,
        andy.gross@linaro.org, Andy Gross <agross@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH 09/15] arm64: dts: msm8996: thermal: Add interrupt support
Date:   Fri, 26 Jul 2019 03:48:44 +0530
Message-Id: <2b291e09751d2face5c71b48548a72e56c1e6669.1564091601.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1564091601.git.amit.kucheria@linaro.org>
References: <cover.1564091601.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1564091601.git.amit.kucheria@linaro.org>
References: <cover.1564091601.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register upper-lower interrupts for each of the two tsens controllers.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 60 ++++++++++++++-------------
 1 file changed, 32 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 96c0a481f454..7325eba42d19 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -175,8 +175,8 @@
 
 	thermal-zones {
 		cpu0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 3>;
 
@@ -196,8 +196,8 @@
 		};
 
 		cpu1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 5>;
 
@@ -217,8 +217,8 @@
 		};
 
 		cpu2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 8>;
 
@@ -238,8 +238,8 @@
 		};
 
 		cpu3-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 10>;
 
@@ -259,8 +259,8 @@
 		};
 
 		gpu-thermal-top {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 6>;
 
@@ -274,8 +274,8 @@
 		};
 
 		gpu-thermal-bottom {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 7>;
 
@@ -289,8 +289,8 @@
 		};
 
 		m4m-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 1>;
 
@@ -304,8 +304,8 @@
 		};
 
 		l3-or-venus-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 2>;
 
@@ -319,8 +319,8 @@
 		};
 
 		cluster0-l2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 7>;
 
@@ -334,8 +334,8 @@
 		};
 
 		cluster1-l2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 12>;
 
@@ -349,8 +349,8 @@
 		};
 
 		camera-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 1>;
 
@@ -364,8 +364,8 @@
 		};
 
 		q6-dsp-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 2>;
 
@@ -379,8 +379,8 @@
 		};
 
 		mem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 3>;
 
@@ -394,8 +394,8 @@
 		};
 
 		modemtx-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 4>;
 
@@ -591,6 +591,8 @@
 			reg = <0x4a9000 0x1000>, /* TM */
 			      <0x4a8000 0x1000>; /* SROT */
 			#qcom,sensors = <13>;
+			interrupts = <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tsens0";
 			#thermal-sensor-cells = <1>;
 		};
 
@@ -599,6 +601,8 @@
 			reg = <0x4ad000 0x1000>, /* TM */
 			      <0x4ac000 0x1000>; /* SROT */
 			#qcom,sensors = <8>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tsens1";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

