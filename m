Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BA9F619CA6
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 13:30:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727416AbfEJLaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 07:30:14 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:47038 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727147AbfEJLaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 07:30:13 -0400
Received: by mail-pf1-f195.google.com with SMTP id y11so3067991pfm.13
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 04:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vxbRgWsY1oo16QVLjuEv5vJpgQAg02SeRW3oIPG3HnE=;
        b=majRNknwjCIZzqzc4d0Qf2KSDJ845oaJmYikIf4x95USXpK3heltnfr/FkhqZSbUmt
         ana31GB2FZ8yw+s/CDGOcaOCH5BHAFXcd8a+1Kcilsaw6//0LMdVHUFxbg46HglF+CR9
         3wWEOqDB6wF8rhx3GwNkhimtooLej6PLUxYeFE3Gv86wzEFK1/6/7us5axHAJiTBIZoW
         kS2E5JQDU5Vsptjpgmd8jHgwsuxhWISp8jQNa2n+R4dzvnJ4SUCkPrRb4xNlGNwtX28H
         7DxtEBuj+qnU4BLWf2oD/0J5HThB4cE2N+IQVOhutsNC4VKx6pDfoSd2NKp7ZnnlqdZC
         6ywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=vxbRgWsY1oo16QVLjuEv5vJpgQAg02SeRW3oIPG3HnE=;
        b=WOT/LN0rjpOH4PCznOXoTU62ZOzQ9v8TEoNjtPeNrCM/SnkM0eLMUZ251xXdH1eGF/
         pk/DmXUSPVZNGrxMnscMExZTnGJCu6la7MJKC2YxVi5BvPOHYC+h++hktvIj8r+F/0v9
         PGu7QgMQXV7dD+StdqNLdl2tk/LyleGdETtBOQFsh2/XqPvhhBt3EPqqrdJV/EZPLogr
         uN6kYCErQUAI7s3h+Jc7uIvA2RceoqPEyyyaTym1H7/PYv/uHXT5JBPbEtAdsCCNgGer
         vXWAlzDm86VsTkf1XyIESoeSMUFRgqDhuPHSpi6WCtWnaKyqRxKB9y2DBuNd0GYeeAxd
         /cvw==
X-Gm-Message-State: APjAAAWCHWp4u74vRZa9ZNTD9u7SXjX5BBFtQnqp5WXXeuUUmxPYmmJz
        LoS6Qm9Bck33+EmtYY448Kcl1Q==
X-Google-Smtp-Source: APXvYqwdIL0EfbSiX42k8sFfKHDlMcLhJWYsKHWyAGukAhP0HaiNos3zWxVtyEdlTTDwwFC01VQdGg==
X-Received: by 2002:a65:6496:: with SMTP id e22mr12758716pgv.249.1557487813185;
        Fri, 10 May 2019 04:30:13 -0700 (PDT)
Received: from localhost ([103.8.150.7])
        by smtp.gmail.com with ESMTPSA id q80sm10840463pfa.66.2019.05.10.04.30.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 04:30:12 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, andy.gross@linaro.org,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Cc:     Niklas Cassel <niklas.cassel@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCHv1 5/8] arm64: dts: qcom: qcs404: Add PSCI cpuidle low power states
Date:   Fri, 10 May 2019 16:59:43 +0530
Message-Id: <d3a517b90620fe167eb9fd27bcc88a43dce514b2.1557486950.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1557486950.git.amit.kucheria@linaro.org>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1557486950.git.amit.kucheria@linaro.org>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Niklas Cassel <niklas.cassel@linaro.org>

Add device bindings for cpuidle states for cpu devices.

[amit: rename the idle-states to more generic names and fixups]

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index e8fd26633d57..369c59c35bc7 100644
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
+			entry-method="psci";
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

