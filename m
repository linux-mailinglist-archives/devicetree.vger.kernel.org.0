Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEC033B2E52
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 13:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231169AbhFXMAk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 08:00:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230518AbhFXMAj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 08:00:39 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D6AC061760
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 04:58:19 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id r20so4564663qtp.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 04:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rTRpC3uiw6MTlkqKW4TuhPSIXQr7Qt2j6LLeuz0vTvI=;
        b=tAbvLt9LtHb7XwdRozCDlbcHWH2wttPU6nspU3PwwNc/jYTRePpMvvJogDJS2ab3tN
         p2q8QBJZA1E4k22f8z9THTkmEmOEcSv+8+d9avxN8uAG8ELdgDsFpr0WrakxDW+Key/B
         nTzU73bNNpXd+IdPparXlw1MGzSOfDjIMZVGDEFCv4k5o2HmeqMUwqbq62elH9znRyy3
         3NeS8gCqVLQ9RBd3uxlHF7mtwQ6VWyAxjAt7tDG6mvDcoPS6YXqb0VfbVnWmNqVvztil
         WxChLrlGGbJgDV0H2C84DBAxj5VyABESx482rju3rorLLsU0WgX8hUyMEy+Q+dWpblhJ
         fl3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rTRpC3uiw6MTlkqKW4TuhPSIXQr7Qt2j6LLeuz0vTvI=;
        b=ab8qAM+oXvKhZFC+YZAtFITdrb3R896bGv7oD3v9jAt7FqdfyOdCY5GMZumhRkBmc0
         7qIl8vuuBL8ZEaC4vsjSfHm8Ly3738y9VXyHuTMeaC1UIidDF/DuoVT5B8qiVeEkVW0l
         fFPQYBnx0KQyQr1e3Vx8kV5pzC+OFVQ/M3Gvop8qi1Vv0E4qBc4u2VL+SdOrbF7T5wzW
         6XuMTZbOM2ZwO8LSMQyBDaVr7xe0P+YSbhuEMSMlb0/5zenvtjRQfWiKUjAis/z3ZyNY
         2vYrc8br48QXo7mz9K1ulxcinTUYV7jbRjuVG7QyUT3xVG9qw+NSNzkUl2QekM4VwSaM
         S1ow==
X-Gm-Message-State: AOAM531QHmH+PJJPMfotjI+RynoXjBlX2NN2aYlVS3xx0bQv5aJodifD
        5yjUdndmvgOKSsNqUR8o2HBSyQ==
X-Google-Smtp-Source: ABdhPJyAwtibj3tAMnr/bmYnh5zjBnbuHkZ2Y0FaGlwH/JWcK90Jz9AlV2WRnEy3qDxsdRIsRrAi+A==
X-Received: by 2002:ac8:59d4:: with SMTP id f20mr4359824qtf.189.1624535898877;
        Thu, 24 Jun 2021 04:58:18 -0700 (PDT)
Received: from pop-os.fios-router.home (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.googlemail.com with ESMTPSA id w3sm2287173qkp.55.2021.06.24.04.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 04:58:18 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, rui.zhang@intel.com,
        daniel.lezcano@linaro.org, viresh.kumar@linaro.org,
        rjw@rjwysocki.net, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [Patch v2 4/5] arm64: boot: dts: qcom: sdm45: Add support for LMh node
Date:   Thu, 24 Jun 2021 07:58:12 -0400
Message-Id: <20210624115813.3613290-5-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210624115813.3613290-1-thara.gopinath@linaro.org>
References: <20210624115813.3613290-1-thara.gopinath@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LMh nodes for cpu cluster0 and cpu cluster1. Also add interrupt
support in cpufreq node to capture the LMh interrupt and let the scheduler
know of the max frequency throttling.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---

v1->v2:
	- Dropped dt property qcom,support-lmh as per Bjorn's review comments.
	- Changed lmh compatible from generic to platform specific.
	- Introduced properties specifying arm, low and high temp thresholds for LMh
	  as per Daniel's suggestion.

 arch/arm64/boot/dts/qcom/sdm845.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 0a86fe71a66d..202fec09becd 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3646,6 +3646,30 @@ swm: swm@c85 {
 			};
 		};
 
+		lmh_cluster1: lmh@17d70800 {
+			compatible = "qcom,sdm845-lmh";
+			reg = <0 0x17d70800 0 0x401>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			qcom,lmh-cpu-id = <0x4>;
+			qcom,lmh-temperature-arm = <65000>;
+			qcom,lmh-temperature-low = <74500>;
+			qcom,lmh-temperature-high = <75000>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
+		lmh_cluster0: lmh@17d78800 {
+			compatible = "qcom,sdm845-lmh";
+			reg = <0 0x17d78800 0 0x401>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			qcom,lmh-cpu-id = <0x0>;
+			qcom,lmh-temperature-arm = <65000>;
+			qcom,lmh-temperature-low = <74500>;
+			qcom,lmh-temperature-high = <75000>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
 		sound: sound {
 		};
 
@@ -4911,6 +4935,8 @@ cpufreq_hw: cpufreq@17d43000 {
 			reg = <0 0x17d43000 0 0x1400>, <0 0x17d45800 0 0x1400>;
 			reg-names = "freq-domain0", "freq-domain1";
 
+			interrupts-extended = <&lmh_cluster0 0>, <&lmh_cluster1 0>;
+
 			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
 			clock-names = "xo", "alternate";
 
-- 
2.25.1

