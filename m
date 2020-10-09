Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF0C6288D2E
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 17:45:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389462AbgJIPpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 11:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389366AbgJIPpc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 11:45:32 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB232C0613D2
        for <devicetree@vger.kernel.org>; Fri,  9 Oct 2020 08:45:30 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id r24so10059646ljm.3
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 08:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rflyFynNnBW4dG747SrCFXgcIAs909F2gibnTOq3B0k=;
        b=u69qIxzaLMQ6zrm/tmDcArG2OSScisFcHJ16amWhTL6lmbqg620wkhSPJ1Rey3pQKf
         mjQ2PlKYpA75GzCj86JuyoOOC3w5r8IxoiVwcD8mjTM26CQpkmUz7fM9lYD06K7x53RX
         tgs8AW5H6/Dk1MWdfJaBSQBujL03ym3pEhb2Y53GR0th8LNq+zB2OZQ3m8MGiKP7PWKl
         m4c775q9EFMTkqS0sPKT/ERd80F9kuX51jAWEoqS6gajD/43w2FF5DQ7KbDKMpAPPKWC
         eyy2uS7TnTnSBhKLBhDSFz6mJK6h4boEQMBxO2R27/5nOYfBqI1IuTigaXzo4eL5bSye
         oB7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rflyFynNnBW4dG747SrCFXgcIAs909F2gibnTOq3B0k=;
        b=NXwSgYHu4bxgvkQDYELmVgMvSMyKbkl6Z7r4fnecg+gF1kA7kRFSPJkj95ClV1c6jg
         uPOQqiO80/BeoDnD3UsFOrRVEpYo5Ej94kBqRhEA+5wL6Zo9YO8rB4Of70KV0sLRjsmS
         /933zLYvtTEsypMh63/DMOioT0c5BBghuELcFIEKrnUJLPkxIWPz2i7hvKa8fWKR0EOJ
         4TT2YrwZ+oP7VfNKFf/77bT+WO9l7sM2RRtqQzDP66dFmRjc5mnACXZU3OWOIyRpDS28
         GjOrN0wvNGvO1gIIJwsf32HTcsCOplGdgUTidAkZ7o7a55wsA7Zi9vTBUGpplxmkOgi+
         eWIg==
X-Gm-Message-State: AOAM533bpWZ16XOtgJ/p2Z92yU7LofoOi9Tipby5hai2rGyDOnhqtncx
        cFkEvpTVpTDbrRyqrYfhoMo1RA==
X-Google-Smtp-Source: ABdhPJwZNt9ikpIfbpbi8D6Qq8jF7ekkpIUYrA8SF0v2qg/C6kGNt+B97PgdX3ffLk6aMrSWckkqvg==
X-Received: by 2002:a2e:8942:: with SMTP id b2mr5828295ljk.441.1602258329108;
        Fri, 09 Oct 2020 08:45:29 -0700 (PDT)
Received: from eriador.lan ([188.162.65.231])
        by smtp.gmail.com with ESMTPSA id r4sm1505597lfc.162.2020.10.09.08.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 08:45:28 -0700 (PDT)
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
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Jishnu Prakash <jprakash@qti.qualcomm.com>
Subject: [PATCH v8 09/11] arm64: dts: qcom: pm8150x: add definitions for adc-tm5 part
Date:   Fri,  9 Oct 2020 18:44:57 +0300
Message-Id: <20201009154459.106189-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201009154459.106189-1-dmitry.baryshkov@linaro.org>
References: <20201009154459.106189-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

