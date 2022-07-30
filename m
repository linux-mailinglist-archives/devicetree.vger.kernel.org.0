Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 047B7585BC4
	for <lists+devicetree@lfdr.de>; Sat, 30 Jul 2022 21:33:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235688AbiG3Td2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Jul 2022 15:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231281AbiG3Td1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Jul 2022 15:33:27 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEDA316589
        for <devicetree@vger.kernel.org>; Sat, 30 Jul 2022 12:33:26 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-10bd4812c29so9335310fac.11
        for <devicetree@vger.kernel.org>; Sat, 30 Jul 2022 12:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=rqGLhmVFOAbKqEPv6Xo3EqzY1tZAYBu4Uvtx+5lA87o=;
        b=ziNRbsmSPB0BIEpJqp+ksQ9mIW9j5Z8/Q7giHnqXwbAsCZW4iJ00NV/NHtNuZNacBU
         zO7Y6TvrYNPtwsm8hh4x6iU96K/+rU2p7WXHPI0ZNJqyLHRc5oaOkGoVdS9DZI2gwnVR
         DWIGlbnJPnsl7zcGwQFWVoEFIytI2Ph4M4CujeXwLMGtTpBMcp7Y73UFEZCnxX2QLDdh
         xKSjbtOOfnHJ4gleq3NeJJbA0eP6ChqvgX5GMNHP5ZpacBIgKuKRL+bwXDzcutPUNQpO
         JSQ1DTPrRW43l7oblWjGZq9nwPQ7P492jZsDO/ZYnu6LBrahjn0ZYiippy9zHj0lL12D
         Jx6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=rqGLhmVFOAbKqEPv6Xo3EqzY1tZAYBu4Uvtx+5lA87o=;
        b=ujQgEBXnHucLP42Z8Kp0AfXrUBHtbIDCQXZLfudVWVWTHWT4jwx3gorLbci5Yz5PXg
         M8Nf+AjEJ/6/CxpNVQi9ssmMqtSciDNFPBj3GmcHL+XSZ4csEdj9YRvOf+sRthS/AxBu
         EFAUewUznCBtB9YE+K30Xsnb6vsHX5THMmBXYkY7zXsDHUdNiqq/oXCbqBzfnidV//Ov
         yusayxeBhI2Lx1fRjc8VLr2IoRBEW+KRIhencwl4Ljj+uGxeKJX5HvHsohGtKIK1HD+G
         TsmulutemkWA0iq2p9ZQvH0Y+GgQlZkbjqCJ7nZjctiR7y0ZlSrYh9e7Urvm/QsIWVQf
         UnnQ==
X-Gm-Message-State: AJIora/6AgN8pSMIFKIQIMQJH5b1PrBjCeJHejy37LFPeGUSvfbypMHN
        DSvnAPso5vRV5yyy0LaItrwW7g==
X-Google-Smtp-Source: AGRyM1u7urvNawuHflhwp661DTolSORbH5K1L9cnAuZZyf9rhVTkBsXkFR+YCruuuwKk7c3XOchNOg==
X-Received: by 2002:a05:6870:c8aa:b0:10d:d01d:438f with SMTP id er42-20020a056870c8aa00b0010dd01d438fmr4531413oab.266.1659209606167;
        Sat, 30 Jul 2022 12:33:26 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id v20-20020a056870311400b000f32fb9d2bfsm2106981oaa.5.2022.07.30.12.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 12:33:25 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s: Add LID switch
Date:   Sat, 30 Jul 2022 12:36:17 -0700
Message-Id: <20220730193617.1688563-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add gpio-keys for exposing the LID switch state.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index 84dc92dda0b8..f3246cc13d15 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -7,6 +7,8 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/gpio-keys.h>
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sc8280xp.dtsi"
@@ -26,6 +28,21 @@ backlight {
 		pinctrl-0 = <&edp_bl_en>, <&edp_bl_pwm>;
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&hall_int_state>;
+
+		switch-lid {
+			gpios = <&tlmm 107 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			wakeup-source;
+			wakeup-event-action = <EV_ACT_DEASSERTED>;
+		};
+	};
+
 	vreg_edp_bl: regulator-edp-bl {
 		compatible = "regulator-fixed";
 
@@ -347,6 +364,14 @@ reset {
 		};
 	};
 
+	hall_int_state: hall-int-state {
+		pins = "gpio107";
+		function = "gpio";
+
+		input-enable;
+		bias-disable;
+	};
+
 	qup0_i2c4_default: qup0-i2c4-default-state {
 		pins = "gpio171", "gpio172";
 		function = "qup4";
-- 
2.35.1

