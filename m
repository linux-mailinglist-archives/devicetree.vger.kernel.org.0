Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AF58618263
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 00:43:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726591AbfEHWn0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 18:43:26 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41650 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728633AbfEHWnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 18:43:17 -0400
Received: by mail-pf1-f193.google.com with SMTP id l132so191756pfc.8
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 15:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=//ssDyBln8BZY58d4oo5/19E/yt+2bcgiGBzlLV+nkQ=;
        b=uhHHCW87uoh9FemCtLvCqAn2AgbXyLLX8glrL4kGvwOSPT6R2bvf0TwHuwK8cR1M0l
         KRAYk/vKdhHSuRy0tu898oONu6ook8MAr24SB13BHsnKTZ673MVQtUar5JipYBha8jmX
         6VrshbBXKVgXKOKRgxN6pG4bglEsWPMyIkFNv4GHcGQIwAx5aVbjI4XNlZAw2+KDVmhE
         AJKIRLfjwuRdM7HygkRRE/Jp5q3c8uNJwFridduBbyAaxWPDPy0fzwk+XLQZtemKr7Pm
         kdMQvXYNdw8D7BOtDKDs7tnforEMDaC2XgGh1XSGFnpY1+fdzxWI+Vv19buatSnXJFQM
         +nAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=//ssDyBln8BZY58d4oo5/19E/yt+2bcgiGBzlLV+nkQ=;
        b=auNvBdRDpcE4a0xKOWgmNly8yOVeVgjz6RZgqm4WCUSBt49G6Iz3+BXDBO6J6LfvEe
         dgY2HKPR2cn5VcT6gKNRtLEW/9OcyedLYBE9IjRTokvynFm7Po7LYmIUZrXN6BfkWvYE
         KQwuvRpacHSzRdSNHvfFtO/Uoy+vr5ijh6bHMGt/TzGHiIzYuui9ImqNEaTnvzcIw05E
         8rmBWTPAaSYqkYf2cYd/7COU096mUdl/JFQiGF1KgdvUzZOz/ionj2NKbJCXqjslaaDe
         R/EenGI7OK3fbo7HuOz6/TJS2uuYxhMj6fG1BnFaKRePkuimN4x7ecY9qa8Hs7mAZLDB
         eQZA==
X-Gm-Message-State: APjAAAXf7IXR8eqixrN+f9OtIJ56yE1Eb6S1UIl9PXiZT0NKdXPJqDJx
        +RjtpWKgCVztGh/ZVwnO8WKpAw==
X-Google-Smtp-Source: APXvYqzRqpM4/hyzBO6sHXupAo83Putj6RvoE9HT65iqbET34bEFFMWWh0B13NNHeMSR6395VQKK/w==
X-Received: by 2002:a65:5c82:: with SMTP id a2mr866049pgt.378.1557355397036;
        Wed, 08 May 2019 15:43:17 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 25sm320494pfo.145.2019.05.08.15.43.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 May 2019 15:43:16 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] arm64: dts: qcom: qcs404-evb: Enable PCIe
Date:   Wed,  8 May 2019 15:43:09 -0700
Message-Id: <20190508224309.5744-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190508224309.5744-1-bjorn.andersson@linaro.org>
References: <20190508224309.5744-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the PCIe PHY and controller found on the QCS404 EVB.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v3:
- Split single patch, no functional change

 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
index 2c3127167e3c..d1108a6abd0a 100644
--- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018, Linaro Limited
 
+#include <dt-bindings/gpio/gpio.h>
 #include "qcs404.dtsi"
 #include "pms405.dtsi"
 
@@ -68,6 +69,22 @@
 	};
 };
 
+&pcie {
+	status = "ok";
+
+	perst-gpio = <&tlmm 43 GPIO_ACTIVE_LOW>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&perst_state>;
+};
+
+&pcie_phy {
+	status = "ok";
+
+	vdda-vp-supply = <&vreg_l3_1p05>;
+	vdda-vph-supply = <&vreg_l5_1p8>;
+};
+
 &remoteproc_adsp {
 	status = "ok";
 };
@@ -184,6 +201,15 @@
 };
 
 &tlmm {
+	perst_state: perst {
+		pins = "gpio43";
+		function = "gpio";
+
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
 	sdc1_on: sdc1-on {
 		clk {
 			pins = "sdc1_clk";
-- 
2.18.0

