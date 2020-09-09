Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FF8F263078
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 17:26:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730111AbgIIP0Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 11:26:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729529AbgIIPZN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 11:25:13 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCA0FC061261
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 07:43:35 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id b19so3857194lji.11
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 07:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QuxxLxOS0tNBNOAtQq8XEBRXkvgsYAhNuUczATzXFS4=;
        b=z3rTgGS2LpZ3hhgv4YTGtNQiCfDVckM865YAPkMmTt6XJobkyzV2J4vJHKGEDHiwpn
         SfAHr8wiuuKfpptqHZmZ7WELz23iyHNFYPfpLMMg1xO/hS87Jy8BJFnyENwlH02YEo7H
         ZULbjdDTKRTaANykyOxgG0E6tbYinQZAxnqWQxz6PDvjqidsOY9u0IAVBBnucpuwpssl
         EG2wKmVwtCGBS+rOZphdZibnljV1LUX7lv0YGzx/z5LTYHg9RGiLb/ydZDsPQ5wJMn86
         s+BsyZZBvm1Gi2rX7XXof4symQ2GozVuuaO8Cxov+7EeK4ThzAAMsIcBfr/iKklfe4Cm
         EmJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QuxxLxOS0tNBNOAtQq8XEBRXkvgsYAhNuUczATzXFS4=;
        b=jDbIwf8EMgCLuaiF59RXFNtBvvhx6FtFgMt2kRbybUvk6aj0aznsLk2TmaQreiLrsV
         OViGhi+XmyvJVvPRjKdrb6UR0TnNr2Ftq5PhLtdUjFhfencuh4ky0cIUENGGUjGMIdNk
         ns85blsLjrufOWY8Gyf0jHPG8PqM4A8ctRIBoZ+KmS/tGXRHzOZjvChAudj50RHw00Ku
         X7AKNnQrTzxhhTPAQ1n6z/0h5xSxdr+YXpMfXHkvSQ1sEg2wNohoN5YIWcocjwhcxZ3r
         xQR9cCOc0hpDNBew49iRY5xxPGpcTs7RfjjkB2CLwiToD8wTfWBmIVMVWEfWNnMvnJ6r
         G2Dw==
X-Gm-Message-State: AOAM531nmbElvKkj1lYDJpsWaqRfNj9QwIgEP/k+lR9FZcTFf3K1t4uG
        RuN7sa1ipNPrOJgKqIotSlTGdA==
X-Google-Smtp-Source: ABdhPJxT/V6+DG3XdhC5iZ8t4rFZ9UewvzhRPYwpjux7lews90Y1VVxvdMd8Tzgx1tBpYKT2bOHP1A==
X-Received: by 2002:a2e:8011:: with SMTP id j17mr2273675ljg.444.1599662610883;
        Wed, 09 Sep 2020 07:43:30 -0700 (PDT)
Received: from eriador.lan ([188.162.64.155])
        by smtp.gmail.com with ESMTPSA id t12sm621665lfk.26.2020.09.09.07.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 07:43:30 -0700 (PDT)
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
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 09/10] arm64: dts: qcom: pm8150x: add definitions for adc-tm5 part
Date:   Wed,  9 Sep 2020 17:42:47 +0300
Message-Id: <20200909144248.54327-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200909144248.54327-1-dmitry.baryshkov@linaro.org>
References: <20200909144248.54327-1-dmitry.baryshkov@linaro.org>
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

