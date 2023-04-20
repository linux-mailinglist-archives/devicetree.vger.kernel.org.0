Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 179496E8E26
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 11:35:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234292AbjDTJfR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 05:35:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234232AbjDTJfK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 05:35:10 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44EF32D7F
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 02:35:09 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-63b52ad6311so1038547b3a.2
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 02:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1681983309; x=1684575309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IHPuRLA5WWcEQWx1cI3sgBTHdUDt8lS20i2hj6DWJQM=;
        b=I0GuHV+xeH4hhf9jmjGqJqjMpaB3h4iLZtZOerQDLrCVSiopbDOjRVrVZZ5dsbzGmN
         sLotILAXSjHXXK3WU9LkaXmo8tzCu6nBCZDoDoQlmWh4adXl0ZgSaPoW07ydRmJyTk36
         VtGBYQDDtrg0iO8/PeRl1i5eT8yknBGSmWcpX+mcYa0y78oQIKV2R4pVlHqI2nMd82zH
         BzVGp3v3p3ZviovrlTw1GMuT3PSZNishGIDWkXXmXMEowKlTothFnR7Qf8nO+WcHGcoX
         WGaDp7SwmktKS614Oz10TiFpoVJ3VTfiH5rK0/QOGs/BZshnFPYsWY6AJf6Db+o6mkaQ
         0Yhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681983309; x=1684575309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IHPuRLA5WWcEQWx1cI3sgBTHdUDt8lS20i2hj6DWJQM=;
        b=CCQcagasf5iUtD5qHBxHzltiQpRGzg+yNlAptKgpT87cjUBoBv75wLup9f4VxoNQ3b
         Duvz4lt+BP1wye8kgex73Rew5hYmeOM/VNReqtR32e5bTBgkDFy60PxpYgBjmkIRXPCt
         nozLYhFqjBfS72vhD76IUy06+kJBK2tE+g8D7h57X4xk9ReTNCXGkuprfKEDyLtEYX7t
         8oMsAGLwvhCyBWAW9cLtqm58/xVb04c4f13bMFh3NMz5Kh9ON6u71puyBaLiTBpVHz6Z
         KBE7qMM/eHirsErRsZzhTzrgA6ew6XWQny+Bra0rTsu0wc1K9510zoar3KvWq6atqFN7
         h15w==
X-Gm-Message-State: AAQBX9cilqKCd2dh1x7VevWc3ANaFnhFb/zzzeejXNi3UBOK2whgluBn
        eoOscWp2ALHWzuT2B1GdqXNRHA==
X-Google-Smtp-Source: AKy350abeBDWDHJdXZTQE7s0QOikL+2ciqc/t7yvCQxyX1OhaD11p0xvKBUUC0LwfASK7s01JPRGQA==
X-Received: by 2002:a05:6a20:a59a:b0:f0:1255:781b with SMTP id bc26-20020a056a20a59a00b000f01255781bmr1511257pzb.29.1681983308729;
        Thu, 20 Apr 2023 02:35:08 -0700 (PDT)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id p5-20020a63c145000000b0051ba9d772f9sm781551pgi.59.2023.04.20.02.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 02:35:08 -0700 (PDT)
From:   Nylon Chen <nylon.chen@sifive.com>
To:     aou@eecs.berkeley.edu, conor@kernel.org,
        emil.renner.berthing@canonical.com, geert+renesas@glider.be,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org,
        thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
        devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     nylon.chen@sifive.com, nylon7717@gmail.com, zong.li@sifive.com,
        greentime.hu@sifive.com, vincent.chen@sifive.com,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/2] riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's active-low properties
Date:   Thu, 20 Apr 2023 17:34:56 +0800
Message-Id: <20230420093457.18936-2-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230420093457.18936-1-nylon.chen@sifive.com>
References: <20230420093457.18936-1-nylon.chen@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This removes the active-low properties of the PWM-controlled LEDs in
the HiFive Unmatched device tree.

The reference is hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3.pdf[1].

Link: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf8453f8698_hifive-unleashed-a00-schematics-1.pdf [0]
Link: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e68ce76f4192_hifive-unmatched-schematics-v3.pdf [1]

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 4 ----
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 900a50526d77..7a9f336a391c 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -50,7 +50,6 @@ led-controller {
 
 		led-d1 {
 			pwms = <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d1";
@@ -58,7 +57,6 @@ led-d1 {
 
 		led-d2 {
 			pwms = <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d2";
@@ -66,7 +64,6 @@ led-d2 {
 
 		led-d3 {
 			pwms = <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d3";
@@ -74,7 +71,6 @@ led-d3 {
 
 		led-d4 {
 			pwms = <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d4";
diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
index 07387f9c135c..11f08a545ee6 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
@@ -52,7 +52,6 @@ led-controller-1 {
 
 		led-d12 {
 			pwms = <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d12";
@@ -69,19 +68,16 @@ multi-led {
 
 			led-red {
 				pwms = <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
 				color = <LED_COLOR_ID_RED>;
 			};
 
 			led-green {
 				pwms = <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
 				color = <LED_COLOR_ID_GREEN>;
 			};
 
 			led-blue {
 				pwms = <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
 				color = <LED_COLOR_ID_BLUE>;
 			};
 		};
-- 
2.40.0

