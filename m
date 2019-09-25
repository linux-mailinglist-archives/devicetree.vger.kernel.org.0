Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C5C92BD8AE
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2019 09:03:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2442435AbfIYHDc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 03:03:32 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:36503 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405259AbfIYHDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Sep 2019 03:03:32 -0400
Received: by mail-pg1-f196.google.com with SMTP id t14so2250611pgs.3
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2019 00:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=QtDjGuT6GYExoPUWAryXx0/SjRXtIy1CTdSczN1NQCM=;
        b=RmY/xOXe2eKL26y3uj55F1Fit+H+0WrrZaOHcLMNCDSNoi2kMXrhnE0ucEForuiEA+
         JyRluTVi28yl+sTJGSRelaPvSKuza6Hk+Q9GRAPSRoAwq1VWLfr4h3eTKtsojFr+xrG8
         zaY9vImby+VTXEwcWMmtB7mGhtQcEn/Gbn+gOrIIVg6zcpp/o2JX2j313Dln/oC0dVVe
         dwrSa+J5kDasv/Awru0qA99xL8YL5AZEQYzOpVkazBCDdADqsEzMLVdWX8iGhVjqi5wq
         IYNJJ7jeetpPukK/+WzB7j4TGb2RgEWr7x1WdwwyLnhmEJcVT6h0hfP3bpj7kkLXXnLb
         GK1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QtDjGuT6GYExoPUWAryXx0/SjRXtIy1CTdSczN1NQCM=;
        b=kiJxXViknriiuy368VZLO/zVUG3whlVXQVzFDgIFMyxBKtrZsh0JaP0/0pvpaCNZvM
         i2fGc1KxFNgn8TX6N2fjj/U+gJI5iwAJtLbkHMZ+AT1nzlJsf8lXqO3AibuXqhcVisw5
         vBrPkfZD+T10dtgeS2s2Rh2nKiG8dw4vQ6Bt8nCae31PyTJJjWXShuSf352sBZXQh5CT
         vFRdPm+JJLFB05KFOvfVXB0XPSsdUc8i3ySbSjwXQ1Co8GCVmvA1Cd7uq9hh+bLI4U6o
         NrWsJ6QngKFxNmblBgRUT1t14b7FwkSN5BD65wgpcTU4D2LiQS3qDSIf/X71T05j0WEK
         Rrzg==
X-Gm-Message-State: APjAAAWnjqt2dERiDz21lsZWPWDri9c37ToSzw9LX+TCZc+eN0/tGgmQ
        WltSTOb2dW+SqvszIfZUSwpEbQ==
X-Google-Smtp-Source: APXvYqwK0vMFcB0zMbrgYeYbjpMtEMvsl5ew0HFiuRMmFs5VRtF6LUvKhv2I9PfhGnJ3lD3U/s/nHg==
X-Received: by 2002:a17:90a:fa02:: with SMTP id cm2mr4735395pjb.133.1569395011749;
        Wed, 25 Sep 2019 00:03:31 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id t3sm1541054pje.7.2019.09.25.00.03.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Sep 2019 00:03:31 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH] arm64: dts: qcom: c630: Enable adsp, cdsp and mpss
Date:   Wed, 25 Sep 2019 00:03:28 -0700
Message-Id: <20190925070328.13554-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify the firmware-name for the adsp, cdsp and mpss and enable the
nodes.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index ded120d3aef5..d3c841628d66 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -20,6 +20,11 @@
 	};
 };
 
+&adsp_pas {
+	firmware-name = "qcom/c630/qcadsp850.mbn";
+	status = "okay";
+};
+
 &apps_rsc {
 	pm8998-rpmh-regulators {
 		compatible = "qcom,pm8998-rpmh-regulators";
@@ -229,6 +234,11 @@
 	status = "disabled";
 };
 
+&cdsp_pas {
+	firmware-name = "qcom/c630/qccdsp850.mbn";
+	status = "okay";
+};
+
 &gcc {
 	protected-clocks = <GCC_QSPI_CORE_CLK>,
 			   <GCC_QSPI_CORE_CLK_SRC>,
@@ -296,6 +306,10 @@
 	};
 };
 
+&mss_pil {
+	firmware-name = "qcom/c630/qcdsp1v2850.mbn", "qcom/c630/qcdsp2850.mbn";
+};
+
 &qup_i2c12_default {
 	drive-strength = <2>;
 	bias-disable;
-- 
2.18.0

