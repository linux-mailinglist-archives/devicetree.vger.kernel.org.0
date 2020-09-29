Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A344627BB62
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 05:15:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727479AbgI2DPB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 23:15:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727449AbgI2DOy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 23:14:54 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 055E2C0613DE
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 20:14:50 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id w16so3858044oia.2
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 20:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6z62kQcyzok8JJYDm/n7uK1BxyNMXGLc/05rJX4mEws=;
        b=CjIyqhka4br2vvMIrLulyfun+L2Z1JvlCzjQijopbjVwBl3ScZ9vERkwpOhsu6mU2z
         hzidC8ZUwOEayhU4/dIsxTJXK0hMTTMuuBwy6jYUIpjnru40cbRAFjxH/qKXtZ9/9zG1
         sULWNMqrUTFnQtxU2knq7saZjCW5E2fkke8WqHt779fGSWQhgpxU0Vv6CtXIXs50/nNm
         o9kKg5manfHmNIr79EtoALgfF8h3Wm1ZZ65qS3G3K8fA13WfY+sxZV4gyJJhxX3Q94bC
         loKsLbly+XVYybCzu2MABiMNDf4serZ+NQIxw0B+r4z5b/l/bfJbSq74nrAhi+hylkZc
         yBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6z62kQcyzok8JJYDm/n7uK1BxyNMXGLc/05rJX4mEws=;
        b=p3yAR8VFyyLjPyxSjXRZ7l2s+3cqc63n0KGV3lOQi+ho2noJuRR/Yt+jwLXfn/LjNf
         EuCGxK42ba42+a0UBjXdoyzyRwKF4AWeLfl47kQatvRujk7H4tI2kMYNACUA0+oPmTlM
         RQxH2JPenwQ3YoQ46nMZfnGkuHmD9PIjlHMI/kpKwf8XEJAZxfHP8y4o4c+QiMxVyEp8
         v399WdR36f8o3PLSOWCLDS/Z3DIEmyRPMao1nx3fOLzf2M+e3jAGrUXRBMF92D9UBvkO
         1OlildGPqi7nCgg/NV9c0ElwffElJeUpQA0tCMmlU8I3Nf1+afPlYCOZ88S3o8zGLydQ
         /WUQ==
X-Gm-Message-State: AOAM532LNCXgOOdU3SUbAOsY7vkTZbaMtEdEahk6cOPZPaf6x5lM+LsO
        oVcJDittXuv1YVLDKfU6b3TOKg==
X-Google-Smtp-Source: ABdhPJxiL3xDlPWiW5oOtTVMgQeysK4oZ95945+QxmBb7zRGHPPV6Q2VfN/OlV1tfYAH/l2OHWRJGQ==
X-Received: by 2002:aca:ed03:: with SMTP id l3mr1232246oih.42.1601349289192;
        Mon, 28 Sep 2020 20:14:49 -0700 (PDT)
Received: from localhost.localdomain (99-135-181-32.lightspeed.austtx.sbcglobal.net. [99.135.181.32])
        by smtp.gmail.com with ESMTPSA id 36sm729548otb.30.2020.09.28.20.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 20:14:48 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Martin Botka <martin.botka1@gmail.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pwm@vger.kernel.org
Subject: [PATCH v4 4/4] arm64: dts: qcom: Add user LEDs on db820c
Date:   Mon, 28 Sep 2020 20:15:44 -0700
Message-Id: <20200929031544.1000204-5-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929031544.1000204-1-bjorn.andersson@linaro.org>
References: <20200929031544.1000204-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Changes since v3:
- Updated labels

 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi | 49 ++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
index defcbd15edf9..7e51677d256e 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
@@ -8,6 +8,7 @@
 #include "pmi8994.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
@@ -682,6 +683,54 @@ pinconf {
 	};
 };
 
+&pmi8994_mpps {
+	pmi8994_mpp2_userled4: mpp2-userled4 {
+		pins = "mpp2";
+		function = "sink";
+
+		output-low;
+		qcom,dtest = <4>;
+	};
+};
+
+&pmi8994_lpg {
+	qcom,power-source = <1>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmi8994_mpp2_userled4>;
+
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	led@1 {
+		reg = <1>;
+		label = "green:user1";
+
+		linux,default-trigger = "heartbeat";
+		default-state = "on";
+	};
+
+	led@2 {
+		reg = <2>;
+		label = "green:user0";
+		default-state = "on";
+	};
+
+	led@3 {
+		reg = <3>;
+		label = "green:user2";
+	};
+
+	led@4 {
+		reg = <4>;
+		label = "green:user3";
+
+		qcom,dtest = <4 1>;
+	};
+};
+
 &pmi8994_spmi_regulators {
 	vdd_gfx: s2@1700 {
 		reg = <0x1700 0x100>;
-- 
2.28.0

