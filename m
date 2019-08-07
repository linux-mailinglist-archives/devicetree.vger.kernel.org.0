Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9E2EA8531F
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 20:44:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389214AbfHGSov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 14:44:51 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:46869 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388428AbfHGSov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 14:44:51 -0400
Received: by mail-pl1-f195.google.com with SMTP id c2so42073327plz.13
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 11:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2IbDDVz7AIYvob9RX49OsdDKJDV+Vvct093/EWA0a4E=;
        b=ivbrRfGOojgPeGQehWsvM+H2yaojSbdm98/KpCKzNDvnH6WagBvNAY+3WDms9j8vo4
         pzdMB6A7o01aVBXLwSgyksmc8auXDgupC9dhQe/0nKqzYwrCGyV+q7R5GDPPcpcdAzkK
         1jc7mFG3yu0O/xjVyxKMhY8qPY+o+5MP1KGHw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2IbDDVz7AIYvob9RX49OsdDKJDV+Vvct093/EWA0a4E=;
        b=CGv7Qi4ppcUAONLx2BcFPBBhduVOtThvibzt7zr52FG/hQG0b9YBb9Hw1qtZpWkwa9
         x/jAxyicsh4qtlwnxz9O48aEl7XngiTEucpbs6bt6yKE+XH3nFJUNlzDVjFh4/OQxbI/
         rALyC2bgWlK44+pPeO8pJfaNSDUuoH+Td5qR0G1gY1MuHJFE5mvS7OP+DEvQRLSbODTo
         rxFpWo3Cqaw9dGG0Q1Ak8FP0R9xmzboL8nk+LjGbpQnY86AEHwtl2j+Fh9XK3NyUBLMn
         0RGgk8ImVhmEayt/PjsJmmc6CfydCiDtxrvyRlqf/V0I4WUM8WoF/C5MHEBMSMBBpOsc
         BilA==
X-Gm-Message-State: APjAAAU9IQR3GHsEe15Jj/pxByf5voX82ofcSBI+RJZO7QEPf56KHbrv
        kgfOFlqgJHPJ6U4WAhyp9omHYp/q7Z0=
X-Google-Smtp-Source: APXvYqyPo9mJdjvn0x0NHv6/e03SbunwEogzp2cEC7vzJFwflpHwGALnVpplo1Q0DE/O448sW9GX3w==
X-Received: by 2002:a17:902:28e9:: with SMTP id f96mr9127478plb.114.1565203490911;
        Wed, 07 Aug 2019 11:44:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id u7sm83048472pgr.94.2019.08.07.11.44.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 11:44:50 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2] arm64: dts: sdm845: Add dynamic CPU power coefficients
Date:   Wed,  7 Aug 2019 11:44:44 -0700
Message-Id: <20190807184444.248984-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dynamic power coefficients for the Silver and Gold CPU cores of
the Qualcomm SDM845.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
---
just noticed that this patch fell through the cracks, resending
a rebased version.

Changes in v2:
- added Reviewd-by tags from Doug and Amit
- rebased on agross/for-next
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 78ec373a2b18..12ae58d76f8b 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -194,6 +194,7 @@
 					   &LITTLE_CPU_SLEEP_1
 					   &CLUSTER_SLEEP_0>;
 			capacity-dmips-mhz = <607>;
+			dynamic-power-coefficient = <100>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			#cooling-cells = <2>;
 			next-level-cache = <&L2_0>;
@@ -215,6 +216,7 @@
 					   &LITTLE_CPU_SLEEP_1
 					   &CLUSTER_SLEEP_0>;
 			capacity-dmips-mhz = <607>;
+			dynamic-power-coefficient = <100>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			#cooling-cells = <2>;
 			next-level-cache = <&L2_100>;
@@ -233,6 +235,7 @@
 					   &LITTLE_CPU_SLEEP_1
 					   &CLUSTER_SLEEP_0>;
 			capacity-dmips-mhz = <607>;
+			dynamic-power-coefficient = <100>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			#cooling-cells = <2>;
 			next-level-cache = <&L2_200>;
@@ -251,6 +254,7 @@
 					   &LITTLE_CPU_SLEEP_1
 					   &CLUSTER_SLEEP_0>;
 			capacity-dmips-mhz = <607>;
+			dynamic-power-coefficient = <100>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			#cooling-cells = <2>;
 			next-level-cache = <&L2_300>;
@@ -269,6 +273,7 @@
 			cpu-idle-states = <&BIG_CPU_SLEEP_0
 					   &BIG_CPU_SLEEP_1
 					   &CLUSTER_SLEEP_0>;
+			dynamic-power-coefficient = <396>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			#cooling-cells = <2>;
 			next-level-cache = <&L2_400>;
@@ -287,6 +292,7 @@
 			cpu-idle-states = <&BIG_CPU_SLEEP_0
 					   &BIG_CPU_SLEEP_1
 					   &CLUSTER_SLEEP_0>;
+			dynamic-power-coefficient = <396>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			#cooling-cells = <2>;
 			next-level-cache = <&L2_500>;
@@ -305,6 +311,7 @@
 			cpu-idle-states = <&BIG_CPU_SLEEP_0
 					   &BIG_CPU_SLEEP_1
 					   &CLUSTER_SLEEP_0>;
+			dynamic-power-coefficient = <396>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			#cooling-cells = <2>;
 			next-level-cache = <&L2_600>;
@@ -323,6 +330,7 @@
 			cpu-idle-states = <&BIG_CPU_SLEEP_0
 					   &BIG_CPU_SLEEP_1
 					   &CLUSTER_SLEEP_0>;
+			dynamic-power-coefficient = <396>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			#cooling-cells = <2>;
 			next-level-cache = <&L2_700>;
-- 
2.22.0.770.g0f2c4a37fd-goog

