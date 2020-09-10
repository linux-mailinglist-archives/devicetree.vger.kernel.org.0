Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D7FB265325
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 23:29:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726796AbgIJV3I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 17:29:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731003AbgIJOCp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 10:02:45 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F0E8C06134A
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 07:00:28 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id x77so3673184lfa.0
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 07:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QuxxLxOS0tNBNOAtQq8XEBRXkvgsYAhNuUczATzXFS4=;
        b=PMgK+Eoh8NOijzqwcfljiIQEiZgcfkyqRaN1mUxjZ4Y8sVNKE85i19GDwcD4srGiCo
         cooI13DsQXpfB3kM/A3FqyWbPg5WbVuH9ergJKhgOjj0TdrqN7Yqz6MSP0HZERvWz0tG
         gfEtLguWwYrKpkPpsYik/r3yt00tDJ52eqjmsQXXrAUWzoX9zVrmXVdZ6MPsfDsTBk6G
         ISFqOo0RH0lMmYujajuUsdac+vfuoE2Ncfxqf1sCMe8AJ9S/JHYqx2QqMm3QchpRoxFk
         c1WZ3aE8W5oYLqu0evCO059jcQbDyrdhLTpLeBTtQfNzmA7lu/sVL8/zOmCA/zMRTDpE
         PIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QuxxLxOS0tNBNOAtQq8XEBRXkvgsYAhNuUczATzXFS4=;
        b=QRUijAQzrLnQPWTtP/8yc1TTntD+SurrnKUkTO3XoQ79h11mwhPbIkW0ywSkIe+ngS
         mi4j4/IN5AfpUA1gQLhT2199WejPzFpHgUGy9nez/9eFpMzvzQtBTMAIonzu4Txu/0at
         3sXHFwkndI3+DE/bpjTQ5rb8Q6IuYBqPYapHY718fK9/KHm+q4I7/MZxmPDo0Q1YWt9/
         alrEcVqb4RiS7R9yEZjPH69sshClWRkxcayXC3z4WBY/BDEyZNDy05vMQVOkZ3eBfpIx
         WbiPVgTEzxA4wa/IHY9L+vN7G4iTnAxqBtd/uNPGy2VlI0/9ugXZbvtQ8hWodQlXOoFB
         neBQ==
X-Gm-Message-State: AOAM533YoaBbo6gVP97HMTPMBVQiZzaZeVKNk7j2TTbHcD8hlN28AhRu
        hjkO5ECLbGbHc1NofAymKT9i3g==
X-Google-Smtp-Source: ABdhPJyYljjBWej5rZbf4tsa5Hf+ZKrc4uGlPTlk61rN2N8cze36HuhhSRoP6NGyV86JWfdrJH3JsQ==
X-Received: by 2002:a19:7fd8:: with SMTP id a207mr4306941lfd.11.1599746426562;
        Thu, 10 Sep 2020 07:00:26 -0700 (PDT)
Received: from eriador.lan ([188.162.64.156])
        by smtp.gmail.com with ESMTPSA id t82sm1367646lff.43.2020.09.10.07.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 07:00:26 -0700 (PDT)
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
Subject: [PATCH v4 09/10] arm64: dts: qcom: pm8150x: add definitions for adc-tm5 part
Date:   Thu, 10 Sep 2020 16:59:59 +0300
Message-Id: <20200910140000.324091-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910140000.324091-1-dmitry.baryshkov@linaro.org>
References: <20200910140000.324091-1-dmitry.baryshkov@linaro.org>
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

