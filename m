Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3229A17B10E
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2020 23:00:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726533AbgCEWAg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Mar 2020 17:00:36 -0500
Received: from mail-pj1-f66.google.com ([209.85.216.66]:39668 "EHLO
        mail-pj1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726162AbgCEWAg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Mar 2020 17:00:36 -0500
Received: by mail-pj1-f66.google.com with SMTP id d8so164836pje.4
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2020 14:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kcC1IW1KDdxrQ4lRt9yYpC8gnK1lomqK3CqNSIHNWHM=;
        b=uiIylBlx2YbvARM6BPXAbzJIa6kDSqN9VcfYfgeVnyEzpqBa02cEnoTdSFqQlt9ScA
         tKfymc0+3Gbg+cJ0WUs5dE9mah/Nkj10yyuUwf1rO++Aq83Odxgh44HwirAY1l172OnD
         mStyzin83Da58TvoXOmfwuBtnTywo0X592jIAU+hNkzhLLNzpet92Mr2dWcSx2BEhqGu
         E5HclrQNb7eYTYfBKTMSBVmNfkUR8Xf+oBuGCIhykTZ05p044Ic4ZUKddeKwVHDMNjk5
         XdTbQMskOmvn6zL05PrUaxg1bzfu4VblOyshGFq81WeX6VuPl19jNJRVZVwMBGAtkjHY
         VXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kcC1IW1KDdxrQ4lRt9yYpC8gnK1lomqK3CqNSIHNWHM=;
        b=iZnGvWUwuu9nZ+0HsikXJg+jW34UiQ+jsVxe8bbs/d2P7OV+t3RpebMZrrkHjXK3cZ
         yjhrEERAWJsDExHvQX+PoKe9y1K11tyzXrFyeQpbGmsdaqiB/i7roK8hAvAe5qWIOaIV
         erILllwk7p9Q9xfYAauSwoouQhWJ93EhEWGm7tbW0MT3Hsod9Cj3xgpPMYO6NIVqbLDL
         OxOth19/VBYtiL9wZJfWXu3tF7WmO7P1kM1ON1UFJSlXsxoLG1hl4KnZYAYBsz4jrsLD
         aJLuCqglAB/Lqt++7BH4vvJ8gjroP4klopQ1TVZt1DaBaD8pmiDCNm2wsqaThHtpUFp9
         DCGA==
X-Gm-Message-State: ANhLgQ0tfQ/RflKLhEe2oZGWUJNkXFvPzpRizt13qoSLe/ZzhMhhAf4L
        7GF7dSsP6vZgvdy0k7jiY3FyeKg4pYw=
X-Google-Smtp-Source: ADFU+vt0KeY2Meuh/5MqejoeIsRvgo9FXPj4AbCfzr+GWSqnpvs0NyZNnGOS2H1UUOnf7NnLSVXqIw==
X-Received: by 2002:a17:90a:c218:: with SMTP id e24mr234440pjt.64.1583445633445;
        Thu, 05 Mar 2020 14:00:33 -0800 (PST)
Received: from localhost ([103.195.202.232])
        by smtp.gmail.com with ESMTPSA id f124sm18068404pfg.9.2020.03.05.14.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 14:00:32 -0800 (PST)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v1 3/4] arm64: dts: qcom: msm8998: Fix cpu compatible
Date:   Fri,  6 Mar 2020 03:30:14 +0530
Message-Id: <0535d640e9cd01887b5532f893ce4d61feca6d6d.1583445235.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583445235.git.amit.kucheria@linaro.org>
References: <cover.1583445235.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"arm,armv8" compatible should only be used for software models. Replace
it with the real cpu type.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 91f7f2d075978..c07fee6fd7eb9 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -130,7 +130,7 @@
 
 		CPU0: cpu@0 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo280";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
@@ -149,7 +149,7 @@
 
 		CPU1: cpu@1 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo280";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
@@ -164,7 +164,7 @@
 
 		CPU2: cpu@2 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo280";
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
@@ -179,7 +179,7 @@
 
 		CPU3: cpu@3 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo280";
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
@@ -194,7 +194,7 @@
 
 		CPU4: cpu@100 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo280";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
 			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
@@ -213,7 +213,7 @@
 
 		CPU5: cpu@101 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo280";
 			reg = <0x0 0x101>;
 			enable-method = "psci";
 			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
@@ -228,7 +228,7 @@
 
 		CPU6: cpu@102 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo280";
 			reg = <0x0 0x102>;
 			enable-method = "psci";
 			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
@@ -243,7 +243,7 @@
 
 		CPU7: cpu@103 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo280";
 			reg = <0x0 0x103>;
 			enable-method = "psci";
 			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
-- 
2.20.1

