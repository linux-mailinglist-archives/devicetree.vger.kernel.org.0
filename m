Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6E612690C8
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 17:57:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726119AbgINP5H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 11:57:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726579AbgINPtQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 11:49:16 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8559CC061A28
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 08:48:44 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id b12so13955837lfp.9
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 08:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rflyFynNnBW4dG747SrCFXgcIAs909F2gibnTOq3B0k=;
        b=Vi6FXpnu6OJLsSniRomWNhFMcykZMY+WXQn2OzVoBGtoACfKPJKdkupRmxBVTk+TLA
         JGWyZu4TCcv1hb66J6FWfToZWPNZ56oBO2XEmGU/k4BOoBqiyABIafKTSght6I1a42It
         nKWcySi0v7wmK4FgoWirad6EYq5h+y8iP+jmI2xUPy3bdhMjzSkFFjy/qCqxJED32NQu
         dkZVvn9fuoH4T9QoYRe5C1OpqDSAB0UDT16kwN1DlwkzNdJzpqMKN/nKGZtGJxunvg7j
         /rYeIz/3b/+LUfon1rhOkzAUCkrMHMslefrhaJV8hC5JSeRMpYlP1M4dyqcdxktOZwhW
         CFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rflyFynNnBW4dG747SrCFXgcIAs909F2gibnTOq3B0k=;
        b=N1JbHtQkytiNhB/YbjraGP/sjBcI6eW9GFbPyXQYCYXLzJZJbcbQkPWq2GZAIJkpfq
         wnYMzSrKPFiQx6WkhTAaxX+gQ49vP8zwTkvF88YiU/mn4ufQyrrWsUZNiyFOUPWkD22i
         typqUFkeH8gaJR234QX2FJ861fIwiYOfwMnZKsyWrTo1uBfhmuXMHyk2pktkooMyxeV9
         z200tXxN/EKwl4D/C7wc+UsyqtmqUUEYxA5UwgY8J/0JWjU+JQmFJVRhVsrqWhQ55ENR
         FJ11gvQkLNqQn/vc2fdauv3fGh+URh7/YaC8gWNG1dw4XLq8mxYbgEhKnMPkewOb9cbk
         T2cw==
X-Gm-Message-State: AOAM5305RBY45qG6j58x+0RbuB4Vyji7WH4MoeFfcGOmS66aF/9/eAHt
        hI1KXuBb6GUl0jyIoXN/tJRapA==
X-Google-Smtp-Source: ABdhPJy9/N98pPIuLPzox9VIlgn2OvbXO+kDoXGMM/BWtVkBQAiPyxd8+YdDHP6q4RWrcbgpCbmujA==
X-Received: by 2002:a19:7605:: with SMTP id c5mr5326765lff.116.1600098521751;
        Mon, 14 Sep 2020 08:48:41 -0700 (PDT)
Received: from eriador.lan ([188.162.64.187])
        by smtp.gmail.com with ESMTPSA id f19sm3834650lfs.85.2020.09.14.08.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 08:48:41 -0700 (PDT)
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
Subject: [PATCH v5 8/9] arm64: dts: qcom: pm8150x: add definitions for adc-tm5 part
Date:   Mon, 14 Sep 2020 18:48:08 +0300
Message-Id: <20200914154809.192174-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200914154809.192174-1-dmitry.baryshkov@linaro.org>
References: <20200914154809.192174-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define adc-tm5 thermal monitoring part. Individual channes and thermal
zones are to be configured in per-device dts files.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
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

