Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFFCE77E0D4
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 13:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244812AbjHPLwN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 07:52:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244882AbjHPLwD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 07:52:03 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE6F26A1
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 04:51:58 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fe4b95c371so38356705e9.1
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 04:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692186717; x=1692791517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JV00bZkaIhPWpOxXyRCh8E/f/JJawPGdTZeIZXeOFXQ=;
        b=qaoiO6J6BahFe7jSR2wlw2iWxl+NuzmBeCt74oguzunznZWIZm8APWNfCAE0gT1AfN
         A6/SjB5B/KwShKq+qzsLblc3LyZc6+wYIXGOYL3vVVQWIsK2t8zXUUd0hIwkayVIONhz
         5zv2vFJhj1CDYpA8oqM9McT/+QbSI9s9XWNDjSFht7n0xVezbRoZS+3nE+EbpordaQ3H
         Gptbye2QQ2Zk5iXOCaI81rGolmYbfpgtz/wQhgrkbQxkamGaKjppeUk4DDoSSPbwPhkd
         +bNiS7ZqaS3MVOJz+QOXQyFKLWwsN2gEd4CaIVqsWGuweHc2R/B1b2bSpRV62oJRoXDx
         3c3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692186717; x=1692791517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JV00bZkaIhPWpOxXyRCh8E/f/JJawPGdTZeIZXeOFXQ=;
        b=Jxw1wxs/GxO5v/8Xd4uczktKhKAuBDld0Jjo5L7ecrOSiLC+ILBu2KgGNEbfxUOoA2
         FTCPhLOewXhaXdRMPF60i6fNOzvJ+nBg1laOMjV3Z1+CfyYo7Ol3NBjXXjmL6otmqE79
         eNpwnRnaSGxRz0LFFr3e+5ug1ZWLP4WNzmJoXN3r5gIGDBsU8BmHPiEs30zirBj+ErIm
         JIKj7rBvMqVBgEChdNuBcG6sMpkjveprSp6kDib/iLKg9sDsYfahz2nd85bmu2PFd/vB
         mM+u2Ej7aM5Z+LQDzhzMCVAl8FzmOealPf64Ei6der0U5bAoJhcYv7ak7kcBj4CFCR02
         JrMg==
X-Gm-Message-State: AOJu0Yx77gIYh9JSkZCLAXA4Cj4LSkVAcC1Wnrlgmxo/rFw5hxdH01hj
        L8/0VaZkbFxNRZoXvLM5q4xhyw==
X-Google-Smtp-Source: AGHT+IEtOq3k16VomGJ0zPhS63jvQjeTvHdx15cNuaELY7tU1EaOFnAsRIsT9S9/Ry2Z8SPQ1JtKUg==
X-Received: by 2002:a7b:c405:0:b0:3fe:1166:e33f with SMTP id k5-20020a7bc405000000b003fe1166e33fmr1491664wmi.10.1692186716979;
        Wed, 16 Aug 2023 04:51:56 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id fk3-20020a05600c0cc300b003fc05b89e5bsm21280663wmb.34.2023.08.16.04.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 04:51:56 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        sboyd@kernel.org, luca.weiss@fairphone.com
Cc:     bryan.odonoghue@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 2/7] arm64: dts: qcom: sm8250: Define ports for qmpphy orientation-switching
Date:   Wed, 16 Aug 2023 12:51:46 +0100
Message-ID: <20230816115151.501736-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
References: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ports for orientation switching input and output. The individual board dts
files will instantiate port@0, port@1 and/or port@2 depending on the supported
feature-set.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 83ab6de459bc4..c79173504a3fd 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3613,6 +3613,23 @@ dp_phy: dp-phy@88ea200 {
 				#phy-cells = <0>;
 				#clock-cells = <1>;
 			};
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+
+				port@2 {
+					reg = <2>;
+				};
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
-- 
2.41.0

