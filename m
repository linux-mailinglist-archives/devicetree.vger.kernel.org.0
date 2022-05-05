Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDF8C51B5DE
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 04:28:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238906AbiEEC3I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 22:29:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239360AbiEEC3F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 22:29:05 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F1F413DE0
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 19:25:26 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-e5e433d66dso3033814fac.5
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 19:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=28CuiJ6+N6QUrU1lecqpYcX63v6ThU0X4857o5oV5io=;
        b=zYYJ4gxCz7Rlz1zA3z1mWjWcihgkxm223I46Ok5Nm9lfnRKOyEEWMzZ6+ESXn97qlW
         IV5hv9zyswRHnyt0KToA+32MD4BUanp/HMkpULfd1PsPCV9/mXLgQzydj1pmum//cPww
         KK1AFty7kGbDelttsupxw2rFMxaAHA3iETvL5zL0yV6FW7hfRxgKNaL5sh3FpCd3rSfo
         ZCSH59wvQxiEHX/iwhgUVeQUFOq4dNKe8BTMTlFm+6F2CUmxrMYfZG6RKf+wmHgr8uTT
         9CInciSk2RVv4qadDtYCs9fBq0QFLbQiaZCQa8Km2Ae9CxJJvxSGT699bM0dtGdb7wQg
         kibQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=28CuiJ6+N6QUrU1lecqpYcX63v6ThU0X4857o5oV5io=;
        b=nRav4J4hmlZNOxFqsJcNlOOrMZft6NZl0jANg6PkSJ75HnHhsBYkUsNeRsgM6HAypk
         Qbe+1ba6DNoD9BqyrY5OoH2RftM5KwMM5IqB1IVI8s6D/7PvpfelqIbjOIyVikRG/+o8
         URIIAXj52oBb078HTGUDS9vZv6IDhuJyNrj9CPahv8AlSFUbG0BP7O+75YQAhTVy8xM0
         a5W5+X4KJ0Q7Yp1cLMWhWLJFxsNHEd4piD+0GGj23qv1g29SRXigs1hPFgNacOrqRf9e
         W/QdGKxgtJrGnFFrcKGZJE1sgIhM09ULC0p5LwuI4nXOeUSqvlHmGNgga9MlJgsb5Wk/
         kVlg==
X-Gm-Message-State: AOAM531lOoehz6Ba76E3gzje+YHLhWRk/Pa755mY/99BVNHTdIKGyTl1
        FbxMx4SGXHPjZ9HfCFnOCq+pB2v3aQXUeogM
X-Google-Smtp-Source: ABdhPJxktucYGoCB9lE0eXnZHIeEufCSHbz5dVcWr/o3lmQYRbhh11iXphH+jQ0Mt95gTCSGsIkxWg==
X-Received: by 2002:a05:6870:1807:b0:d7:2a4c:14b8 with SMTP id t7-20020a056870180700b000d72a4c14b8mr1217692oaf.97.1651717526028;
        Wed, 04 May 2022 19:25:26 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id n8-20020a0568080a0800b00325cda1ff8csm238296oij.11.2022.05.04.19.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 19:25:25 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: qcom: db820c: Add user LEDs
Date:   Wed,  4 May 2022 19:27:06 -0700
Message-Id: <20220505022706.1692554-5-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220505022706.1692554-1-bjorn.andersson@linaro.org>
References: <20220505022706.1692554-1-bjorn.andersson@linaro.org>
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

The db820c has 4 "user LEDs", all connected to the PMI8994. The first
three are connected to the three current sinks provided by the TRILED
and the fourth is connected to MPP2.

By utilizing the DTEST bus the MPP is fed the control signal from the
fourth LPG block, providing a consistent interface to the user.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 56 +++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
index 56e54ce4d10e..e9039e68a095 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
@@ -10,6 +10,7 @@
 #include "pmi8994.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
@@ -683,6 +684,61 @@ pinconf {
 	};
 };
 
+&pmi8994_lpg {
+	qcom,power-source = <1>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmi8994_mpp2_userled4>;
+
+	qcom,dtest = <0 0>,
+		     <0 0>,
+		     <0 0>,
+		     <4 1>;
+
+	status = "okay";
+
+	led@1 {
+		reg = <1>;
+		color = <LED_COLOR_ID_GREEN>;
+		function = LED_FUNCTION_HEARTBEAT;
+		function-enumerator = <1>;
+
+		linux,default-trigger = "heartbeat";
+		default-state = "on";
+	};
+
+	led@2 {
+		reg = <2>;
+		color = <LED_COLOR_ID_GREEN>;
+		function = LED_FUNCTION_HEARTBEAT;
+		function-enumerator = <0>;
+	};
+
+	led@3 {
+		reg = <3>;
+		color = <LED_COLOR_ID_GREEN>;
+		function = LED_FUNCTION_HEARTBEAT;
+		function-enumerator = <2>;
+	};
+
+	led@4 {
+		reg = <4>;
+		color = <LED_COLOR_ID_GREEN>;
+		function = LED_FUNCTION_HEARTBEAT;
+		function-enumerator = <3>;
+	};
+};
+
+&pmi8994_mpps {
+	pmi8994_mpp2_userled4: mpp2-userled4-state {
+		pins = "mpp2";
+		function = "sink";
+
+		output-low;
+		qcom,dtest = <4>;
+	};
+};
+
 &pmi8994_spmi_regulators {
 	vdd_s2-supply = <&vph_pwr>;
 
-- 
2.35.1

