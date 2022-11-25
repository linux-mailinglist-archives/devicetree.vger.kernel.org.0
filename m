Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50F43638C72
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:41:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbiKYOlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:41:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230086AbiKYOlW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:41:22 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC2513AC1C
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:19 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id l8so5372999ljh.13
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X3IV80SJC852Pw3l1DRQ9beSKrBfbfxGpL9x9l88hqM=;
        b=cuJVhiNrLlOBVdyfOVTTN6/+IluC3k23TtDMFdQZysi9WFE5UY7q0NC5KM1UNsv5LH
         5hfQLiXi46eWNJuxwDAv8ayBe4wuGoLORVEwyEEsYaFvnSPeemNC5iFaC+We6BxGEbk5
         Q9jNPYxZ/+owwGsTrVU7XyRTpM7cU/JtOIbbHG2f325biDaziYdJzYo8SA1eaENLWjxQ
         7azkulauDqM5xxZ3Nw7nwoVMjrp8Nbh1kjP/DB+2oHLekohIacOFV1PQFThVDH0r2NQy
         5QY23gh0Dj7PmCDR9MKmAXrC6UfQC/HVTcPtOY3UT4DhRoHcQgk78HV/h9hfayb296qA
         OFjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X3IV80SJC852Pw3l1DRQ9beSKrBfbfxGpL9x9l88hqM=;
        b=ikQSk8pdexE7DJxZM/+dnOTmOhe08bpCG0o86u0eTbGX/vX5jUOb6yFxGQAybFR5tv
         RMchfl61c3UTnyub5VgW0iWv+66MJ3fC0VHZRb3UvhOJRx2Y2OF3a6kDmZurgqLUsp5d
         M5xshwtlHeqxeAy6YGEPTymAgOX2C58JD5Pe3QR761wFWA6U3KIO6isjGqxINiJRHpgC
         LJDzbFLMI+EQeKK0n0rA/PfD6p978TkhwLaZGfESvtmOUCQ4L08j3C1HIwtbZERqySEN
         ZuT06Ua64dRDu9yGRk71WeYHtAzEzsfrFITxQbU0gQ256EQZVBOGpbg+9KTfQNdYZimG
         zv6w==
X-Gm-Message-State: ANoB5plo3UFOG6fGpolkiPv9eoH1U2memzHEYbmVKUY/xXrSTv9XX6b3
        hEosOmh9zrxbBQJhhfLZ9P6wPQ==
X-Google-Smtp-Source: AA0mqf6ahW89PiF3F+z+KLJCOmn8iG178+jYoMHsZrOu37LEeXMq2+Qt/Vi9CdF0tGlaHf3Wk8Xdcw==
X-Received: by 2002:a2e:7e0a:0:b0:277:6f0:5239 with SMTP id z10-20020a2e7e0a000000b0027706f05239mr7959862ljc.186.1669387278012;
        Fri, 25 Nov 2022 06:41:18 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t6-20020a199106000000b004b4b5d59cbcsm545098lfd.265.2022.11.25.06.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:17 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Patrice Chotard <patrice.chotard@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: sti: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:41:16 +0100
Message-Id: <20221125144116.476877-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern:

  stih407-b2120.dtb: leds: 'green', 'red' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/stih410-b2260.dts  | 8 ++++----
 arch/arm/boot/dts/stih418-b2199.dts  | 4 ++--
 arch/arm/boot/dts/stih418-b2264.dts  | 2 +-
 arch/arm/boot/dts/stihxxx-b2120.dtsi | 4 ++--
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/stih410-b2260.dts b/arch/arm/boot/dts/stih410-b2260.dts
index 26d93f26f6d0..240b62040000 100644
--- a/arch/arm/boot/dts/stih410-b2260.dts
+++ b/arch/arm/boot/dts/stih410-b2260.dts
@@ -27,26 +27,26 @@ aliases {
 
 	leds {
 		compatible = "gpio-leds";
-		user_green_1 {
+		led-user-green-1 {
 			label = "User_green_1";
 			gpios = <&pio1 3 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 			default-state = "off";
 		};
 
-		user_green_2 {
+		led-user-green-2 {
 			label = "User_green_2";
 			gpios = <&pio4 1 GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
 
-		user_green_3 {
+		led-user-green-3 {
 			label = "User_green_3";
 			gpios = <&pio2 1 GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
 
-		user_green_4 {
+		led-user-green-4 {
 			label = "User_green_4";
 			gpios = <&pio2 5 GPIO_ACTIVE_LOW>;
 			default-state = "off";
diff --git a/arch/arm/boot/dts/stih418-b2199.dts b/arch/arm/boot/dts/stih418-b2199.dts
index d21bcc7c1271..53ac6c2b7b7d 100644
--- a/arch/arm/boot/dts/stih418-b2199.dts
+++ b/arch/arm/boot/dts/stih418-b2199.dts
@@ -26,12 +26,12 @@ aliases {
 
 	leds {
 		compatible = "gpio-leds";
-		red {
+		led-red {
 			label = "Front Panel LED";
 			gpios = <&pio4 1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-		green {
+		led-green {
 			gpios = <&pio1 3 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 		};
diff --git a/arch/arm/boot/dts/stih418-b2264.dts b/arch/arm/boot/dts/stih418-b2264.dts
index a99604bebf8c..34a518b037ab 100644
--- a/arch/arm/boot/dts/stih418-b2264.dts
+++ b/arch/arm/boot/dts/stih418-b2264.dts
@@ -76,7 +76,7 @@ aliases {
 	soc {
 		leds {
 			compatible = "gpio-leds";
-			green {
+			led-green {
 				gpios = <&pio1 3 GPIO_ACTIVE_HIGH>;
 				default-state = "off";
 			};
diff --git a/arch/arm/boot/dts/stihxxx-b2120.dtsi b/arch/arm/boot/dts/stihxxx-b2120.dtsi
index 2aa94605d3d4..920a0bad7494 100644
--- a/arch/arm/boot/dts/stihxxx-b2120.dtsi
+++ b/arch/arm/boot/dts/stihxxx-b2120.dtsi
@@ -9,12 +9,12 @@
 / {
 	leds {
 		compatible = "gpio-leds";
-		red {
+		led-red {
 			label = "Front Panel LED";
 			gpios = <&pio4 1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-		green {
+		led-green {
 			gpios = <&pio1 3 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 		};
-- 
2.34.1

