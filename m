Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91BDB189795
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2020 10:08:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727408AbgCRJI2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Mar 2020 05:08:28 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:39876 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726994AbgCRJI2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Mar 2020 05:08:28 -0400
Received: by mail-pl1-f195.google.com with SMTP id m1so2706427pll.6
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2020 02:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/Tz2TCBJLosFvMQuiEOmNBTTJaUHSMY5x8obUhagqkE=;
        b=VOuHeVGSbEZWE2VKzMs94drnC1PuaM51fUd3ZUT9z76t1g70Iys5H5QRoq/3I/rqbk
         TtBaTmIaHPvKxjs4BBcJCISqhPiRs1D3wqmPWxslYm7fjmGJHUCgie0JBP60h2vkIUhq
         OzAz6jxgyKHNehFiXpGjLHkynvcTOV2kRdey+HOTyLHXjNVPrBH9Sr2+eKef96De9fZ4
         gBhC3NTaL5d3CGmg9E6P2SNL9Hw7Y55pDgZkIRJed1o/baoCFB8LgEtt9Bn4dvhL/wWZ
         oe5ERNbWiATIyDsgJOoRCZv6Wb0Aa77uR9P+ruhxWUtRac8Oos82KfBdbp5G9tihDkAG
         i4Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/Tz2TCBJLosFvMQuiEOmNBTTJaUHSMY5x8obUhagqkE=;
        b=UOIgW6f2C3tgMshS4qwwOGAi/coZsNk6HKame/suhpX3lxdgAXhISRlpgRhUjpXCsx
         2RuQUC21aLC3ttltlco/QXBhT9V/eDFoqovyEjXQIwPvR0knlEY8ENc2IbDxLEhFf1nT
         KqxanpU1C0sDAgQ5Vf5OR0i86Q6Ojt7jztr3+HCZ6Is9Es+zdu1eRcWJ6C25pmD6bkDn
         DkdzGZRi8MsQIr2Zgw03JZshj04IJ6+53T9ytJKwWBfFPw8BSTTjnsme0oF3pEdmKKll
         v2Juey2kjD2y427hRYSiXa8r3NrrJ5HOkMCjG1viTOzJTpAlbdI+V5ndJlG1KIpbEOAw
         7nYw==
X-Gm-Message-State: ANhLgQ3HF8lGdNme6hvfFL3IM1wlLdFAB4aEjNHAAsxM2HnCtGolIAn8
        l8zlh0xdPx5yMz8a5dugivQ07A==
X-Google-Smtp-Source: ADFU+vteaWEM0j3A/aF4401U3on0RbmVqXgvFPxU04fll4tf52yVLpO3JpSbWnSrhSmTz+1e2S7GQw==
X-Received: by 2002:a17:902:a5c4:: with SMTP id t4mr2967798plq.242.1584522506555;
        Wed, 18 Mar 2020 02:08:26 -0700 (PDT)
Received: from localhost ([103.195.202.108])
        by smtp.gmail.com with ESMTPSA id x18sm5920560pfo.148.2020.03.18.02.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 02:08:25 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, sibis@codeaurora.org,
        swboyd@chromium.org, dianders@chromium.org,
        Andy Gross <agross@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sc7180: Fix cpu compatible
Date:   Wed, 18 Mar 2020 14:38:17 +0530
Message-Id: <2526d2b2907116d1bb6f7edd194226eb7e24c333.1584516925.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cd0f3d35ca0fc2944fd97e030a28318ff82dd5c1.1584516925.git.amit.kucheria@linaro.org>
References: <cd0f3d35ca0fc2944fd97e030a28318ff82dd5c1.1584516925.git.amit.kucheria@linaro.org>
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
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 8011c5fe2a31..a01dfefd90be 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -83,7 +83,7 @@
 
 		CPU0: cpu@0 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo468";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&L2_0>;
@@ -100,7 +100,7 @@
 
 		CPU1: cpu@100 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo468";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
 			next-level-cache = <&L2_100>;
@@ -114,7 +114,7 @@
 
 		CPU2: cpu@200 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo468";
 			reg = <0x0 0x200>;
 			enable-method = "psci";
 			next-level-cache = <&L2_200>;
@@ -128,7 +128,7 @@
 
 		CPU3: cpu@300 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo468";
 			reg = <0x0 0x300>;
 			enable-method = "psci";
 			next-level-cache = <&L2_300>;
@@ -142,7 +142,7 @@
 
 		CPU4: cpu@400 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo468";
 			reg = <0x0 0x400>;
 			enable-method = "psci";
 			next-level-cache = <&L2_400>;
@@ -156,7 +156,7 @@
 
 		CPU5: cpu@500 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo468";
 			reg = <0x0 0x500>;
 			enable-method = "psci";
 			next-level-cache = <&L2_500>;
@@ -170,7 +170,7 @@
 
 		CPU6: cpu@600 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo468";
 			reg = <0x0 0x600>;
 			enable-method = "psci";
 			next-level-cache = <&L2_600>;
@@ -184,7 +184,7 @@
 
 		CPU7: cpu@700 {
 			device_type = "cpu";
-			compatible = "arm,armv8";
+			compatible = "qcom,kryo468";
 			reg = <0x0 0x700>;
 			enable-method = "psci";
 			next-level-cache = <&L2_700>;
-- 
2.20.1

