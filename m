Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3064466D06
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 23:38:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377380AbhLBWld (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 17:41:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377245AbhLBWl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 17:41:29 -0500
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5661CC06174A
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 14:38:06 -0800 (PST)
Received: by mail-qk1-x72a.google.com with SMTP id i9so1568750qki.3
        for <devicetree@vger.kernel.org>; Thu, 02 Dec 2021 14:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0diK6zWMgOO/TArP/zyW7Q3OH2Ix/QmAaJD5h2ncz4A=;
        b=awoJJBi2hfUE1F4m4zBeadCl7t1J/j0kIXhSwFGX6yFqOZwkxe6P/bSW4g8ZTDdWuT
         F2nmwEEsbgkQdWGpLAs5PkLgoumu6Zzs4vGtmpnuS/YToak13ectEyghRz5wwFldqNCo
         PEewD/KBLHcg9CeSW9KEUva3ZVHe6At4qEQF3QcAibZgpFGTrtpUJVbdBfcC3zhuseJO
         ZS7M7gYvXuYqWyQtlXdm5inJ9Ed60JPkTE1I82zDbVpZSHL8MMrWOmy69brB5m8feFL+
         Aff8nwRH3QZQ9MjPX0R80Pj8BRPzmbSFJjUXrvtor12Fw4PaeWWSQAIipiG6PvwcmR+/
         3d5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0diK6zWMgOO/TArP/zyW7Q3OH2Ix/QmAaJD5h2ncz4A=;
        b=dGsnb+Jy8YHDnI4n7kISb4MsIVuRz+3K1ovG1EvNUAkPH9RVk0yT6XQHclHcPetUDr
         aD4NJYtWQGDmtWtyFaruV9KoYy4FXeXZi+ffqU3K+z5aHF/ChsR4uA5xNOIqL2YGvK6j
         sCJqFVfUkMj2flwOO9ji59aQuVEDNDUvljcIvrE+3svPWK8E4OG3b3VU9kghzVSWmT6k
         2vmemkpQyMSM/4LVssfvQwjwWsHMVQ1Cca+P2vW60J58jU+/D/LJ0q6zF5BerO0OMSYW
         6/2Tvc4OxLhMw8RbYFXLyqowq2rkbhLcJ14FTeVSEAcc6rYLHsvBiTEyRUwI4o4FXFRm
         tJ6g==
X-Gm-Message-State: AOAM530W0s+0qyvuXWn9PcE7gEuk394gOyw35OJtAT/Rx9kA/dvAqXCp
        /RKrw1P8UL2K0BPDfrYyE8xByQ==
X-Google-Smtp-Source: ABdhPJxQVbRfr9BSZgH8u3hmZetu4szGlJHsHguzhn20DLSXmmTT3Wj/07vQC6xH6L7cnqexO/15AA==
X-Received: by 2002:a05:620a:bc8:: with SMTP id s8mr14613668qki.50.1638484685510;
        Thu, 02 Dec 2021 14:38:05 -0800 (PST)
Received: from pop-os.fios-router.home (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.googlemail.com with ESMTPSA id h3sm961152qko.78.2021.12.02.14.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Dec 2021 14:38:05 -0800 (PST)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        daniel.lezcano@linaro.org, rafael@kernel.org, rui.zhang@intel.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: sm8150: Add support for LMh node
Date:   Thu,  2 Dec 2021 17:38:01 -0500
Message-Id: <20211202223802.382068-3-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211202223802.382068-1-thara.gopinath@linaro.org>
References: <20211202223802.382068-1-thara.gopinath@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LMh nodes for cpu cluster0 and cpu cluster1 for sm8150 SoC.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 81b4ff2cc4cd..e755d7ab78dd 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3650,6 +3650,30 @@ cpufreq_hw: cpufreq@18323000 {
 			#freq-domain-cells = <1>;
 		};
 
+		lmh_cluster1: lmh@18350800 {
+			compatible = "qcom,sm8150-lmh";
+			reg = <0 0x18350800 0 0x400>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			cpus = <&CPU4>;
+			qcom,lmh-temp-arm-millicelsius = <60000>;
+			qcom,lmh-temp-low-millicelsius = <84500>;
+			qcom,lmh-temp-high-millicelsius = <85000>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
+		lmh_cluster0: lmh@18358800 {
+			compatible = "qcom,sm8150-lmh";
+			reg = <0 0x18358800 0 0x400>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			cpus = <&CPU0>;
+			qcom,lmh-temp-arm-millicelsius = <60000>;
+			qcom,lmh-temp-low-millicelsius = <84500>;
+			qcom,lmh-temp-high-millicelsius = <85000>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
 		wifi: wifi@18800000 {
 			compatible = "qcom,wcn3990-wifi";
 			reg = <0 0x18800000 0 0x800000>;
-- 
2.25.1

