Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 611F541F1FC
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 18:17:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354781AbhJAQTY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 12:19:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354819AbhJAQTY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 12:19:24 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D190C061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 09:17:39 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id a18so4233369wru.4
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 09:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EzWy2nvLFCIuBba5ki21B6r/rdWPB3y7nLXxAimeS4w=;
        b=b2lLhCxu6V++Sis/mzcbImRUwTxDNoulIsuf3Sczqqkb3P62Hf51DBU/V8Y3dCY3HN
         rAmHWI7x8HxoS1AXDAOFpohrtioMc5sxKrjF2RRS21tl0Q0LxeED13VDEl3Vvo8frIai
         BlIbUZwOO//b4X2b+byOgLkAukKJtKa9Xk1MxDXLHsdr/Zo06R772bxPkEq3aF9qGBuR
         4pbDWJPO3Z6OXFcI3PV0P7g6fjuamXz0lGxqjXqyeqIukxKfoWOPY77DiZPPnRTiNDQS
         EFEaiN1U2lXaefXvFwMwxYdcTAJpXGyK8Xr0B+VmMShKQwaHAu2fP2MGxb8Et8Lq2m4R
         56WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EzWy2nvLFCIuBba5ki21B6r/rdWPB3y7nLXxAimeS4w=;
        b=aW135F9AOnjY1csHVr3FgLCfvXwiZiS6F/WOdsE6WGXpYAuxddDtBy82+q3Ai+FNwd
         CC6yO/n4YjdId1sgglhk2dOMTWMLkK66BMtnMc/d9cksA6UKi7pPZZSi8+NV5UvU/fws
         99aMzmy3OxQMhhS25TnlXby/QfnanCEnLBgCpG9LJlZviaA2jomT8ChSF71bJOiToz3Y
         jZ6Cl6IIlW+Fkb2u6qgugD6NIisGiPSq72pdDgPiFlncwLEV2XoDpM15RCERKQmnR3OI
         RWx58H/BRGjmyuYs/aX4E57zmgF2CBWeo8Bl8IG7X8c522hQw0Fc07gbTjvSPGXVbg4Z
         4ZLQ==
X-Gm-Message-State: AOAM530ymJX+UmzpLkKYykx7+cgsGfPW+ojZIPpSxdAGMuCRb1371LS+
        coQHGfEGJK7B9gmr7ZP0yRz4rA==
X-Google-Smtp-Source: ABdhPJwgdmNt4q6CM1GJcIjHlayiUH7mjwfnFg2ReVmLQ9E++96gykDFNpXlrlKThqqyafXizNYSsg==
X-Received: by 2002:adf:a3c7:: with SMTP id m7mr13417466wrb.339.1633105057911;
        Fri, 01 Oct 2021 09:17:37 -0700 (PDT)
Received: from localhost.localdomain ([82.142.20.44])
        by smtp.gmail.com with ESMTPSA id d7sm6168206wrh.13.2021.10.01.09.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 09:17:37 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     heiko@sntech.de
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add idle cooling devices
Date:   Fri,  1 Oct 2021 18:17:28 +0200
Message-Id: <20211001161728.1729664-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The thermal framework accepts now the cpu idle cooling device as an
alternative when the cpufreq cooling device fails.

Add the node in the DT so the cooling devices will be present and the
platforms can extend the thermal zone definition to add them.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd83b0..9ac232ffd284 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -124,6 +124,11 @@ cpu_b0: cpu@100 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <10000>;
+				exit-latency-us = <500>;
+			};
 		};
 
 		cpu_b1: cpu@101 {
@@ -136,6 +141,11 @@ cpu_b1: cpu@101 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <10000>;
+				exit-latency-us = <500>;
+			};
 		};
 
 		idle-states {
-- 
2.25.1

