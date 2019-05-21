Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF6A624BC2
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 11:36:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726363AbfEUJgI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 05:36:08 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:40081 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727646AbfEUJfn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 05:35:43 -0400
Received: by mail-pl1-f196.google.com with SMTP id g69so8173020plb.7
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 02:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YiFzZUDFNNH+WA+LKC8cHYcNE/oyfxuU+EKiZteprcA=;
        b=P0YGQzfJ3l725ZLFV27Ae+RQMAMp2ZIqj4kf636aaJM8AwO+STfy77eYWy1+alfg4h
         NHoQ9OKoM3Bfp7G5iJsxixxXPHo8JzULo3FafOzYHEWUs9o7EzYVfwTsP3cee5LdsUtJ
         kKT/31OvfRmzZELmH2BMt37+JVIdNwU9xxY7u4GoGnTiJsHShkrE0XCAE15rr/bATyVb
         Jo7pIdmVffNGfhZdsfpFVar4tm2U4J237nZB9Y5P5oVGrcgdea0NnX5Zp1Z9iuIaT+ej
         ZfM/voC7Y2L3a4mgevvfUoA6Z+uj3DwY4orptefBX1PNNljja/67t4Oy38fSdW6gYi9Y
         2nXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YiFzZUDFNNH+WA+LKC8cHYcNE/oyfxuU+EKiZteprcA=;
        b=Ag4Kl/ZcDoHpEmjhB0aadL55cDinTGR9WyGD/e+3m5etB9+URzj9JFqnb1qTbwltL7
         bpAVzZwBnv0edsK9nW93rT1eF3Y4ErmuIYhuZ0P/y1DGFGoEAo8sH1h/ThrHR0Abugbg
         /QQKALrqs+HMqfB1ROnn4bl4tOFtJQUcp7Tz70qdxMmjEr8VnO/Jiy+QnSAMA9l5O3XG
         +Qhhs6x63Tx3g0BVbmqXXVAlo7H4s21xqiDSEwDyPLocO6hM/hO7WMOG+U+5F9FcMTXb
         2cI64cQKGoBLZWg55pL26XOA2BjR1JMgLQlWRpFPGNIIGelZfwZMcosI4oz5Y8iDzAbD
         +3OA==
X-Gm-Message-State: APjAAAWX6F33M8XlGyKtFVwmWK+EtDgR9eAhxiV6Mia3Uqx9rhdRITVe
        ErUYHQ+zlduRwlfTX3SVDPSIRw==
X-Google-Smtp-Source: APXvYqyfGuR8RkQPTd4uMP6yvPr+WiF2Ong46j8jDpGyLRFcZHhGqN92KgimkksVN1yeuADm1RrWtA==
X-Received: by 2002:a17:902:3363:: with SMTP id a90mr659741plc.153.1558431342315;
        Tue, 21 May 2019 02:35:42 -0700 (PDT)
Received: from localhost ([49.248.189.249])
        by smtp.gmail.com with ESMTPSA id o6sm43731344pfa.88.2019.05.21.02.35.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 May 2019 02:35:41 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        niklas.cassel@linaro.org, marc.w.gonzalez@free.fr,
        sibis@codeaurora.org, daniel.lezcano@linaro.org,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 5/9] arm64: dts: qcom: qcs404: Add PSCI cpuidle low power states
Date:   Tue, 21 May 2019 15:05:15 +0530
Message-Id: <cddc5957a510eef61284656fd1d739d4112a2daa.1558430617.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Niklas Cassel <niklas.cassel@linaro.org>

Add device bindings for cpuidle states for cpu devices.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
[rename the idle-states to more generic names and fixups]
Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index e8fd26633d57..0a9b29af64c2 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -30,6 +30,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x100>;
 			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 		};
 
@@ -38,6 +39,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x101>;
 			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 		};
 
@@ -46,6 +48,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x102>;
 			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 		};
 
@@ -54,6 +57,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x103>;
 			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 		};
 
@@ -61,6 +65,20 @@
 			compatible = "cache";
 			cache-level = <2>;
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			CPU_SLEEP_0: cpu-sleep-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "standalone-power-collapse";
+				arm,psci-suspend-param = <0x40000003>;
+				entry-latency-us = <125>;
+				exit-latency-us = <180>;
+				min-residency-us = <595>;
+				local-timer-stop;
+			};
+		};
 	};
 
 	firmware {
-- 
2.17.1

