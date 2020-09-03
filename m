Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAB4425C3E3
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 17:00:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729236AbgICO74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 10:59:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729097AbgICOHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 10:07:07 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1E13C0619C7
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 06:21:36 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id t23so3691204ljc.3
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 06:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QuxxLxOS0tNBNOAtQq8XEBRXkvgsYAhNuUczATzXFS4=;
        b=Emmv1pHE7Spw5I4w2yg/sc3WwWUlCuzi34q6FwEmanwGe0kAKTNog7Fy78tGosZH5s
         6+dPy9vbjKFHpCIx6g+YrmXynKo3j5o9uYbPAu1sueEBPJ9ka+aeMOBM3DmiPSzNT0Fk
         4OqNO2Uern9BYBfJOw7ksjcs4oCkOdEIxpvcSxJ45uhuhnVxfdaInQV+SAiTqbtTPdCT
         gg+eJXxWFsLo8Rdc5bSpUKFhlMaWmKfXo1iPI/BcoqGp2bpeeotTLlp9yyL1VIxLXGfT
         mNtvJ5vwqmga7FlTa247ljm6QuEgGpe91AcB5UHul6yn4bxTMW1PU6CCX+LfSb1yDZ5N
         Y7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QuxxLxOS0tNBNOAtQq8XEBRXkvgsYAhNuUczATzXFS4=;
        b=cLQ/K0bCMdefqTcEkMosN0fS5VZpKfJ0NMwm7Iq3jLBpTNoe9rEX1wEjDqaLBVYw56
         GYKUNAwoibrW869XAf2wfXv7qo5maV/zmPL27kdYEiSZyy26QOjcO4Q0PIBCbIGaCWt+
         4RZz7byTyDNuYwon1ecS7/pw5BxA6ujwzwWO/LLTqpLNeJa4EFZfg9AaiHs2ysKd8y+i
         W1Y2jP37JjphUqsCC6nbffcPdkxcRVqGYaPa2ZIYmnvzUHoLl1xOlQjs41jT/Cgr6Qfs
         nfsIB46QqBw8OG7/2Lh9eGcCpbS5Eincb8GwEk9+YxzhSYSVV1/uqJhyYSERWJX8IujG
         bbUw==
X-Gm-Message-State: AOAM532jxVfcN6YwlEoOleEAEO+Wa5gP7sqTmNUUpzuX1ucMkz9xurUo
        0iW2ZayUX77JaW20GH1K8mHMqA==
X-Google-Smtp-Source: ABdhPJwiGqMlp/whSp3HNdu9lDF2uYW+0YJmgKPulLa6g88TDKq/ZYr+lBlR+DLoYy44WlfZhbflwg==
X-Received: by 2002:a05:651c:1057:: with SMTP id x23mr1293667ljm.149.1599139295256;
        Thu, 03 Sep 2020 06:21:35 -0700 (PDT)
Received: from eriador.lan ([188.162.64.138])
        by smtp.gmail.com with ESMTPSA id e23sm584220lfj.80.2020.09.03.06.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 06:21:34 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Subject: [PATCH v2 8/9] arm64: dts: qcom: pm8150x: add definitions for adc-tm5 part
Date:   Thu,  3 Sep 2020 16:21:08 +0300
Message-Id: <20200903132109.1914011-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200903132109.1914011-1-dmitry.baryshkov@linaro.org>
References: <20200903132109.1914011-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define adc-tm5 thermal monitoring part. Individual channes and thermal
zones are to be configured in per-device dts files.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8150.dtsi  | 10 ++++++++++
 arch/arm64/boot/dts/qcom/pm8150b.dtsi | 10 ++++++++++
 arch/arm64/boot/dts/qcom/pm8150l.dtsi | 10 ++++++++++
 3 files changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8150.dtsi b/arch/arm64/boot/dts/qcom/pm8150.dtsi
index 1b6406927509..b1b518c6a2c9 100644
--- a/arch/arm64/boot/dts/qcom/pm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150.dtsi
@@ -97,6 +97,16 @@ die-temp@6 {
 			};
 		};
 
+		pm8150_adc_tm: adc-tm@3500 {
+			compatible = "qcom,spmi-adc-tm5";
+			reg = <0x3500>;
+			interrupts = <0x0 0x35 0x0 IRQ_TYPE_EDGE_RISING>;
+			#thermal-sensor-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		rtc@6000 {
 			compatible = "qcom,pm8941-rtc";
 			reg = <0x6000>;
diff --git a/arch/arm64/boot/dts/qcom/pm8150b.dtsi b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
index e112e8876db6..8e2f3250c914 100644
--- a/arch/arm64/boot/dts/qcom/pm8150b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
@@ -95,6 +95,16 @@ chg-temp@9 {
 			};
 		};
 
+		pm8150b_adc_tm: adc-tm@3500 {
+			compatible = "qcom,spmi-adc-tm5";
+			reg = <0x3500>;
+			interrupts = <0x2 0x35 0x0 IRQ_TYPE_EDGE_RISING>;
+			#thermal-sensor-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		pm8150b_gpios: gpio@c000 {
 			compatible = "qcom,pm8150b-gpio";
 			reg = <0xc000>;
diff --git a/arch/arm64/boot/dts/qcom/pm8150l.dtsi b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
index 62139538b7d9..9f214ceec2b7 100644
--- a/arch/arm64/boot/dts/qcom/pm8150l.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
@@ -89,6 +89,16 @@ die-temp@6 {
 			};
 		};
 
+		pm8150l_adc_tm: adc-tm@3500 {
+			compatible = "qcom,spmi-adc-tm5";
+			reg = <0x3500>;
+			interrupts = <0x4 0x35 0x0 IRQ_TYPE_EDGE_RISING>;
+			#thermal-sensor-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		pm8150l_gpios: gpio@c000 {
 			compatible = "qcom,pm8150l-gpio";
 			reg = <0xc000>;
-- 
2.28.0

